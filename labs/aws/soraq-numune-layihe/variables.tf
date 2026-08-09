# ══ Soraq §2: variables.tf — deyisenlerin BEYANI (deyerler yox!) ══

# --- string tipi + default + VALIDATION (Soraq §2 bonus) ---
variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "eu-north-1"

  validation {
    condition     = can(regex("^eu-", var.region))
    error_message = "Bu layihe yalniz Avropa (eu-*) regionlari ucun nezerde tutulub."
  }
}

# --- string: muhitin adi (adlarda istifade olunacaq) ---
variable "env" {
  description = "Environment name (dev, staging, prd...)"
  type        = string
  default     = "dev"
}

# --- string: VPC-nin IP diapazonu ---
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# --- bool tipi (Soraq §6): ac/bagla ---
variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

# --- map(string) tipi (Soraq §6): acar => deyer ---
# Acar AZ herfidir (a/b/c), deyer subnet CIDR-idir.
# for_each bu map uzerinde islayacek (bax: main.tf)
variable "public_subnets" {
  description = "Map of AZ suffix => subnet CIDR"
  type        = map(string)
  default = {
    a = "10.0.1.0/24"
    b = "10.0.2.0/24"
  }
  # DIQQET: tfvars-da bu deyer OVERRIDE olunur (a,b,c) — Soraq §3 prioritet!
}
