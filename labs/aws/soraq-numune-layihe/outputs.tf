# ══ Soraq §4: outputs.tf — isin neticesini goster/qaytar ══
# Apply-dan sonra: terraform output

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

# for ifadesi: for_each ile yaranan subnetlerin ID-lerini map kimi qaytarir
# Netice: { a = "subnet-...", b = "subnet-...", c = "subnet-..." }
output "public_subnet_ids" {
  description = "Map of AZ suffix => subnet ID"
  value       = { for k, s in aws_subnet.public : k => s.id }
}

# Data source-un neticesi (Soraq §8): regionda movcud AZ-ler
output "available_azs" {
  description = "AZs available in this region (from data source)"
  value       = data.aws_availability_zones.available.names
}
