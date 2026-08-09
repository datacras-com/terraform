> **⏸️ TƏXİRƏ SALINIB (2026-08-02):** kurs tam AWS ilə keçirilir. On-prem praktika
> vCenter qurulandan sonra rəsmi `vmware/vsphere` provider ilə əlavə sessiya kimi
> hazırlanacaq. Aşağıdakı `josenk/esxi` planı arxiv məqsədilə saxlanılır
> (risklər: registry sənədləri yoxdur, son buraxılış 2022, `esxi_guest` üçün ovftool tələbi).

# On-prem ESXi Lab-ları — Terraform + Copilot (DPE-07)

Mühit: **standalone ESXi host** (vCenter yoxdur).
Provider: [`josenk/esxi`](https://registry.terraform.io/providers/josenk/esxi/latest) — SSH üzərindən birbaşa ESXi host ilə işləyir, vCenter tələb etmir.

> **Gələcək:** vCenter qurulandan sonra lab-lar rəsmi `vmware/vsphere` provider-ə keçiriləcək
> (template clone, resource pool və s. imkanları açılır).

## Tələblər

- ESXi host-da **SSH aktiv** olmalıdır (Host → Manage → Services → TSM-SSH → Start)
- Tələbələrə veriləcək: host IP, istifadəçi adı, parol (dərsdə paylanır, `.tf`-ə yazılmır!)
- **VMware OVF Tool** — `esxi_guest` resource VM yaratmaq üçün lokal maşında `ovftool` tələb edir.
  Broadcom saytından endirilir (login lazımdır). Alternativ: bu hissə müəllim maşınından
  canlı demo kimi keçirilir, tələbələr kodu yazıb `terraform validate`-ə qədər gedirlər.

## Provider konfiqurasiyası (nümunə)

```hcl
terraform {
  required_providers {
    esxi = {
      source  = "josenk/esxi"
      version = "~> 1.10"
    }
  }
}

provider "esxi" {
  esxi_hostname = var.esxi_host   # və ya ESXI_HOSTNAME env var
  esxi_username = var.esxi_user
  esxi_password = var.esxi_pass   # sensitive = true!
}
```

Credentials env vars ilə: `TF_VAR_esxi_host`, `TF_VAR_esxi_user`, `TF_VAR_esxi_pass`.

## Planlaşdırılan lab-lar

| # | Lab | Mövzu |
|---|---|---|
| 01 | Provider qoşulması | SSH auth, `terraform init`, sadə `esxi_guest` planı |
| 02 | Data pipeline VM | Copilot ilə VM konfiqi: CPU/RAM/disk variable-larla |
| 03 | Multi-provider müqayisə | Eyni məntiq AWS vs ESXi — provider abstraksiyası |

## Qaydalar

- Parol heç vaxt kodda olmur — `sensitive = true` + env vars
- `allow_unverified_ssl` yalnız test mühitində
- Dərs sonu: `terraform destroy` — ESXi UI-da VM-in silindiyini yoxla

*Lab faylları transcription-lar əsasında hazırlanacaq.*
