---
marp: true
html: true
theme: default
paginate: false
backgroundColor: "#F7F9F8"
color: "#0F172A"
style: |
  section {
    font-family: 'Segoe UI', Arial, sans-serif;
    padding: 26px 46px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    box-sizing: border-box;
    overflow: hidden;
    background-color: #F7F9F8;
    color: #0F172A;
    font-size: 1.42em;
  }
  h1 { color: #00A859; font-size: 1.6em; margin: 0 0 10px 0; line-height: 1.25; }
  h2 { color: #00A859; font-size: 1.16em; border-bottom: 2px solid #00A859; padding-bottom: 6px; margin: 0 0 14px 0; line-height: 1.3; }
  strong { color: #00A859; }
  em { color: #848688; font-style: normal; }
  code { background: #E8F5EE; color: #00703A; padding: 2px 6px; border-radius: 4px; font-size: 0.8em; border: 1px solid #C3E4D0; }
  pre { background: #1E293B; color: #E2E8F0; padding: 10px 14px; border-radius: 8px; border-left: 4px solid #00A859; font-size: 0.49em; line-height: 1.55; margin: 7px 0; overflow: hidden; color-scheme: dark; }
  pre code { font-size: 1em; padding: 0; background: transparent; color: #E2E8F0; border: none; }
  blockquote { border-left: 4px solid #00A859; background: #E8F5EE; padding: 9px 16px; margin: 9px 0; border-radius: 0 8px 8px 0; color: #0F172A; font-style: normal; font-size: 0.84em; line-height: 1.6; }
  ul { line-height: 1.65; margin: 6px 0; padding-left: 20px; }
  li { margin-bottom: 6px; font-size: 0.85em; }
  p { margin: 0 0 11px 0; line-height: 1.6; }
  table { font-size: 0.72em; border-collapse: collapse; margin: 10px 0; width: 100%; line-height: 1.5; }
  th { background: #0F172A; color: #A7F3D0; padding: 7px 14px; text-align: left; border: 1px solid #0F172A; }
  td { border: 1px solid #E2E8F0; padding: 7px 14px; background: white; }
  tr:nth-child(even) td { background: #F8FAFC; }
  .t { background: #EFF6FF; border-left: 4px solid #3B82F6; padding: 8px 14px; border-radius: 0 8px 8px 0; margin: 8px 0; font-size: 0.84em; font-weight: 600; color: #1E3A5F; line-height: 1.55; }
  .r { background: #F0FAF4; border-left: 4px solid #00A859; padding: 8px 14px; border-radius: 0 8px 8px 0; margin: 6px 0 8px 0; font-size: 0.82em; color: #0F172A; line-height: 1.55; }
  .warn { background: #FFF8E1; border-left: 4px solid #F59E0B; padding: 8px 14px; margin: 8px 0; border-radius: 0 8px 8px 0; font-size: 0.82em; color: #78350F; line-height: 1.55; }
  .q { background: #EFF6FF; border-left: 4px solid #3B82F6; padding: 8px 14px; margin: 9px 0 0 0; border-radius: 0 8px 8px 0; font-size: 0.84em; font-weight: 600; color: #1E3A5F; line-height: 1.55; }
  .a { background: #F0FAF4; border-left: 4px solid #00A859; padding: 8px 14px; border-radius: 0 8px 8px 0; margin: 3px 0 10px 0; font-size: 0.82em; color: #0F172A; line-height: 1.55; }
  .bonus { background: #F3E8FF; border-left: 4px solid #9333EA; padding: 8px 14px; border-radius: 0 8px 8px 0; margin: 8px 0; font-size: 0.82em; color: #581C87; font-weight: 600; line-height: 1.55; }
  .ai { background: #F3E8FF; border-left: 4px solid #9333EA; padding: 8px 14px; margin: 8px 0; border-radius: 0 8px 8px 0; font-size: 0.83em; color: #581C87; line-height: 1.55; }
  /* Avtomatik miqyas — sıx slaydlar kəsilməsin */
  section.tight { font-size: 0.95em; }
  section.xtight { font-size: 0.90em; }
  section.xxtight { font-size: 0.85em; }
  section.xxxtight { font-size: 0.80em; }
  section::after { display: none; }
  pre ::selection, code ::selection, pre ::-moz-selection, code ::-moz-selection { background: #2563EB; color: #FFFFFF; }
  ::selection { background: #2563EB; color: #FFFFFF; }
  
  .step-row { display:flex; align-items:flex-start; gap:11px; margin-bottom:11px; }
  .step-num { display:flex; align-items:center; justify-content:center; width:23px; height:23px; background:#00A859; color:white; border-radius:50%; font-size:0.72em; font-weight:700; flex-shrink:0; margin-top:1px; }
  .step-txt { font-size:0.85em; line-height:1.55; padding-top:1px; }
  .qnum { display:inline-flex; align-items:center; justify-content:center; width:19px; height:19px; background:#3B82F6; color:white; border-radius:50%; font-size:0.74em; font-weight:700; margin-right:7px; vertical-align:middle; }
  .qnum-bonus { background:#9333EA; }
  
  /* Axın diaqramı animasiyası — kontekst → model → təklif */
  @keyframes stepGlow {
    0%, 100% { background:#EFF6FF; color:#1E3A5F; border-color:#93C5FD; }
    15%      { background:#00A859; color:#fff; border-color:#00A859; }
  }
  .anim-step1 { animation: stepGlow 4.5s ease-in-out infinite; animation-delay: 0.0s; }
  .anim-step2 { animation: stepGlow 4.5s ease-in-out infinite; animation-delay: 1.1s; }
  .anim-step3 { animation: stepGlow 4.5s ease-in-out infinite; animation-delay: 2.2s; }
  .anim-step4 { animation: stepGlow 4.5s ease-in-out infinite; animation-delay: 3.3s; }
  .anim-step5 { animation: stepGlow 5.5s ease-in-out infinite; animation-delay: 4.4s; }
  
  /* Copilot "ghost text" effekti — boz təklif yazılırmış kimi */
  @keyframes ghostType {
    0%, 15% { max-width: 0; opacity: 0.4; }
    60%, 85% { max-width: 100%; opacity: 1; }
    100% { max-width: 100%; opacity: 0.25; }
  }
  .ghost { display:inline-block; overflow:hidden; white-space:nowrap; color:#94A3B8 !important; font-style:italic; animation: ghostType 5s ease-in-out infinite; vertical-align:bottom; }
  
---

<!-- Slide: Fəsil 5 — bölmə başlığı -->

<div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; text-align:center;">

  <div style="font-size:3em;">💬</div>

  <div style="font-size:0.7em; color:#00A859; font-weight:700; letter-spacing:2px; text-transform:uppercase; margin-top:12px;">Fəsil 5</div>
  <div style="font-size:1.5em; font-weight:700; color:#0F172A; margin-top:6px;">GitHub Copilot Chat</div>

  <div style="background:#0F172A; border-radius:10px; padding:12px 26px; margin-top:18px;">
    <div style="font-size:0.72em; color:#E2E8F0; line-height:1.9;">
      Chat-ə giriş yolları &nbsp;·&nbsp; Kod bloklarını mənimsəmək &nbsp;·&nbsp; Inline chat<br>
      Kod yazdırmaq, dəyişənlər, validation &nbsp;·&nbsp; Kontekst idarəsi
    </div>
  </div>

  <div class="r" style="margin-top:16px; max-width:86%;">✅ İndiyə qədər əsasən <b>sətir-sətir təkliflərlə</b> işlədik (Tab). İndi <b>söhbətə</b> keçirik: sual verirsən, kod istəyirsən, izah alırsan — hamısı redaktordan çıxmadan.</div>

</div>

---

<!-- Slide 5.1a: Chat-ə giriş yolları -->
## 5.1 — Chat-ə Üç Giriş Yolu

<div style="display:flex; gap:10px; margin:8px 0 6px 0;">

<div style="flex:1; background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.3em; text-align:center;">🗔</div>
<div style="font-weight:700; font-size:0.66em; color:#00A859; text-align:center; margin-top:3px;">Chat paneli</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;"><b>⌃⌘I</b> (Ctrl+Alt+I) və ya yuxarıdakı Copilot ikonu. Uzun söhbətlər, çoxaddımlı işlər üçün.</div>
</div>

<div style="flex:1; background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.3em; text-align:center;">✨</div>
<div style="font-weight:700; font-size:0.66em; color:#60A5FA; text-align:center; margin-top:3px;">Inline chat</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;">Kodu seç → <b>⌘I</b> (Ctrl+I) → qutu <b>kodun üstündə</b> açılır. Konkret bloku dəyişmək üçün ideal.</div>
</div>

<div style="flex:1; background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.3em; text-align:center;">⚡</div>
<div style="font-weight:700; font-size:0.66em; color:#C084FC; text-align:center; margin-top:3px;">Quick Chat</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;">Yuxarı mərkəzdən açılan qısa sual qutusu — panel yer tutmadan tez sual vermək üçün.</div>
</div>

</div>

<div class="t">🖥️ <b>Panel yerini dəyiş:</b> chat ikonunu tutub <b>sağ tərəfə</b> sürüşdür — beləcə solda fayl ağacı, ortada kod, sağda chat qalır. Üç panel bir ekranda.</div>

<div class="warn">⚠️ Chat ikonu itibsə (təsadüfən bağlamısansa): <b>⌘⇧P</b> → <code>View: Reset View Locations</code> → panellər yerinə qayıdır.</div>

---

<!-- Slide 5.1b: Chat nə edə bilir -->
## 5.1 — Chat İlə Nə Etmək Olar?

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

- ❓ **Sual vermək** — "bu layihə nə deploy edir?", "hansı sətir public subnetləri yaradır?"
- ✍️ **Kod yazdırmaq** — "output yarat", "security group əlavə et"
- 💡 **İzah istəmək** — seçili kodu sözlə açır
- 🔧 **Düzəltmək** — xətanı tapıb təklif verir
- 🔄 **Refaktor** — "bunu daha dinamik et" (hardcode → dəyişən)

</div>
<div style="flex:1;">

<div class="r">✅ Completion (Tab) ilə fərqi: completion <b>yazdığın anda</b> davam gətirir; chat isə <b>istəyini sözlə</b> qəbul edir və bütöv blok qaytarır. İkisi bir-birini əvəz etmir — tamamlayır.</div>

<div class="warn">⚠️ <b>Limit yaddan çıxmasın:</b> Copilot Free-də ayda <b>50 chat mesajı</b> var (completion isə 2000). Ona görə chat-i <b>toplu işlər</b> üçün saxla, xırda tamamlamaları Tab ilə et.</div>

</div>
</div>

---

<!-- Slide 5.2a: İlk tapşırıq — output -->
## 5.2 — İlk Tapşırıq: Chat-ə Output Yazdıraq

Layihəmizdə kök `outputs.tf` hələ boşdur. Doldurmağı chat-dən istəyirik:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">

<div class="t">🖥️ <code>outputs.tf</code> faylını aç → chat panelində yaz (ingiliscə):</div>

<div style="background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:9px 13px; margin:6px 0; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0;">
Create an output that displays the subnet IDs<br>for the public subnets
</div>

Copilot cavabında: izah + hazır kod bloku:

```hcl
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.prd-pub-subnet-1.id,
    aws_subnet.prd-pub-subnet-2.id,
    aws_subnet.prd-pub-subnet-3.id
  ]
}
```

</div>
<div style="flex:1;">

<div class="r">✅ Diqqət: Copilot <b>sənin resurs adlarını</b> tanıyıb istifadə etdi (<code>prd-pub-subnet-1..3</code>) — açıq fayllar onun kontekstidir.</div>

<div class="q">❓ Niyə məhz outputs mövzusu ilə başlayırıq?</div>
<div class="a">💡 Çünki output yazmaq az istifadə olunan, sintaksisi tez unudulan işdir — "necə idi?" deyib sənədə getmək əvəzinə soruşursan. Chat-in ən təbii istifadə anı budur.</div>

<div class="ai">🤖 Cavabın sonunda Copilot çox vaxt xəbərdarlıq da yazır: <em>"əmin ol ki, resurs adları konfiqurasiyanda düzgündür"</em> — yəni özü də yoxlanmağı tövsiyə edir.</div>

</div>
</div>

---

<!-- Slide 5.2b: Kod blokunu mənimsəməyin 5 yolu -->
## 5.2 — Cavabdakı Kod Blokunu Mənimsəməyin 5 Yolu

Kod blokunun üstünə mausu gətir — düymələr görünəcək:

<div style="display:flex; gap:8px; margin:8px 0 6px 0;">

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:9px 11px;">
<div style="font-size:1.1em; text-align:center;">✨</div>
<div style="font-weight:700; font-size:0.6em; color:#00703A; text-align:center;">Apply in Editor</div>
<div style="font-size:0.52em; color:#334155; margin-top:4px; line-height:1.45;">Açıq fayla <b>ağıllı</b> yerləşdirir — diff göstərir, Accept/Discard sən deyirsən</div>
</div>

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #3B82F6; border-radius:10px; padding:9px 11px;">
<div style="font-size:1.1em; text-align:center;">⤵️</div>
<div style="font-weight:700; font-size:0.6em; color:#1D4ED8; text-align:center;">Insert at Cursor</div>
<div style="font-size:0.52em; color:#334155; margin-top:4px; line-height:1.45;">Kursorun durduğu <b>dəqiq yerə</b> yapışdırır</div>
</div>

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #64748B; border-radius:10px; padding:9px 11px;">
<div style="font-size:1.1em; text-align:center;">📋</div>
<div style="font-weight:700; font-size:0.6em; color:#475569; text-align:center;">Copy</div>
<div style="font-size:0.52em; color:#334155; margin-top:4px; line-height:1.45;">Buferə alır — başqa fayla özün yapışdırırsan</div>
</div>

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #F59E0B; border-radius:10px; padding:9px 11px;">
<div style="font-size:1.1em; text-align:center;">⌨️</div>
<div style="font-weight:700; font-size:0.6em; color:#B45309; text-align:center;">Insert into Terminal</div>
<div style="font-size:0.52em; color:#334155; margin-top:4px; line-height:1.45;">Terminala yazır — <b>əmrlər</b> üçün (məs. <code>terraform apply</code>). Enter-i sən basırsan</div>
</div>

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #9333EA; border-radius:10px; padding:9px 11px;">
<div style="font-size:1.1em; text-align:center;">📄</div>
<div style="font-weight:700; font-size:0.6em; color:#7E22CE; text-align:center;">Insert into New File</div>
<div style="font-size:0.52em; color:#334155; margin-top:4px; line-height:1.45;">Yeni fayl yaradır — hələ mövcud olmayan <code>outputs.tf</code> üçün</div>
</div>

</div>

<div class="r">✅ Qayda dəyişmir: <b>hansı düyməni seçsən də, kodu əvvəl oxu.</b> "Apply in Editor" diff göstərdiyi üçün ən təhlükəsizidir — nəyin dəyişdiyini görürsən, sonra Accept edirsən.</div>

---

<!-- Slide 5.3: Inline chat -->
## 5.3 — Inline Chat: Kodun Üstündə Danışmaq

Bəzən bütöv fayl yox, **konkret bir blok** dəyişməlidir. Onda paneli açmağa ehtiyac yoxdur:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">

<div class="t">🖥️ <code>aws_vpc.prd</code> blokunu seç → <b>⌘I</b> → yaz:</div>

<div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:9px 13px; margin:6px 0; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0;">
enable dns hostnames in this vpc
</div>

Nəticə — sətir birbaşa bloka əlavə olunur:

```hcl
resource "aws_vpc" "prd" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}
```

</div>
<div style="flex:1;">

<div class="r">✅ Əsl faydası: <b>parametrin adını bilmirsənsə</b> — registry sənədlərini açıb axtarmaq əvəzinə istəyini sözlə deyirsən, düzgün arqumenti Copilot tapır.</div>

<div class="q">❓ Fəsil 3-dəki "DNS hostnames: Disabled" yadına düşdü?</div>
<div class="a">💡 Konsolda gördüyümüz həmin sahə — indi onu açdıq. Konsolda yenidən baxsan, <b>Enabled</b> görəcəksən (apply-dan sonra).</div>

<div class="ai">🤖 Inline chat cavabı <b>diff</b> kimi göstərir: yaşıl əlavələr, qırmızı silinənlər. <b>Accept</b> / <b>Discard</b> — həmişə səndədir.</div>

</div>
</div>

---

<!-- Slide 5.4a: Refaktor — dinamik et -->
## 5.4 — Refaktor: "Bunu Daha Dinamik Et"

Chat təkcə əlavə etmir — **mövcud kodu yenidən yaza** bilir:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">

<div class="t">🖥️ Eyni bloku seç → ⌘I → yaz: <em>"make this resource block more dynamic so it has no hardcoded values"</em></div>

<div style="display:flex; gap:8px; align-items:center; margin:6px 0;">
<div style="flex:1; min-width:0;">

```hcl
# ƏVVƏL
resource "aws_vpc" "prd" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}
```

</div>
<div style="font-size:1.1em; color:#848688;">→</div>
<div style="flex:1; min-width:0;">

```hcl
# SONRA
resource "aws_vpc" "prd" {
  cidr_block           = var.prd_vpc_cidr_block
  enable_dns_hostnames = var.prd_vpc_enable_dns_hostnames
}
```

</div>
</div>

</div>
<div style="flex:1;">

<div class="warn">🛑 <b>Bu slaydın ən vacib tələsi:</b> Copilot resursda <code>var.</code> istinadları yaratdı — amma həmin dəyişənləri <b>heç yerdə BƏYAN ETMƏDİ!</b> <code>variables.tf</code> hələ boşdur.</div>

<div class="r">✅ Nəticə: <code>terraform plan</code> dərhal xəta verəcək — <em>"Reference to undeclared input variable"</em>. Yəni AI işin <b>yarısını</b> gördü, qalanı sənə qalır.</div>

<div class="q">❓ Bu, pis xəbərdir?</div>
<div class="a">💡 Xeyr — <b>gözlənilən davranışdır</b>: sən yalnız seçili bloku dəyişməyi istədin, o da yalnız onu dəyişdi. Dərs: <b>hər dəyişiklikdən sonra plan/validate işlət</b>, "yarımçıq refaktor" yaddan çıxmasın.</div>

</div>
</div>

---

<!-- Slide 5.4b: Dəyişənləri bəyan etmək + validation -->
## 5.4 — Yarımçıq İşi Tamamlamaq: variables + validation

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">

<div class="t">🖥️ <code>variables.tf</code>-i aç → chat-ə istinadı yapışdır: <em>"create the variable definition for var.prd_vpc_cidr_block"</em></div>

```hcl
variable "prd_vpc_cidr_block" {
  description = "The CIDR block for the production VPC"
  type        = string
  default     = "10.0.0.0/16"
}
```

<div class="warn">⚠️ Default dəyəri <b>yoxla</b>: Copilot təsadüfi CIDR qoya bilər. Mövcud VPC-ninki ilə eyni olmalıdır, yoxsa apply resursu <b>yenidən yaradar</b>!</div>

</div>
<div style="flex:1; min-width:0;">

<div class="t">🖥️ İndi ən maraqlısı — seç və ⌘I: <em>"add validation to ensure the value can only be a valid CIDR block"</em></div>

```hcl
variable "prd_vpc_cidr_block" {
  type = string

  validation {
    condition     = can(cidrhost(var.prd_vpc_cidr_block, 0))
    error_message = "Invalid CIDR block format. Please provide a valid IPv4 CIDR (e.g. 10.0.0.0/16)."
  }
}
```

<div class="r">✅ Bu, chat-in ən güclü anlarından biridir: <b>regex/funksiya sintaksisini bilmədən</b> işlək validation alırsan. Artıq kimsə <code>"Brian"</code> yazsa, Terraform <b>plan mərhələsində</b> saxlayacaq — AWS-ə çatmadan.</div>

</div>
</div>

---

<!-- Slide 5.5: Kontekst = seçim -->
## 5.5 — Kontekst Hər Şeyi Dəyişir: Seçimli vs Seçimsiz

Eyni sual, iki fərqli nəticə — fərq yalnız **kodu seçib-seçməməkdədir**:

<div style="display:flex; gap:12px; margin:8px 0;">

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #EF4444; border-radius:10px; padding:10px 14px;">
<div style="font-weight:700; font-size:0.72em; color:#DC2626;">❌ Seçim yoxdur</div>
<div style="font-size:0.6em; color:#334155; margin-top:5px;">Sual: <em>"which line of code creates the public subnets?"</em></div>
<div style="font-size:0.58em; color:#64748B; margin-top:5px; line-height:1.5;">Cavab ümumi olur: <em>"aws_subnet resurslarına baxın, map_public_ip_on_launch parametrini axtarın…"</em> — yəni <b>dərslik cavabı</b>, sənin kodundan xəbərsiz.</div>
</div>

<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:10px 14px;">
<div style="font-weight:700; font-size:0.72em; color:#00703A;">✅ Kod seçilib</div>
<div style="font-size:0.6em; color:#334155; margin-top:5px;">Eyni sual, amma əvvəl <b>⌘A</b> ilə main.tf seçilib</div>
<div style="font-size:0.58em; color:#64748B; margin-top:5px; line-height:1.5;">Cavab dəqiqləşir: <em>"prd-pub-subnet-1, -2, -3 bloklarıdır"</em> — <b>sənin kodundan sitat gətirir</b>, sətirləri göstərir.</div>
</div>

</div>

<div class="r">✅ Qayda: <b>sual verməzdən əvvəl aidiyyatı kodu seç.</b> Seçim chat-ə "bax, söhbət bundan gedir" deməkdir — cavabın keyfiyyəti dərhal qalxır.</div>

<div class="t">🧹 <b>Söhbəti təmizləmək:</b> mövzu dəyişəndə <code>/clear</code> yaz (və ya panelin yuxarısında <b>+</b> ilə yeni söhbət aç) — köhnə kontekst yeni cavabı zəhərləməsin.</div>

<div class="ai">🤖 Yeni VS Code-da seçim <b>çip</b> kimi görünür (məs. <code>main.tf:26-51</code>) — chat qutusunun üstündə. Çipi görürsənsə, kontekst qoşulub deməkdir.</div>

---

<!-- Slide 5.6a: Thread-lər -->
## 5.6 — Thread-lər: Söhbətləri Mövzuya Görə Ayırmaq

Bir söhbətdə hər şeydən danışsan, kontekst qarışır — Copilot əvvəlki mövzunun izi ilə cavab verməyə başlayır. Həlli: **ayrı thread-lər**.

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Yeni thread:</b> chat panelinin yuxarısında <b>+</b> düyməsi — təmiz səhifə, sıfır kontekst</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>Köhnəyə qayıtmaq:</b> <b>🕐 saat</b> ikonu → keçmiş söhbətlərin siyahısı → klik → söhbət olduğu yerdən davam edir</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>Səliqə:</b> siyahıda thread-i <b>adını dəyişmək</b> və ya <b>✕ ilə silmək</b> olar</span></div>

<div class="t">🖥️ <b>Sən də et:</b> 1-ci thread: <em>"tell me about terraform variables"</em> → <b>+</b> → 2-ci thread: <em>"how can I lock down my terraform version to a specific release?"</em> → 🕐 ilə birinciyə qayıt və davam et: <em>"show me how to validate input variables"</em></div>

</div>
<div style="flex:1;">

<div class="r">✅ Nə üçün işləyir: chat cavab verəndə <b>həmin thread-in bütün tarixçəsini</b> nəzərə alır. Mövzu təmizdirsə — cavab dəqiq olur; qarışıqdırsa — cavab da qarışır.</div>

<div class="warn">⚠️ Praktik qayda: <b>bir tapşırıq = bir thread.</b> "VPC modulunu qururam" ayrı, "output-ları düzəldirəm" ayrı. İşi bitən thread-i silmək olar — sabah lazım olacaqsa saxla, adını dəyiş: <em>"vpc-modul"</em>.</div>

<div class="ai">🤖 <code>/clear</code> əmri də söhbəti təmizləyir — fərqi budur: <code>/clear</code> cari thread-i boşaldır, <b>+</b> isə <b>yeni</b> thread yaradır və köhnəsi tarixçədə qalır. Geri qayıtmaq istəyirsənsə — <b>+</b> istifadə et.</div>

</div>
</div>

---

<!-- Slide 5.6b: Quick Chat → panelə köçürmək -->
## 5.6 — Quick Chat-dən Panelə Köçürmək (və bir tələ)

Quick Chat tez sual üçün əladır, amma söhbət dərinləşirsə panelə keçirmək lazım gəlir:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

<div class="t">🖥️ Quick Chat-də sual ver (məs. <em>"how can I change the CIDR block of my VPC?"</em>) → cavabın yuxarısındakı <b>💬 "Open in Chat View"</b> düyməsinə bas → söhbət panelə köçür.</div>

<div class="r">✅ Faydası: qısa sualı yer tutmadan verirsən, işə yarayırsa böyük panelə keçirib davam edirsən — kontekst itmir.</div>

</div>
<div style="flex:1;">

<div class="warn">🛑 <b>Tələ:</b> köçürülən söhbət <b>yeni thread yaratmır</b> — panelDƏ AÇIQ olan cari thread-in <b>sonuna əlavə olunur</b>. Yəni panelde "Terraform versiyası" söhbəti açıqdırsa, VPC sualı onun davamı kimi yapışır və <b>iki mövzu qarışır</b>.</div>

<div class="r">✅ Həlli sadədir: köçürməzdən əvvəl paneldə <b>+</b> ilə boş thread aç — söhbət təmiz yerə düşsün.</div>

</div>
</div>

<div class="q">❓ Bir sözlə: nə vaxt hansı?</div>
<div class="a">💡 <b>Quick Chat</b> — "bir sual, bir cavab, getdim" · <b>Panel + thread</b> — "bu mövzu üzərində bir müddət işləyəcəyəm" · <b>Inline (⌘I)</b> — "bu konkret bloku dəyişəcəyəm".</div>

---

<!-- Slide 5.7a: Agentlər — icmal -->
## 5.7 — Agentlər: @ ilə "Mütəxəssis Çağırmaq"

Chat-də **@** yazan kimi siyahı açılır — hər agent öz sahəsinin mütəxəssisidir:

<div style="display:flex; gap:10px; margin:8px 0 6px 0;">

<div style="flex:1; background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.2em; text-align:center;">📁</div>
<div style="font-weight:700; font-size:0.68em; color:#00A859; text-align:center; margin-top:3px;">@workspace</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;"><b>Bütün layihəni</b> tanıyır — açıq olmayan faylları da axtarıb tapır. "Hansı faylda…?", "harada təyin olunub?"</div>
</div>

<div style="flex:1; background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.2em; text-align:center;">⌨️</div>
<div style="font-weight:700; font-size:0.68em; color:#FBBF24; text-align:center; margin-top:3px;">@terminal</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;"><b>Əmr sətri</b> üzrə: "bu işi hansı əmrlə görüm?", terminaldakı xətanın izahı</div>
</div>

<div style="flex:1; background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:11px 13px;">
<div style="font-size:1.2em; text-align:center;">🗔</div>
<div style="font-weight:700; font-size:0.68em; color:#60A5FA; text-align:center; margin-top:3px;">@vscode</div>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;"><b>Redaktorun özü</b> haqqında: parametrlər, extension-lar, tema, qısayollar</div>
</div>

</div>

<div class="r">✅ Fərqi belə yadda saxla: <b>agentsiz sual</b> = yalnız açıq fayl/seçim kontekstində · <b>@workspace</b> = bütün layihə · <b>@terminal</b> = əmrlər dünyası · <b>@vscode</b> = redaktorun ayarları.</div>

<div class="ai">🤖 Yeni VS Code-da <b>Agent rejimi</b> (mesaj qutusunun altında) layihəni <b>onsuz da özü</b> araşdırır — orada @workspace yazmağa ehtiyac qalmır. Ask rejimində isə @-agentlər işini görür. Rejimi yoxla, sonra yaz.</div>

---

<!-- Slide 5.7b: @workspace praktikada -->
## 5.7 — @workspace: Bütün Layihəni Görən Göz

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

<div class="t">🖥️ Yalnız <code>main.tf</code> açıqdır. Soruş: <em>"what variables do not have a default value?"</em></div>

<div style="display:flex; gap:8px; margin:6px 0;">
<div style="flex:1; background:#FEF2F2; border:1px solid #FECACA; border-radius:8px; padding:7px 10px;">
<div style="font-size:0.6em; color:#B91C1C; font-weight:700;">❌ agentsiz</div>
<div style="font-size:0.56em; color:#7F1D1D; margin-top:3px;">"main.tf-də variable bloku görmürəm…" — çünki dəyişənlər <b>başqa fayldadır</b></div>
</div>
<div style="flex:1; background:#F0FAF4; border:1px solid #C3E4D0; border-radius:8px; padding:7px 10px;">
<div style="font-size:0.6em; color:#00703A; font-weight:700;">✅ @workspace ilə</div>
<div style="font-size:0.56em; color:#14532D; margin-top:3px;">Bütün <code>.tf</code> faylları axtarır, tapdığı faylların <b>adını və sətrini</b> göstərir</div>
</div>
</div>

<div class="r">✅ Nə vaxt əvəzsizdir: yeni layihəyə qoşulanda — "bu dəyər harada təyin olunub?", "bu modulu kim çağırır?", "hansı fayllara toxunmalıyam?"</div>

</div>
<div style="flex:1;">

<div class="warn">🛑 <b>Canlı dərs anı:</b> bu sualın cavabında Copilot <b>yalnız modul dəyişənlərini</b> saydı, kök <code>variables.tf</code>-dəki bəziləri gözündən qaçdı. Yəni @workspace <b>axtarır, amma tam zəmanət vermir</b>.</div>

<div class="q">❓ Onda necə istifadə etməli?</div>
<div class="a">💡 Cavabı <b>başlanğıc nöqtəsi</b> kimi götür: göstərdiyi fayla get, öz gözünlə yoxla. AI axtarışı sürətləndirir — <b>nəticəni təsdiqləmək sənin işindir</b>. (Yoxlama üsulu: <code>grep -rn "variable \"" *.tf</code>)</div>

</div>
</div>

---

<!-- Slide 5.7c: @terminal və köhnəlmiş əmr tələsi -->
## 5.7 — @terminal: Əmr Soruş, Amma Yoxla!

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

<div class="t">🖥️ <code>@terminal how can I commit my changes to git?</code></div>

```bash
git commit -m "your commit message"
```

<div style="font-size:0.62em; color:#334155;">Cavabı <b>Insert into Terminal</b> ilə birbaşa terminala göndər — mesajı dəyişib Enter-i özün basırsan.</div>

<div class="r">✅ Diqqət: yalnız <b>soruşduğunu</b> verdi — <code>git add</code> və <code>git push</code>-dan danışmadı. Dəqiq sual = dəqiq cavab; tam axın istəyirsənsə, tam soruş.</div>

</div>
<div style="flex:1;">

<div class="t">🖥️ <code>@terminal what is the command to refresh my terraform state?</code></div>

<div style="background:#1E293B; border-radius:8px; border-left:4px solid #EF4444; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
<span style="color:#F87171;">terraform refresh</span>&nbsp;&nbsp;<span style="color:#64748B;"># Copilot-un cavabı</span><br><br>
<span style="color:#4ADE80;">terraform apply -refresh-only</span>&nbsp;&nbsp;<span style="color:#64748B;"># DÜZGÜNÜ</span>
</div>

<div class="warn">🛑 <code>terraform refresh</code> <b>köhnəlmiş (deprecated)</b> əmrdir — rəsmi sənəd bunu açıq yazır. Copilot köhnə məlumatla cavab verdi. Fəsil 1-in "köhnə dərslik problemi" — indi <b>əmr səviyyəsində</b>.</div>

<div class="r">✅ Yoxlama refleksi: naməlum əmri işə salmazdan əvvəl <code>terraform -help</code> və ya rəsmi sənəd. Xüsusən <b>state-ə toxunan</b> əmrlərdə.</div>

</div>
</div>

---

<!-- Slide 5.7d: @vscode + # kontekst dəyişənləri -->
## 5.7 — @vscode və # ilə Konteksti Dəqiqləşdirmək

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">

**🗔 @vscode — redaktorun öz sualları:**

- <em>"help me format my code to Terraform standards"</em> → lazımi extension-u göstərir + <code>editor.defaultFormatter</code> parametrini izah edir
- <em>"how can I change the colors of my VS Code window?"</em> → tema dəyişmə addımları

<div class="r">✅ Cavablarda <b>düymələr</b> olur: "Show in Command Palette", "Show in Settings Editor" — kliklə birbaşa lazımi yerə aparır. Parametr adını yadda saxlamağa ehtiyac qalmır.</div>

</div>
<div style="flex:1;">

**# — kontekst dəyişənləri (agentlərlə birgə işləyir):**

| Yazılış | Nəyi kontekstə qoşur |
|---|---|
| `#file:variables.tf` | Konkret faylı |
| `#selection` | Redaktordakı seçimi |
| `#editor` | Açıq faylın görünən hissəsini |
| `#terminalLastCommand` | Terminalda **son işlətdiyin əmri** |
| `#terminalSelection` | Terminalda seçdiyin mətni |

<div class="ai">🤖 Ən faydalı cütlük — xəta araşdırması: terminalda xəta çıxdı → <code>@terminal #terminalLastCommand bu xəta niyə oldu?</code> — Copilot əmri və çıxışı görür, təxmin etmir.</div>

</div>
</div>

---

<!-- Slide 5.8: Mini yoxlama -->
<!-- _class: tight -->
## Mini Yoxlama — Fəsil 5.1–5.7

<div style="margin:8px 0;">

<div class="q"><span class="qnum">1</span> Chat-in üç giriş yolu hansılardır və hansı nə vaxt uyğundur?</div>
<div class="a">💡 <b>Panel (⌃⌘I)</b> — uzun/çoxaddımlı işlər · <b>Inline (⌘I)</b> — konkret bloku dəyişmək · <b>Quick Chat</b> — tez sual. Panel yerini sürüşdürməklə sağa keçirmək olar.</div>

<div class="q"><span class="qnum">2</span> Chat "dinamik et" dedi, kodda <code>var.x</code> yarandı, amma plan xəta verir. Səbəb?</div>
<div class="a">💡 Copilot yalnız <b>seçili bloku</b> dəyişdi — dəyişəni <code>variables.tf</code>-də <b>bəyan etmədi</b>. Yarımçıq refaktor: hər dəyişiklikdən sonra <code>validate</code>/<code>plan</code>.</div>

<div class="q"><span class="qnum">3</span> Cavabdakı kodu fayla ən təhlükəsiz necə köçürürsən?</div>
<div class="a">💡 <b>Apply in Editor</b> — diff göstərir, nəyin dəyişdiyini görüb <b>Accept</b> edirsən. Terminal əmrləri üçün: <b>Insert into Terminal</b> (Enter-i sən basırsan).</div>

<div class="q"><span class="qnum">4</span> Eyni sualı verdin, cavab ümumi çıxdı. Nə etməli?</div>
<div class="a">💡 Aidiyyatı <b>kodu seç</b> və sualı təkrarla — seçim kontekst deməkdir.</div>

<div class="q"><span class="qnum">5</span> <code>/clear</code> ilə <b>+</b> (yeni thread) arasında fərq nədir?</div>
<div class="a">💡 <code>/clear</code> cari söhbəti <b>boşaldır</b>, <b>+</b> isə <b>yeni thread</b> açır — köhnəsi 🕐 tarixçədə qalır.</div>

<div class="q"><span class="qnum qnum-bonus">6</span> <code>@terminal</code> sənə <code>terraform refresh</code> təklif etdi. Nə edirsən?</div>
<div class="a">💡 <b>İşlətmirsən</b> — bu əmr köhnəlmişdir (deprecated), müasir qarşılığı <code>terraform apply -refresh-only</code>. Naməlum əmri, xüsusən <b>state-ə toxunanı</b>, rəsmi sənədlə yoxla.</div>

</div>

<div class="t">➡️ Növbəti: <b>Fəsil 5 davamı</b> — built-in əmrlər (/) və redaktor daxilində sual vermək.</div>
