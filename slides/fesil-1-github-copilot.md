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

<!-- Slide 1: Titul --># Terraform + GitHub Copilot

## Dərs 1 — Əsaslar və İlk Kod

<div style="background:#0F172A; border-radius:10px; padding:14px 20px; margin:16px 0; text-align:center;">
  <div style="font-size:0.62em; color:#00A859; font-weight:700; letter-spacing:1.5px; text-transform:uppercase; margin-bottom:7px;">Bu dərsdə</div>
  <div style="font-size:0.78em; color:#E2E8F0; line-height:1.9;">
    GitHub Copilot nədir? &nbsp;·&nbsp; Alternativlər: Claude Code &nbsp;·&nbsp; GenAI-ın limitləri<br />
    IaC + Terraform &nbsp;·&nbsp; init → plan → apply → destroy &nbsp;·&nbsp; Copilot ilə ilk layihə
  </div>
</div>

---

<!-- Slide 2: Gündəlik -->
## Bu Dərsdə Öyrənəcəksiniz

<div style="margin:10px 0 4px 0;">
  <div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>GitHub Copilot</b> nədir, necə işləyir, hansı imkanları var</span></div>
  <div class="step-row"><span class="step-num">2</span><span class="step-txt">Alternativ alətlər — <b>Claude Code</b> və VS Code extension-u</span></div>
  <div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>GenAI-ın limitləri</b> — AI-a nə vaxt etibar etməli, nə vaxt yox</span></div>
  <div class="step-row"><span class="step-num">4</span><span class="step-txt"><b>Infrastructure as Code (IaC)</b> və Terraform-a giriş + canlı demo</span></div>
  <div class="step-row"><span class="step-num">5</span><span class="step-txt">Mühit yoxlaması — pre-work hamıda işləyir?</span></div>
  <div class="step-row"><span class="step-num">6</span><span class="step-txt">Copilot ilə <b>ilk Terraform layihəsi</b> — öz AWS account-unda</span></div>
</div>

> Kursun ana xətti: **Copilot sürətləndirir, `terraform validate` yoxlayır.** AI-a kor-koranə etibar yox — yoxlanılan sürət.

---

<!-- Slide 3: Copilot nədir -->
## GitHub Copilot Nədir?

Kod redaktorunuzun içində işləyən **AI əsaslı proqramlaşdırma köməkçisi**. Siz kod yazdıqca o, sətirləri tamamlayır, funksiyaları bitirir, hətta bütöv kod bloklarını təklif edir.

<div style="display:flex; gap:9px; width:100%; margin:10px 0 6px 0;">
  <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:9px 10px; flex:1; text-align:center;">
    <div style="font-size:1.4em;">🤖</div>
    <div style="font-weight:700; font-size:0.66em; color:#00A859; margin-top:3px;">AI modelləri</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:4px; line-height:1.35;">Milyardlarla sətir açıq kod üzərində öyrədilib</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:9px 10px; flex:1; text-align:center;">
    <div style="font-size:1.4em;">⌨️</div>
    <div style="font-weight:700; font-size:0.66em; color:#60A5FA; margin-top:3px;">Redaktor daxilində</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:4px; line-height:1.35;">VS Code və digər redaktorlarda birbaşa işləyir</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:9px 10px; flex:1; text-align:center;">
    <div style="font-size:1.4em;">🌐</div>
    <div style="font-weight:700; font-size:0.66em; color:#FBBF24; margin-top:3px;">Çoxdilli</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:4px; line-height:1.35;">Python, JS, Go, C# … və <b>Terraform</b></div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:9px 10px; flex:1; text-align:center;">
    <div style="font-size:1.4em;">🎛️</div>
    <div style="font-weight:700; font-size:0.66em; color:#C084FC; margin-top:3px;">Nəzarət səndədir</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:4px; line-height:1.35;">Təklif edir — qəbul etmək sənin qərarındır</div>
  </div>
</div>

<div style="background:#1E293B; border-radius:8px; border-left:4px solid #00A859; padding:8px 12px; margin:6px 0; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.6em; color:#E2E8F0;">
  <span style="color:#64748B;"># S3 bucket yaradan resurs</span><br />
  resource "aws_s3_bucket" <span class="ghost">"data" { bucket = "datacras-raw-data" }</span><span style="color:#00A859;">▌</span>
