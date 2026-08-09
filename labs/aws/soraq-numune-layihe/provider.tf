# ══ Soraq §1: provider.tf — provider konfiqurasiyası + versiya kilidi ══

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.57"
    }
  }
}

provider "aws" {
  # Soraq §7: var. prefiksi — deyer variables.tf-den gelir
  region = var.region
}
