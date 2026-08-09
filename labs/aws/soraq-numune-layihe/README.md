# Soraq Nümunə Layihəsi — "Terraform Dili" Sənədinin Canlı Əkizi

**Məqsəd:** [Soraq kitabçasındakı](../../../bonus/terraform-dili-soraq.html) hər mövzunu bir işlək layihədə görmək.
**Xərc:** 0 ₼ — VPC + 3 subnet + IGW + route table (hamısı pulsuz).
**Region:** eu-north-1.

## Fayl → Soraq bölməsi xəritəsi

| Fayl | Soraq bölməsi | Orada nə görəcəksən |
|---|---|---|
| `provider.tf` | §1 | terraform bloku + provider, `var.region` istinadı |
| `variables.tf` | §2, §6 | string/bool/map tipləri, default, **validation** |
| `terraform.tfvars` | §3 | dəyərlər + **prioritet sübutu** (default 2 subnet → tfvars 3) |
| `locals.tf` | §5, §7 | name_prefix, common_tags, interpolyasiya |
| `main.tf` | §7, §8, §9 | resource + **data source** + **for_each** + istinadlar + merge() |
| `outputs.tf` | §4 | 3 output: sadə, for-ifadəli map, data nəticəsi |
| `.gitignore` | §11 | nə git-ə getmir |

## İşə salma

```bash
terraform init
terraform fmt
terraform validate
terraform plan      # say: 1 VPC + 3 subnet + 1 IGW + 1 RT + 3 assoc = 9 resurs
terraform apply
terraform output    # üç output-a bax
terraform destroy   # ritual! 🧹
```

## 6 Təcrübə — hər biri bir soraq bölməsini "hiss etdirir"

1. **Prioritet (§3):** `terraform.tfvars`-da `c` subnetini sil → `plan` → "1 to destroy".
   Sonra CLI ilə üstələ: `terraform plan -var='env=qa'` → adlarda `qa-soraq-...` gör.
2. **Validation (§2):** `terraform plan -var='region=us-east-1'` işlət → öz yazdığımız
   xəta mesajını gör: "Bu layihe yalniz Avropa regionlari ucun...".
3. **Console (§10):** `terraform console` aç və sına:
   `var.vpc_cidr` · `local.name_prefix` · `"${var.region}a"` · `var.public_subnets["b"]` → `exit`
4. **Data (§8):** apply-dan sonra `terraform output available_azs` — AWS-in özündən
   oxunan siyahı. Biz onu yaratmadıq — tapdıq.
5. **State (§10):** `terraform state list` — for_each nəticəsini gör:
   `aws_subnet.public["a"]`, `["b"]`, `["c"]` — nömrə yox, AÇAR.
6. **for_each gücü (§9):** map-dan ORTADAKI `b`-ni sil → `plan` → yalnız `b` silinir,
   `a` və `c` toxunulmaz qalır. (count olsaydı: sürüşmə → yenidən yaratma!)

## Çağırış tapşırığı (istəyənlər üçün)

`aws_subnet.public`-i `for_each` əvəzinə `count` ilə yenidən yaz
(`count = length(...)`, `count.index`), 6-cı təcrübəni təkrarla və fərqi öz gözünlə gör.
Sonra niyə for_each-in üstün olduğunu bir cümlə ilə yaz.