</div>

<div class="r">Boz mətn — Copilot-un təklifidir. <b>Tab</b> = qəbul et, <b>Esc</b> = rədd et. Yazdığın kod deyil, <em>təklif olunan</em> koddur.</div>

---

<!-- Slide 4: Nələri bacarır -->
## Copilot Nələri Bacarır?

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<ul>
<li><strong>Kod tamamlama</strong> — yazdıqca sətri/bloku bitirir</li>
<li><strong>Sıfırdan kod generasiyası</strong> — şərhdən (comment) işlək koda</li>
<li><strong>Sənədləşdirmə</strong> — kodunu sənin yerinə izah edir</li>
<li><strong>Unit test yazmaq</strong> — kodun düzgünlüyünü yoxlayan testlər</li>
<li><strong>Layihə strukturu</strong> — qovluq və faylların yaradılmasına kömək</li>
</ul>
</div>
<div style="flex:1;">
<div class="t">💬 <b>Copilot Chat</b> — redaktor daxilində sual-cavab: "bu kod nə edir?", "bu xətanı necə düzəldim?"</div>
<div class="t">⌨️ <b>CLI dəstəyi</b> — terminalda əmr sintaksisini soruş, xəta izahı al — sənədlərə keçmədən</div>
<div class="t">📋 <b>PR xülasəsi</b> — dəyişikliklərdən avtomatik pull request təsviri <em>(Enterprise)</em></div>
</div>
</div>

<div class="warn">⚠️ Copilot mükəmməl deyil — təklifləri yoxlamaq və düzəltmək lazım gələ bilər. O, <b>kömək etmək</b> üçündür, idarəni ələ almaq üçün yox. Yekun kod sənin məsuliyyətindir.</div>

---

<!-- Slide 5: Niyə istifadə etməli -->
## Niyə Copilot? — Üç Əsas Fayda

<div style="display:flex; gap:10px; width:100%; margin:12px 0 8px 0;">
  <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:12px; padding:14px 14px; flex:1; text-align:center;">
    <div style="font-size:1.8em;">🚀</div>
    <div style="font-weight:700; font-size:0.78em; color:#00A859; margin-top:5px;">İdeyadan koda — daha sürətli</div>
    <div style="font-size:0.6em; color:#CBD5E1; margin-top:7px; line-height:1.55;">Fikir var, amma kodlaşdırma yavaş gedir? Ani təkliflər səni ideyadan icraya daha tez aparır.</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:12px; padding:14px 14px; flex:1; text-align:center;">
    <div style="font-size:1.8em;">🎓</div>
    <div style="font-weight:700; font-size:0.78em; color:#60A5FA; margin-top:5px;">Öyrənmə köməkçisi</div>
    <div style="font-size:0.6em; color:#CBD5E1; margin-top:7px; line-height:1.55;">Yeni dil və ya framework? Copilot yanaşma təklif edir, nümunə göstərir — <b>bizim vəziyyət: Terraform yeni başlayanlar üçün</b>.</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:12px; padding:14px 14px; flex:1; text-align:center;">
    <div style="font-size:1.8em;">⏱️</div>
    <div style="font-weight:700; font-size:0.78em; color:#FBBF24; margin-top:5px;">Təkrar işlərə vaxt qənaəti</div>
    <div style="font-size:0.6em; color:#CBD5E1; margin-top:7px; line-height:1.55;">Sintaksis axtarışı, təkrarlanan bloklar — bu "xırda işlər" avtomatlaşır, diqqətin əsas məsələdə qalır.</div>
  </div>
</div>

<div class="r">Nəticə: axından (flow) çıxmadan kod yazırsan — brauzerə keçib sənəd axtarmaq azalır.</div>

---

<!-- Slide 6: Necə işləyir -->
## Necə İşləyir? — Kontekstdən Təklifə

Copilot yazdığın kodu **daim izləyir** və ətrafdakı kontekstdən nəticə çıxarır:

