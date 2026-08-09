# Terraform + GitHub Copilot Kursu — Razılaşdırılmış Plan

**Kurs:** Accelerate Terraform Development with GitHub Copilot and AI (adaptasiya)
**Format:** 2 dərs × 3 saat
**Auditoriya:** Data Engineering & Platform tələbələri (7 nəfər), sıfır səviyyə nəzərdə tutulub
**Dil:** Azərbaycan dilində (kod və terminlər ingiliscə)

## Qərarlar

| Mövzu | Qərar |
|---|---|
| AWS | Hər tələbənin **öz account-u** (free tier / $100 kredit planı), budget alert məcburidir |
| On-prem | **Təxirə salınıb (2026-08-02):** kurs tam AWS ilə keçirilir. vCenter qurulandan sonra rəsmi `vmware/vsphere` provider ilə **əlavə praktika sessiyası**. (`josenk/esxi` riskli çıxdı: registry sənədləri yoxdur, 2022-dən yenilənmir, ovftool tələbi) |
| Copilot | Copilot Free (2000 completion + 50 chat/ay) və ya GitHub Education → Copilot Pro |
| Dizayn | `~/Documents/dataops/DPE-01/ansible` modulunun dizayn sistemi (DataCras yaşıl #00A859, Marp slaydlar, index + şifrə qapısı) |
| Setup | Chapter 3 **pre-work** kimi dərsdən əvvəl göndərilir, sinifdə yalnız 15 dəq yoxlama |

## Dərs 1 (3 saat) — Əsaslar və ilk kod

| Vaxt | Fəsil | Mövzu |
|---|---|---|
| 0:00–0:30 | Ch1 | Copilot nədir + GenAI limitləri (hallüsinasiya, köhnə sintaksis, security) |
| 0:30–1:15 | Ch2 | IaC + Terraform intro, canlı demo (`init → plan → apply → destroy`) |
| 1:15–1:30 | Ch3 | Pre-work yoxlaması (Copilot + Terraform + AWS CLI hamıda işləyir?) |
| 1:30–1:45 | — | Fasilə |
| 1:45–3:00 | Ch4.1–4.2 | Copilot ilə ilk Terraform layihəsi — comment-driven kod (AWS: S3 + VPC) |

## Dərs 2 (3 saat) — Dərinləşmə və real işlər

| Vaxt | Fəsil | Mövzu |
|---|---|---|
| 0:00–1:00 | Ch4.3–4.5 | Suggestion-ları genişləndirmək; fix/explain/document/test menyusu; modul yazmaq |
| 1:00–1:45 | Ch5 | Copilot Chat — thread-lər, agent-lər, `/commands`, context/scope, inline chat |
| 1:45–2:00 | — | Fasilə |
| 2:00–2:30 | Lab | Yekun mini-layihə: Copilot ilə data-lake bucket-ləri (`for_each`) — sərbəst iş |
| 2:30–2:50 | Ch6 | `.gitignore` + commit message generasiyası (git workflow) |
| 2:50–3:00 | Ch7 | `terraform destroy` + AWS console-da təmizlik yoxlaması — ritual kimi |

## Ana xətt (kursun fəlsəfəsi)

> **"Copilot sürətləndirir, `terraform validate`/`plan` yoxlayır."**
> Ən güclü dərs anı: Copilot-un mövcud olmayan resource attribute uydurduğunu canlı göstərib
> `terraform validate`-in onu tutması. GenAI limitləri (Ch1.2) nəzəri yox, praktiki keçirilir.

## Data engineering istiqaməti

- AWS lab: `raw / processed / temp` data-lake bucket-ləri (`for_each` ilə)
- On-prem "data pipeline VM" ssenarisi → vCenter sonrası əlavə praktikaya keçirilib

## Qovluq strukturu

```
datacras/terraform/
├── index.html               # kurs landing (şifrə qapısı ilə)
├── copilot-kurs-plani.md    # bu fayl
├── terraform-course-plan.md # 4 həftəlik dərin kurs (ayrı, tamamlayıcı)
├── slides/                  # ders-1.md/.html, ders-2.md/.html (Marp)
├── prework/                 # quraşdırma təlimatı — dərsdən 1 həftə əvvəl göndərilir
└── labs/
    ├── aws/                 # free tier tapşırıqları
    └── esxi/                # standalone ESXi tapşırıqları
```

## Statuslar / gözlənilənlər

- [x] Qovluq strukturu, index, prework, slayd şablonu, lab README-ləri
- [ ] Kurs transcription-ları (istifadəçi göndərəcək) → slaydlara çevriləcək
- [ ] vCenter quraşdırılması (əlavə praktika üçün) — host resursları: VCSA tiny = 2 vCPU + 14 GB RAM + ~580 GB thin disk; 60 günlük eval
- [x] ~~ovftool / josenk-esxi məsələsi~~ — on-prem praktika vCenter sonrasına keçirildiyi üçün aktual deyil

*Yenilənib: 2026-07-31*
