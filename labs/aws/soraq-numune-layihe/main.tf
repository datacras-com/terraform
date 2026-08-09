# ══ main.tf — resurslar + data source ══

# --- Soraq §8: DATA SOURCE — yaratmir, TAPIR ---
# AWS-den bu regionda movcud AZ-lerin siyahisini oxuyur.
# Neticeye bax: terraform output available_azs
data "aws_availability_zones" "available" {
  state = "available"
}

# --- Soraq §8: RESOURCE — yaradir ---
resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames # bool deyisen (Soraq §6)

  # merge() funksiyasi: ortaq tag-lara Name-i elave edir
  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-vpc"
  })
}

# --- Soraq §9: FOR_EACH — bir blok, N subnet ---
# var.public_subnets map-inin HER acari ucun bir subnet:
#   each.key   = "a" / "b" / "c"        (AZ herfi)
#   each.value = "10.0.1.0/24" / ...    (CIDR)
resource "aws_subnet" "public" {
  for_each = var.public_subnets

  vpc_id     = aws_vpc.this.id # Soraq §7: resurs istinadi = implicit dependency
  cidr_block = each.value

  # Soraq §7: interpolyasiya — "eu-north-1" + "a" = "eu-north-1a"
  availability_zone = "${var.region}${each.key}"

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-public-${each.key}"
  })
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags   = merge(local.common_tags, { Name = "${local.name_prefix}-igw" })
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = merge(local.common_tags, { Name = "${local.name_prefix}-public-rt" })
}

# for_each burada da: her subnet ucun bir association
resource "aws_route_table_association" "public" {
  for_each = aws_subnet.public

  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}