<div style="display:flex; align-items:center; justify-content:center; gap:8px; width:100%; margin:12px 0 8px 0;">
  <div class="anim-step1" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 11px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.66em;">1 · KONTEKST</div>
    <div style="font-size:0.55em; margin-top:4px; line-height:1.4;">Kursor ətrafı kod · açıq fayllar · fayl yolları · layihə strukturu</div>
  </div>
  <div style="font-size:1.1em; color:#848688;">→</div>
  <div class="anim-step2" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 11px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.66em;">2 · MODEL</div>
    <div style="font-size:0.55em; margin-top:4px; line-height:1.4;">Kontekst AI modelinə göndərilir</div>
  </div>
  <div style="font-size:1.1em; color:#848688;">→</div>
  <div class="anim-step3" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 11px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.66em;">3 · TƏXMİN</div>
    <div style="font-size:0.55em; margin-top:4px; line-height:1.4;">"Növbəti nə gələ bilər?" — ehtimala əsaslanan hesablama</div>
  </div>
  <div style="font-size:1.1em; color:#848688;">→</div>
  <div class="anim-step4" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 11px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.66em;">4 · TƏKLİF</div>
    <div style="font-size:0.55em; margin-top:4px; line-height:1.4;">Boz mətn kimi redaktorda görünür — Tab ilə qəbul</div>
  </div>
</div>

<div class="r">✅ Vacib: Copilot başqa layihələrdən kodu <b>kopyalayıb yapışdırmır</b> — sənin kontekstinə uyğun <em>yeni</em> təklif generasiya edir.</div>

<div class="q">❓ Bəs "ehtimala əsaslanan" nə deməkdir?</div>

<div class="a">💡 Model dəqiq "bilmir" — ən çox uyğun gələn davamı <em>təxmin edir</em>. Buna görə təklif bəzən səhv olur. Bu, növbəti mövzumuzun (GenAI limitləri) əsasıdır.</div>

---

<!-- Slide 7: Harada istifadə olunur -->
## Harada İstifadə Edə Bilərsən?

<div style="display:flex; gap:10px; width:100%; margin:10px 0 6px 0;">
  <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:10px 12px; flex:1;">
    <div style="font-size:1.3em; text-align:center;">💻</div>
    <div style="font-weight:700; font-size:0.68em; color:#00A859; margin-top:3px; text-align:center;">IDE / Redaktor</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.45;">Əsas istifadə yeri — <b>VS Code</b> (bizim seçim), JetBrains, Neovim və s.</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:10px 12px; flex:1;">
    <div style="font-size:1.3em; text-align:center;">⌨️</div>
    <div style="font-weight:700; font-size:0.68em; color:#60A5FA; margin-top:3px; text-align:center;">GitHub CLI</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.45;">Terminalda əmr təklifi və xəta izahı — <code style="background:#334155; color:#A7F3D0; border:none;">gh copilot</code></div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:10px 12px; flex:1;">
    <div style="font-size:1.3em; text-align:center;">📱</div>
    <div style="font-weight:700; font-size:0.68em; color:#FBBF24; margin-top:3px; text-align:center;">GitHub Mobile</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.45;">Yolda ikən kod haqqında sual-cavab — telefonda chat</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:10px 12px; flex:1;">
    <div style="font-size:1.3em; text-align:center;">🌐</div>
    <div style="font-weight:700; font-size:0.68em; color:#C084FC; margin-top:3px; text-align:center;">github.com</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.45;">Sayt daxilində — yalnız <b>Enterprise</b> lisenziya ilə (PR xülasəsi və s.)</div>
  </div>
</div>

<div class="r">Bu kursda: <b>VS Code</b> daxilində completion + chat. CLI istəyənlər üçün bonus olaraq göstəriləcək.</div>

---

<!-- Slide 8: Planlar və giriş -->
## Copilot-a Necə Giriş Əldə Etməli?

| Plan | Qiymət | Kimin üçün |
|---|---|---|
| **Free** | 0 ₼ | Ayda 2000 completion + 50 chat mesajı — **bizim kursun planı** |
| Pro | ~$10/ay | Fərdi proqramçılar, limitsiz istifadə |
| Business / Enterprise | təşkilat ödəyir | Komandalar, əlavə imkanlar (PR xülasəsi və s.) |

