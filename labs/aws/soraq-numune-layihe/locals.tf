# ══ Soraq §5: locals — tekrarlanan ifadeler ucun daxili qisaltmalar ══
# variable ile ferqi: local KENARDAN deyisdirilmir — daxili hesablamadir.

locals {
  # Soraq §7: interpolyasiya — string icinde deyer: "dev-soraq"
  name_prefix = "${var.env}-soraq"

  # Butun resurslara vurulacaq ortaq tag-lar — BIR yerde, her yerde eyni
  common_tags = {
    ManagedBy   = "terraform"
    Environment = var.env
    Project     = "soraq-numune"
  }
}
