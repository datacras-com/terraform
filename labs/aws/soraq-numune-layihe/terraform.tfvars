# ══ Soraq §3: terraform.tfvars — deyisenlerin DEYERLERI ══
# Prioritet: default < TF_VAR_ env < BU FAYL < CLI -var
# Asagidaki deyerler variables.tf-deki default-lari ustelyir.

env = "dev"

# default-da 2 subnet var (a, b) — burada 3 veririk (a, b, c).
# terraform plan 3 subnet gosterecek = tfvars qalib geldi!
public_subnets = {
  a = "10.0.1.0/24"
  b = "10.0.2.0/24"
  c = "10.0.3.0/24"
}