<div style="display:flex; gap:10px; margin:8px 0 4px 0;">
  <div class="bonus" style="flex:1; min-width:0; margin:0;">🎓 <b>Tələbə və müəllimlərə PULSUZ:</b> GitHub Education vasitəsilə Copilot Pro ödənişsiz verilir — universitet e-poçtu ilə müraciət edin. Populyar açıq mənbə (open-source) layihə sahiblərinə də pulsuzdur.</div>
  <div class="warn" style="flex:1; min-width:0; margin:0;">⚠️ Pre-work-də Copilot Free-ni artıq aktivləşdirmisiniz. Education müraciəti göndərmisinizsə, təsdiq gələnə qədər Free ilə davam edin — kurs üçün tam kifayətdir.</div>
</div>

<div class="r">Yoxlama: <a href="https://github.com/settings/copilot">github.com/settings/copilot</a> → status <b>aktiv</b> olmalıdır.</div>

---

<!-- Slide 9: Alternativlər — Claude Code -->
## Copilot Tək Deyil — Alternativ: Claude Code

AI kod köməkçiləri bazarı sürətlə böyüyür. Ən güclü alternativlərdən biri — Anthropic şirkətinin **Claude Code** aləti:

<div style="display:flex; gap:12px; margin:8px 0 6px 0;">
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:10px 14px;">
  <div style="font-weight:700; font-size:0.78em; color:#00703A;">GitHub Copilot</div>
  <ul style="margin-top:6px;">
    <li style="font-size:0.62em;">Redaktor daxilində <b>sətir-sətir tamamlama</b></li>
    <li style="font-size:0.62em;">Yazdıqca təklif — "yanındakı köməkçi"</li>
    <li style="font-size:0.62em;">Chat paneli ilə sual-cavab</li>
    <li style="font-size:0.62em;">Kiçik, tez-tez təkliflər üçün ideal</li>
  </ul>
</div>
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #9333EA; border-radius:10px; padding:10px 14px;">
  <div style="font-weight:700; font-size:0.78em; color:#7E22CE;">Claude Code</div>
  <ul style="margin-top:6px;">
    <li style="font-size:0.62em;"><b>Agent</b> tipli — tapşırığı verirsən, özü icra edir</li>
    <li style="font-size:0.62em;">Faylları özü oxuyur, yazır, əmrləri terminalda icra edir</li>
    <li style="font-size:0.62em;">Terminal (CLI) + <b>VS Code extension</b> var</li>
    <li style="font-size:0.62em;">Böyük, çoxaddımlı tapşırıqlar üçün ideal</li>
  </ul>
</div>
</div>

<div class="ai">🤖 Fərqin mahiyyəti: Copilot <b>sən yazarkən</b> kömək edir; Claude Code isə <b>sənin yerinə bütöv tapşırığı</b> yerinə yetirə bilir (məsələn: "bu layihəyə VPC modulu əlavə et və testlə"). Digər oxşar alətlər: Amazon Q Developer, Gemini Code Assist, Cursor.</div>

<div class="r">Bu kursda <b>Copilot</b> istifadə edirik — amma öyrənəcəyin prinsiplər (kontekst vermək, təklifi yoxlamaq, dəqiq sual yazmaq) <b>bütün AI alətlərinə</b> aiddir.</div>

---


## Mini Yoxlama — Fəsil 1.1

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Copilot təklifləri haradan gətirir — hazır kodu kopyalayır?</div>
<div class="a">💡 Xeyr. Kontekstinə (kursor ətrafı kod, açıq fayllar) baxıb <b>yeni təklif generasiya edir</b> — ehtimala əsaslanan təxmindir, kopyalama deyil.</div>
<div class="q"><span class="qnum">2</span> Copilot təklif etdiyi kodun düzgünlüyünə kim cavabdehdir?</div>
<div class="a">💡 <b>Sən.</b> Copilot köməkçidir — yekun qərar və məsuliyyət proqramçınındır. Buna görə hər təklifi oxuyub yoxlayırıq.</div>
<div class="q"><span class="qnum">3</span> Bu kursda hansı planla işləyirik və limiti nədir?</div>
<div class="a">💡 <b>Copilot Free</b> — ayda 2000 completion + 50 chat mesajı. Tələbələr GitHub Education ilə Pro-nu pulsuz ala bilər.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Copilot ilə Claude Code arasındakı əsas fərq nədir?</div>
<div class="a">💡 Copilot yazdıqca <b>təklif edir</b>; Claude Code <b>agent</b> kimi bütöv tapşırığı özü icra edir (fayl oxuyur/yazır, əmr işlədir).</div>
</div>

