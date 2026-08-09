# AWS Lab-ları — Terraform + Copilot (DPE-07)

Hər tələbə **öz AWS account-unda** işləyir (bax: `../../prework/prework.html`).
Region: `eu-north-1`. Bütün lab-lar free tier daxilindədir.

## Planlaşdırılan lab-lar

| # | Lab | Dərs | Mövzu |
|---|---|---|---|
| 01 | İlk layihə | Dərs 1 | Copilot ilə comment-driven: provider + S3 bucket |
| 02 | Data-lake bucket-ləri | Dərs 1 | `raw/processed/temp` bucket-ləri, variables, outputs |
| 03 | VPC + subnet | Dərs 2 | Copilot menyusu ilə fix/explain/document |
| 04 | Modul | Dərs 2 | S3 lab-ını modula çevirmək (Copilot Chat ilə) |
| 05 | Cleanup | Dərs 2 | `terraform destroy` + console-da yoxlama ritualı |

## Qaydalar

- **Copilot sürətləndirir, `terraform validate` yoxlayır** — hər apply-dan əvvəl `validate` + `plan` oxu
- NAT Gateway, EIP, RDS yaratmırıq — gizli xərc mənbələridir
- Hər dərsin sonu: `terraform destroy` → console-da vizual yoxlama
- Access key-lər heç vaxt `.tf` fayllarına yazılmır — yalnız `aws configure`

*Lab faylları transcription-lar əsasında hazırlanacaq.*