<div class="t">➡️ Növbəti: <b>GenAI-ın limitləri</b> — AI köməkçilərə nə vaxt etibar etməli, nə vaxt şübhə ilə yanaşmalı.</div>

---

<!-- Slide 11: Fəsil 1.2 — giriş -->
## GenAI-ın Limitləri — Nəyi Bilməlisən?

Copilot və digər generativ AI alətləri nə qədər güclü olsa da, **qüsursuz deyillər**. Bu bölmədə dörd əsas mövzuya baxacağıq:

<div style="display:flex; gap:9px; width:100%; margin:12px 0 8px 0;">
  <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:11px 10px; flex:1; text-align:center;">
    <div style="font-size:1.5em;">🎯</div>
    <div style="font-weight:700; font-size:0.68em; color:#00A859; margin-top:4px;">Kod dəqiqliyi</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.4;">Təkliflər həmişə düzgün deyil — bəzən açıq-aydın səhvdir</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:11px 10px; flex:1; text-align:center;">
    <div style="font-size:1.5em;">🔐</div>
    <div style="font-weight:700; font-size:0.68em; color:#FBBF24; margin-top:4px;">Təhlükəsizlik və etika</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.4;">Zəifliklər, məxfi məlumat sızması, şirkət siyasətləri</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:11px 10px; flex:1; text-align:center;">
    <div style="font-size:1.5em;">📚</div>
    <div style="font-weight:700; font-size:0.68em; color:#60A5FA; margin-top:4px;">Təlim datasından asılılıq</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.4;">Köhnəlmiş sintaksis, qərəzli nümunələr</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:11px 10px; flex:1; text-align:center;">
    <div style="font-size:1.5em;">⚙️</div>
    <div style="font-weight:700; font-size:0.68em; color:#C084FC; margin-top:4px;">Praktik qeydlər</div>
    <div style="font-size:0.55em; color:#CBD5E1; margin-top:5px; line-height:1.4;">Probabilistik nəticələr, dil dəstəyi, mövzu sərhədi</div>
  </div>
</div>

<div class="r">Məqsəd Copilot-dan imtina etmək deyil — onu <b>şüurlu və məsuliyyətlə</b> istifadə etməkdir: sürət sənin, yoxlama da sənin.</div>

---

<!-- Slide 12: Kod dəqiqliyi -->
## Kod Dəqiqliyi — Ekspertiza Səndə Qalır

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<ul>
<li>Copilot-un kodu <strong>çox vaxt yaxşıdır</strong> — amma həmişə yox</li>
<li>Bəzən təklif tələbinə uyğun gəlmir, bəzən <strong>açıq-aydın səhvdir</strong></li>
<li>Hər təklifi <strong>oxu, anla, yoxla</strong> — sonra qəbul et</li>
<li>Sənin dil biliyin (Terraform, Python…) təklifi <strong>qiymətləndirmək</strong> üçündür</li>
</ul>
</div>
<div style="flex:1;">
<div class="q">❓ Copilot məni əvəz edəcək?</div>
<div class="a">💡 Xeyr. Copilot <b>alətlər qutusunda bir alətdir</b> — sənin rolunun əvəzedicisi deyil. Problemə fərqli yanaşmaları göstərir, amma layihəni <b>sən</b> idarə edirsən.</div>
<div class="r">✅ Layihəni uğurlu və ya uğursuz edən — AI yox, <b>sənin bilik və mühakimən</b>dir.</div>
</div>
</div>

<div class="warn">⚠️ Qızıl qayda: anlamadığın kodu qəbul etmə. "İşləyir, amma niyə işləyir bilmirəm" — texniki borcun başlanğıcıdır.</div>

---

<!-- Slide 13: Canlı nümunə — hallüsinasiya -->
## Canlı Nümunə — Copilot &quot;Uyduranda&quot;

AI modelləri bəzən **mövcud olmayan** arqument və resurslar təklif edir — buna **hallüsinasiya** deyilir. Terraform-da bunu tutmaq asandır:

<div style="display:flex; gap:10px; margin:8px 0;">
<div style="flex:1; min-width:0;">
<div class="t">1️⃣ Copilot-un təklif etdiyi kod:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_s3_bucket&quot; &quot;data&quot; {
  bucket        = &quot;datacras-data&quot;
  bucket_region = &quot;eu-north-1&quot;
}
</code></pre>
<div style="font-size:0.62em; color:#848688; margin-top:2px;">Görünüşü inandırıcıdır — amma <code>bucket_region</code> adlı arqument mövcud deyil!</div>
</div>
<div style="flex:1; min-width:0;">
<div class="t">2️⃣ <code>terraform validate</code> dərhal tutur:</div>
<div style="background:#1E293B; border-radius:8px; border-left:4px solid #EF4444; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.52em; color:#E2E8F0; line-height:1.5;">
<span style="color:#F87171; font-weight:700;">Error: Unsupported argument</span><br /><br />
&nbsp;&nbsp;on main.tf line 3, in resource "aws_s3_bucket" "data":<br />
&nbsp;&nbsp;&nbsp;3:&nbsp;&nbsp;bucket_region = "eu-north-1"<br /><br />
An argument named "bucket_region" is not expected here.
</div>
</div>
</div>

<div class="r">✅ Kursun ana xətti budur: <b>Copilot sürətləndirir, <code>terraform validate</code> yoxlayır.</b> Hər təklifdən sonra: <code>validate</code> → <code>plan</code> → oxu → sonra <code>apply</code>.</div>

<div class="ai">🤖 Şübhə yaranan anda mənbə həmişə rəsmi sənədlərdir: <b>registry.terraform.io</b> — provider-in həqiqi arqument siyahısı orada.</div>

---

<!-- Slide 14: Təhlükəsizlik və etika -->
## Təhlükəsizlik və Etik Məsələlər

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<div class="warn">🔓 <b>Generasiya olunan kod təhlükəsiz olmaya bilər.</b> AI-ın təklif etməsi kodun zəifliklərdən azad olması demək deyil — xüsusən təhlükəsizlik kritik yerlərdə hər təklifi yoxla.</div>
<div class="warn">🤫 <b>Məxfi məlumat sızması.</b> Chat-ə sual yazarkən bilmədən daxili kod, parol və ya secret paylaşa bilərsən. <b>Bizim qayda: AWS access key-lər, parollar, ESXi giriş məlumatları heç vaxt chat-ə yazılmır.</b></div>
</div>
<div style="flex:1;">
<div class="t">🏢 <b>Şirkət GenAI siyasəti.</b> Bir çox təşkilatda qayda var: daxili layihə kodunu AI alətlərinə daxil etmək qadağandır — bəzilərində Copilot Chat tamamilə bağlıdır.</div>
<div class="r">✅ İşə başlayanda ilk sual: "bizim GenAI siyasətimiz var?" — nəyi paylaşmaq olar, nəyi olmaz, hansı alətlərə icazə var.</div>
</div>
</div>

> Xülasə: Copilot faydalıdır, amma **ehtiyatla yanaş** — təhlükəsizliyi unutma, etik tərəfləri nəzərə al, təşkilatının qaydalarına əməl et.

---

<!-- Slide 15: Təlim datası -->
## Təlim Datasından Asılılıq — &quot;Köhnə Dərslik&quot; Problemi

Copilot-un təklifləri **100% öyrədildiyi koda əsaslanır** — milyardlarla sətir açıq kod. Bu sistem mükəmməl deyil:

<div style="display:flex; gap:10px; width:100%; margin:10px 0 6px 0;">
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:11px 12px; flex:1;">
    <div style="font-weight:700; font-size:0.7em; color:#FBBF24;">⚖️ Qərəzli / suboptimal</div>
    <div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;">Keçmiş nümunələrdən öyrənib — gördüyü ən çox yayılmış həll həmişə <b>ən yaxşı</b> həll deyil. Sənin ehtiyacına uyğunlaşdırmaq lazım gələ bilər.</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #EF4444; border-radius:10px; padding:11px 12px; flex:1;">
    <div style="font-weight:700; font-size:0.7em; color:#F87171;">🕰️ Köhnəlmiş sintaksis</div>
    <div style="font-size:0.56em; color:#CBD5E1; margin-top:5px; line-height:1.5;">Dillər, kitabxanalar, framework-lər daim yenilənir — model isə <b>ən son versiyanı görməyib</b> ola bilər. Təklif köhnə üsulla gələ bilər.</div>
  </div>
</div>

<div class="ai">🤖 Terraform üçün bu, xüsusilə aktualdır: provider-lər <b>həftədə bir</b> yenilənir. Məsələn, Copilot köhnə təlim datasına görə <code>aws_s3_bucket</code> daxilində <code>acl = "private"</code> təklif edə bilər — halbuki müasir AWS provider-də bu, ayrıca <code>aws_s3_bucket_acl</code> resursuna keçib.</div>

<div class="r">✅ Analoji: bir neçə il yenilənməmiş dərslik — hələ də dəyərlidir, amma vacib yerləri <b>yeni mənbə ilə tutuşdur</b>: registry.terraform.io + <code>terraform validate</code>.</div>

---

<!-- Slide 16: Praktik qeydlər -->
## Praktik Qeydlər — Gözləntiləri Düzgün Qur

<div style="margin:8px 0;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Copilot probabilistikdir.</b> Eyni sualı iki dəfə soruşsan, fərqli cavab ala bilərsən — iki nəfər eyni sualı soruşanda da nəticələr fərqlənə bilər. Bu, xəta deyil, texnologiyanın təbiətidir.</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>Bu kursda vacib nəticə:</b> müəllimin ekranında gördüyün prompt səndə <b>bir az fərqli kod</b> verə bilər — oxşar olacaq, amma eyni olmaya bilər. Narahat olma, bu normaldır.</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>Yalnız kod mövzusunda güclüdür.</b> Tarix və ya ümumi bilik sualları üçün nəzərdə tutulmayıb — o suallar üçün ümumi məqsədli AI chat-lərdən (ChatGPT, Claude və s.) istifadə et.</span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt"><b>İngilis dili əsasdır.</b> Model əsasən ingilisdilli mənbələrdə öyrədilib — başqa dildə prompt-ların keyfiyyəti aşağı ola bilər. <b>Bizim qayda: prompt-ları ingiliscə yazırıq</b> — dərsdə birlikdə məşq edəcəyik.</span></div>
</div>

<div class="r">✅ Bu dörd faktı bilən tələbə Copilot-dan məyus olmur — ondan <b>düzgün gözləntilərlə</b> maksimum fayda götürür.</div>

---


## Mini Yoxlama — Fəsil 1.2

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Copilot inandırıcı görünən, amma mövcud olmayan arqument təklif etdi. Buna nə deyilir və necə tutulur?</div>
<div class="a">💡 <b>Hallüsinasiya.</b> Terraform-da <code>terraform validate</code> dərhal "Unsupported argument" xətası verir — buna görə hər təklifdən sonra validate işlədirik.</div>
<div class="q"><span class="qnum">2</span> Copilot Chat-ə hansı məlumatları yazmaq olmaz?</div>
<div class="a">💡 Parollar, AWS access key-lər, ESXi giriş məlumatları, şirkətin daxili kodu (siyasət qadağan edirsə). Əvvəlcə təşkilatın <b>GenAI siyasətini</b> öyrən.</div>
<div class="q"><span class="qnum">3</span> Müəllimlə eyni prompt-u yazdın, amma fərqli kod aldın. Bu problemdir?</div>
<div class="a">💡 Xeyr — Copilot <b>probabilistikdir</b>: təkliflər ehtimala əsaslanır, eyni sual fərqli nəticə verə bilər. Vacib olan nəticəni yoxlamaqdır.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Copilot niyə köhnəlmiş Terraform sintaksisi təklif edə bilər?</div>
<div class="a">💡 Təklifləri <b>təlim datasına</b> əsaslanır — provider-lər isə daim yenilənir. Model ən son versiyanı görməyib ola bilər; rəsmi sənədlərlə (registry.terraform.io) tutuşdurmaq lazımdır.</div>
</div>

<div class="t">➡️ Növbəti: <b>Fəsil 2 — HashiCorp Terraform-a giriş</b> — IaC nədir və Terraform necə işləyir.</div>
