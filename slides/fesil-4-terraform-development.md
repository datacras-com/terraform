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

<!-- Slide: Fəsil 4 — bölmə başlığı --><div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; text-align:center;">
  <div style="display:flex; align-items:center; gap:14px;">
    <svg width="72" height="72" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
    <div style="font-size:2.2em;">🤝</div>
    <div style="font-size:2.6em;">🤖</div>
  </div>
  <div style="font-size:0.7em; color:#00A859; font-weight:700; letter-spacing:2px; text-transform:uppercase; margin-top:14px;">Fəsil 4</div>
  <div style="font-size:1.5em; font-weight:700; color:#0F172A; margin-top:6px;">Terraform Development — Copilot İşə Düşür!</div>
  <div style="background:#0F172A; border-radius:10px; padding:12px 26px; margin-top:16px;">
    <div style="font-size:0.72em; color:#E2E8F0; line-height:1.9;">
      4.1 Layihəyə sürətli start (scaffold) &nbsp;·&nbsp; 4.2 Copilot ilə ilk konfiqurasiya<br />
      4.3 Təklifləri genişləndirmək &nbsp;·&nbsp; 4.4 Copilot menyusu &nbsp;·&nbsp; 4.5 Modul yaratmaq
    </div>
  </div>
  <div class="r" style="margin-top:14px; max-width:86%;">✅ Fəsil 2-nin demo-sunda hər şeyi <b>əl ilə</b> yazdıq və qadağa qoymuşduq. Qadağa bitdi — bu fəsildən <b>Copilot açıqdır</b>. Eyni işləri indi onun sürəti ilə edəcəyik və fərqi özün görəcəksən.</div>
</div>

---

<!-- Slide 4.1a: Niyə scaffold -->
## 4.1 — Layihəyə Sürətli Start: Problem və Həll

Fəsil 2-dən bilirik: Terraform layihəsi **bir fayldan ibarət olmur**. Standart layihədə:

<div style="display:flex; gap:14px; margin:8px 0; align-items:flex-start;">
<div style="flex:1; min-width:0;">
<div style="background:#1E293B; border-radius:10px; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0; line-height:1.75;">
my-terraform-project/<br />
├── main.tf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#64748B;"># əsas konfiqurasiya / modul çağırışları</span><br />
├── variables.tf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#64748B;"># giriş dəyişənləri</span><br />
├── outputs.tf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#64748B;"># çıxış dəyərləri</span><br />
├── terraform.tfvars&nbsp;<span style="color:#64748B;"># dəyişənlərin real dəyərləri</span><br />
├── README.md<br />
└── modules/<br />
&nbsp;&nbsp;&nbsp;&nbsp;└── example-module/<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── main.tf<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── variables.tf<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├── outputs.tf<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└── README.md
</div>
</div>
<div style="flex:1;">
<p><strong>Problem:</strong> hər yeni layihədə bu qovluq və faylları <strong>əl ilə</strong> yaratmaq — darıxdırıcı, təkrarlanan iş. Setup friction.</p>
<p><strong>Həll:</strong> Copilot Chat-in <strong>scaffold</strong> (skelet) qurma imkanı — bir əmrlə bütün strukturu yaradır.</p>
<div class="ai">🤖 Bu bölmədə qəsdən bir az "irəli qaçırıq": Chat-i dərindən Fəsil 5-də öyrənəcəyik. Amma layihəyə sürətli start üçün bu bir fəndi indi götürürük.</div>
</div>
</div>

---


## 4.1 — Agent Rejimi ilə Skeleti Copilot Qursun

<div class="t">🖥️ <b>Sən də et</b> — boş <code>demo</code> qovluğunu VS Code-da aç və addımları təkrarla:</div>

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Chat panelini aç</b> — ⌃⌘I (Ctrl+Alt+I) və ya yuxarıda Copilot ikonu</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt">Mesaj qutusunun altını yoxla: sessiya <b>Local</b> olmalıdır ("Copilot CLI" yazırsa → klik → Local seç), rejim: <b>Agent</b></span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt">Yaz (ingiliscə!):</span></div>
<div style="background:#0F172A; border:1.5px solid #9333EA; border-radius:10px; padding:8px 12px; margin:4px 0 8px 26px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0; line-height:1.6;">
Create all the files needed for a new Terraform project<br />that includes modules: main.tf, variables.tf, outputs.tf,<br />terraform.tfvars, README, and a modules/example-module folder
</div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt">Agent faylları <b>birbaşa yaradır</b> — chat-də "Created 6 files" hesabatını və Explorer-də strukturu gör</span></div>
<div class="step-row"><span class="step-num">5</span><span class="step-txt">Mesaj qutusunun üstündə <b>Keep</b> bas — dəyişikliklər təsdiqlənir (<b>Undo</b> = hamısı geri qayıdır!)</span></div>
</div>
<div style="flex:1;">
<p><strong>Niyə Agent rejimi?</strong></p>
<ul>
<li>Fayl siyahısını <strong>dəqiq sadalayırıq</strong> — nəticə proqnozlaşdırıla bilir</li>
<li>Agent yaradır, amma <strong>son söz səndədir</strong>: Keep / Undo</li>
<li>Fayllar harada yarandığını chat hesabatında yoxla</li>
</ul>
<div class="warn">⚠️ Yaranan fayllarda <b>nümunə kodlar</b> ola bilər — bizə lazım olan <b>strukturdur</b>, nümunələri silmək olar. Copilot probabilistikdir: modul qovluğu natamam çıxsa, davam yaz: <em>"Add variables.tf and outputs.tf to the module folder"</em>.</div>
<div class="ai">🤖 Köhnə materiallarda bu iş üçün <code>@workspace /new</code> əmri göstərilir — <b>yeni VS Code-da işləmir</b> ("Unexpected generated prompt structure" xətası). Rast gəlsən, bil ki, Agent rejimi onun müasir əvəzidir.</div>
</div>
</div>

---

<!-- Slide 4.1c: Nəticə və vərdiş -->
## 4.1 — Nəticə: Bir Prompt = Hazır Layihə

<div style="display:flex; align-items:center; justify-content:center; gap:10px; margin:10px 0 8px 0;">
  <div style="background:#F3E8FF; border:1.5px solid #D8B4FE; border-radius:10px; padding:9px 16px; text-align:center;">
    <div style="font-size:0.66em; color:#7E22CE; font-weight:700;">💬 1 chat mesajı</div>
    <div style="font-size:0.52em; color:#581C87; margin-top:2px;">Agent rejimi + fayl siyahılı təsvir</div>
  </div>
  <div style="font-size:1.1em; color:#848688;">→</div>
  <div style="background:#EFF6FF; border:1.5px solid #BFDBFE; border-radius:10px; padding:9px 16px; text-align:center;">
    <div style="font-size:0.66em; color:#1D4ED8; font-weight:700;">👀 Baxış + təsdiq</div>
    <div style="font-size:0.52em; color:#1E3A5F; margin-top:2px;">hesabatı oxu → Keep (və ya Undo)</div>
  </div>
  <div style="font-size:1.1em; color:#848688;">→</div>
  <div style="background:#F0FAF4; border:1.5px solid #C3E4D0; border-radius:10px; padding:9px 16px; text-align:center;">
    <div style="font-size:0.66em; color:#00703A; font-weight:700;">📁 10 fayl, 3 qovluq</div>
    <div style="font-size:0.52em; color:#0F172A; margin-top:2px;">standart Terraform layihəsi</div>
  </div>
</div>

- Bu strukturu **kursun sonuna qədər** istifadə edəcəyik — bütün lab-lar bu qəlibdə gedir
- **Yaxşı işləyən promptu saxla!** Bir dəfə tapdın → hər yeni layihədə eyni promptu işlət — öz &quot;layihə şablonun&quot; olur

<div class="q">❓ Free planda 50 chat mesajı var. Bu əməliyyat neçəsini yedi?</div>

<div class="a">💡 Cəmi <b>1 mesaj</b> — 10 faylın hamısı bir cavabda gəldi. Chat-i belə "toplu" işlər üçün işlətmək limitə qənaətdir; sətir-sətir kod üçün isə completions var (limiti ayrıdır: 2000/ay).</div>

<div class="r">✅ Yadda saxla: faylları Copilot yaratdı, təsdiqi <b>sən verdin</b> (Keep düyməsi). Bu, kursun ana xəttinin chat versiyasıdır: AI icra edir — qərar səndədir.</div>

<div class="t">➡️ Növbəti: <b>4.2 — Copilot ilə ilk Terraform konfiqurasiyası</b> — bu skeletin içini əsl infrastruktur kodu ilə dolduracağıq.</div>

---

<!-- Slide 4.2a1: Anlayışlar lüğəti -->
## 4.2 — Əvvəlcə Anlayışlar: Nədən Danışırıq?

Memarlığa keçməzdən əvvəl hər komponenti tanıyaq — **analogiya: AWS = ölkə, sənin infrastrukturun = orada tikdiyin obyektlər:**

<div style="display:grid; grid-template-columns:1fr 1fr 1fr; gap:8px; margin:8px 0 4px 0;">
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #F59E0B; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#B45309;">🌍 Region</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;">AWS-in <b>coğrafi mərkəzi</b> — data mərkəzlərinin yerləşdiyi ərazi. Bizimki: <code>eu-north-1</code> (Stokholm). <em>Analogiya: şəhər.</em></div>
  </div>
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #3B82F6; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#1D4ED8;">🏢 Availability Zone (AZ)</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;">Region daxilində <b>müstəqil data mərkəzi</b> — ayrı elektrik, ayrı şəbəkə. Biri çöksə, digərləri işləyir → yükü 3 AZ-yə yayırıq. <em>Analogiya: şəhərin fərqli rayonlarındakı filiallar.</em></div>
  </div>
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#00703A;">🔒 VPC</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;">Virtual Private Cloud — cloud-da <b>sənin izolə olunmuş şəxsi şəbəkən</b>, öz IP diapazonu ilə (10.0.0.0/16 = ~65 min ünvan). <em>Analogiya: hasarlanmış ərazi.</em></div>
  </div>
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #7CB342; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#558B2F;">▦ Subnet</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;">VPC-nin <b>kiçik parçası</b>, konkret bir AZ-də yaşayır (10.0.0.0/24 = 256 ünvan). <b>Public</b> = internetə açıq · <b>Private</b> = yalnız daxili. <em>Analogiya: ərazidəki ayrı-ayrı binalar.</em></div>
  </div>
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #9333EA; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#7E22CE;">🚪 Internet Gateway (IGW)</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;">VPC-nin <b>internetə çıxış qapısı</b> — onsuz şəbəkən dünyadan tam təcriddədir. VPC-yə bir dənə qoşulur. <em>Analogiya: ərazinin əsas darvazası.</em></div>
  </div>
  <div style="background:white; border:1.5px solid #E2E8F0; border-top:4px solid #EF4444; border-radius:10px; padding:8px 11px;">
    <div style="font-weight:700; font-size:0.68em; color:#DC2626;">🗺️ Route Table + Association</div>
    <div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.5;"><b>Route table</b> — trafikin yol xəritəsi: "bu ünvana gedən paket hara yönəlsin?" <b>Association</b> — xəritəni subnetə <b>bağlayan qoşqu</b>: "sən məhz bu xəritə ilə gedəcəksən." <em>Növbəti slaydda ayrıca izah ↓</em></div>
  </div>
</div>

<div class="q">❓ Public subnet-i public edən nədir?</div>

<div class="a">💡 Subnetin özündə "public" düyməsi yoxdur! Onu public edən — bağlı olduğu <b>route table-da IGW-yə marşrutun olmasıdır</b> (0.0.0.0/0 → IGW). Marşrut yoxdursa → private. Yəni fərqi <b>yol xəritəsi</b> yaradır.</div>

---


## 4.2 — Bəs CIDR Özü Nədir? — &quot;/16&quot;, &quot;/24&quot; Sirri

Hər tərəfdə görürük: `10.0.0.0/16`, `10.0.1.0/24`… Açaq görək bu yazılış nə deyir:

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<p><strong>IP ünvanı</strong> = 4 ədəd rəqəm (hərəsi 0–255): <code>10.0.1.25</code></p>
<p><strong>CIDR yazılışı</strong> = ünvan + <code>/N</code>:</p>
<div style="background:#0F172A; border-radius:10px; padding:10px 16px; margin:6px 0; text-align:center;">
<span style="font-family:'SF Mono',Menlo,monospace; font-size:1em;"><span style="color:#00A859; font-weight:700;">10.0</span><span style="color:#FBBF24; font-weight:700;">.0.0</span><span style="color:#C084FC; font-weight:700;">/16</span></span>
<div style="font-size:0.56em; color:#CBD5E1; margin-top:6px; line-height:1.7;"><span style="color:#00A859;">yaşıl = SABİT hissə</span> (şəbəkənin "soyadı")<br /><span style="color:#FBBF24;">sarı = DƏYİŞƏN hissə</span> (üzvlərin "adları")<br /><span style="color:#C084FC;">/16 = ilk 16 bit (= ilk 2 rəqəm) sabitdir</span></div>
</div>
<div class="r">✅ Analogiya: CIDR = <b>küçə ünvanı</b>. <code>/16</code> — "Nizami küçəsi" (bütün evlər ora aiddir), <code>/24</code> — "Nizami küçəsi, 5-ci bina" (yalnız o binadakı mənzillər), <code>/32</code> — konkret bir mənzil.</div>
</div>
<div style="flex:1;">
<table>
<thead>
<tr>
<th>CIDR</th>
<th>Sabit</th>
<th>Əhatə</th>
<th>Ünvan sayı</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>10.0.0.0/16</code></td>
<td>10.0</td>
<td>10.0.<b>0-255</b>.<b>0-255</b></td>
<td>~65.000</td>
</tr>
<tr>
<td><code>10.0.1.0/24</code></td>
<td>10.0.1</td>
<td>10.0.1.<b>0-255</b></td>
<td>256</td>
</tr>
<tr>
<td><code>10.0.1.25/32</code></td>
<td>hamısı</td>
<td>tək ünvan</td>
<td>1</td>
</tr>
<tr>
<td><code>0.0.0.0/0</code></td>
<td>heç nə</td>
<td><b>bütün internet</b></td>
<td>hamısı</td>
</tr>
</tbody>
</table>
<div style="font-size:0.62em; color:#334155; line-height:1.6;">Qayda sadədir: <b>/N böyüdükcə şəbəkə kiçilir</b>. Hər +8 (bir rəqəm sabitləşir) = 256 dəfə kiçilmə.</div>
<div class="q">❓ İndi öz kodumuz oxunur: niyə VPC /16, subnet /24?</div>
<div class="a">💡 VPC = böyük küçə (~65 min ünvan) → subnetlər = küçədəki binalar (hərəsi 256 ünvanlıq /24 parça: 10.0.1.0/24, 10.0.2.0/24…). Subnet mütləq VPC küçəsinin <b>içində</b> olmalıdır — 10.1.x.x yazsan, "başqa küçənin binası"dır → apply xətası (özün gördün!). Və route table-dakı <code>0.0.0.0/0</code> = "qalan bütün dünya" — ona görə internetə yol deməkdir.</div>
</div>
</div>

---

<!-- Slide 4.2a1b: Route Table Association dərindən -->
## 4.2 — Route Table Association: Xəritə və Qoşqu

Üç ayrı anlayışı qarışdırmayaq — **marşrut** (yol qaydası), **route table** (qaydalar toplusu) və **association** (toplunun subnetə bağlanması):

<div style="display:flex; align-items:center; justify-content:center; gap:10px; margin:10px 0 6px 0;">
<div style="background:white; border:2px solid #2E7D32; border-radius:10px; padding:9px 13px; flex:1;">
<div style="font-size:0.62em; font-weight:800; color:#2E7D32;">1 · Marşrut (route)</div>
<div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.6;">Tək bir yol qaydası:<br /><code>0.0.0.0/0 → IGW</code><br /><em>"hara gedirsənsə get — qapıdan çıx"</em></div>
</div>
<div style="font-size:1.1em; color:#848688;">→</div>
<div style="background:white; border:2px solid #B45309; border-radius:10px; padding:9px 13px; flex:1;">
<div style="font-size:0.62em; font-weight:800; color:#B45309;">2 · Route Table</div>
<div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.6;">Marşrutların <b>toplusu</b> — hazır yol xəritəsi. Öz-özünə heç nə etmir: <b>hansısa subnetə bağlanana qədər boş kağızdır</b>.</div>
</div>
<div style="font-size:1.1em; color:#848688;">→</div>
<div style="background:white; border:2px solid #DC2626; border-radius:10px; padding:9px 13px; flex:1;">
<div style="font-size:0.62em; font-weight:800; color:#DC2626;">3 · Association</div>
<div style="font-size:0.54em; color:#334155; margin-top:4px; line-height:1.6;">Xəritəni subnetə <b>bağlayan qoşqu</b>: "prd-pub-subnet-1, sən <b>bu</b> xəritə ilə işləyəcəksən." Hər subnet yalnız <b>bir</b> xəritəyə bağlana bilər.</div>
</div>
</div>

<div style="background:#0F172A; border-radius:10px; padding:10px 16px; margin:6px 0;">
<div style="font-size:0.6em; color:#00A859; font-weight:700; text-transform:uppercase; letter-spacing:1px; margin-bottom:5px;">🏙️ Analogiya — naviqator</div>
<div style="font-size:0.62em; color:#E2E8F0; line-height:1.8;">
Route table = <b>naviqator proqramı</b> (yolları bilir) &nbsp;·&nbsp; Subnet = <b>sürücü</b> &nbsp;·&nbsp; Association = <b>telefonu sürücünün maşınına bərkitmək</b>.<br />
Naviqator nə qədər ağıllı olsa da, maşına qoşulmayıbsa sürücüyə xeyri yoxdur. Bir maşında bir naviqator olur — amma <b>eyni naviqatoru</b> yüzlərlə maşına quraşdırmaq olar (bizdə: 1 public RT → 3 subnet).
</div>
</div>

<div style="display:flex; gap:10px; margin:4px 0;">
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_route_table_association&quot; &quot;prd-pub-rt-assoc-1&quot; {
  subnet_id      = aws_subnet.prd-pub-subnet-1.id
  route_table_id = aws_route_table.prd-pub-rt.id
}
</code></pre>
</div>
<div style="flex:1;">
<div class="r" style="margin-top:4px;">✅ Koddakı görünüşü: association resursu cəmi <b>iki arqumentdir</b> — "hansı subnet" + "hansı xəritə". Bütün işi bu cütlük görür. Bizim layihədə 6 subnet var → <b>6 association</b> yazacağıq (3 public + 3 private).</div>
</div>
</div>

<div class="q">❓ Subnetə heç bir association yazmasaq nə olar?</div>

<div class="a">💡 Sahibsiz qalmır — AWS onu avtomatik VPC-nin <b>main route table</b>-ına bağlayır. Amma bu, gizli davranışdır: hansı xəritə ilə işlədiyi koddan görünmür. Yaxşı praktika: <b>hər subnetə açıq association yaz</b> — biz də belə edirik.</div>

---

<!-- Slide 4.2a2: Memarlıq diaqramı -->
## 4.2 — Memarlıq: Nə Qururuq?

<div style="text-align:center; margin:0;">
<img src="assets/memarliq-orijinal.png" style="max-width:78%; max-height:340px; border:1px solid #E2E8F0; border-radius:10px; box-shadow:0 2px 10px rgba(0,0,0,0.08);" />
</div>

<div style="display:flex; gap:8px; align-items:stretch; margin-top:3px;">
<div class="r" style="flex:1.4; margin:0; font-size:0.6em; padding:4px 9px;">✅ Oxunuşu: hər AZ-də 1 public + 1 private subnet → <b>yaşıl xətt</b> public association-ları Public RT-yə, <b>mavi xətt</b> private-ları Private RT-yə bağlayır → Public RT-dən IGW ⋯▸ internet. Cəmi: <b>16 resurs, 0 ₼</b>.</div>
<div class="warn" style="flex:1; margin:0; font-size:0.6em; padding:4px 9px;">⚠️ <b>NAT Gateway qəsdən yoxdur</b> — pulludur! Prod-da hər AZ-də olardı ki, private yüklər də internetə çıxa bilsin.</div>
</div>

<div class="ai" style="font-size:0.6em; padding:4px 9px; margin:3px 0 0 0;">🤖 Diaqramdakı adlar nümunədir (<code>us-east-1</code>) — bizim lab-da: region <b>eu-north-1</b>, adlar <code>prd-vpc</code> / <code>prd-pub-subnet-1..3</code> / <code>prd-pri-subnet-1..3</code>, CIDR 10.0.x.0/24.</div>

---


## 4.2 — provider.tf və Qəbul Etmə Üsulları

Scaffold `providers.tf` yaratmayıb — özümüz yaradırıq. Fayl açan kimi `provider` yazmağa başla:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">
<div class="t">🖥️ Yeni fayl: <code>provider.tf</code> → yaz: <code>provider "</code></div>
<div style="background:#1E293B; border-radius:8px; padding:8px 12px; margin:4px 0; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0; line-height:1.7;">
provider "<span class="ghost">aws" {&#10;&nbsp;&nbsp;region = "us-east-1"&#10;}</span>
</div>
<p>Copilot dərhal tam bloku təklif edir. Qəbul et, sonra <strong>region-u düzəlt</strong>:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">provider &quot;aws&quot; {
  region = &quot;eu-north-1&quot;
}
</code></pre>
<div class="warn">⚠️ İlk düzəlişimiz: Copilot <code>us-east-1</code> təklif edir (təlim datasında ən çox görülən region) — bizim region <b>eu-north-1</b>-dir. Təklif ≠ həqiqət!</div>
</div>
<div style="flex:1;">
<p><strong>Təklifi qəbul etməyin 2 yolu:</strong></p>
<table>
<thead>
<tr>
<th>Əməliyyat</th>
<th>Düymə</th>
</tr>
</thead>
<tbody>
<tr>
<td>Bütöv təklifi qəbul et</td>
<td><strong>Tab</strong></td>
</tr>
<tr>
<td>Söz-söz qəbul et</td>
<td><strong>⌘→</strong> (mac) / <strong>Ctrl+→</strong> (win)</td>
</tr>
<tr>
<td>Rədd et</td>
<td><strong>Esc</strong></td>
</tr>
</tbody>
</table>
<div class="r">✅ Söz-söz qəbul nə vaxt lazımdır? Təklifin <b>əvvəli düzgün, sonu səhv</b> olanda — düzgün hissəyə qədər ⌘→ ilə gedirsən, qalanını özün yazırsan.</div>
<div class="q">❓ Provider bloku məcburidir?</div>
<div class="a">💡 Texniki olaraq yox — amma yaxşı praktikadır: region kimi parametrləri açıq şəkildə təyin edirsən. Ayrıca faylda saxlamaq (<code>provider.tf</code>) strukturu təmiz saxlayır.</div>
</div>
</div>

---

<!-- Slide 4.2c: terraform bloku -->
## 4.2 — Versiya Kilidi: terraform Bloku

`main.tf`-ə keç, sadəcə `terraform` yaz — Copilot dərhal `required_providers` blokunu təklif edir:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># main.tf
terraform {
  required_providers {
    aws = {
      source  = &quot;hashicorp/aws&quot;
      version = &quot;~&gt; 6.57&quot;
    }
  }
}
</code></pre>
</div>
<div style="flex:1;">
<div class="warn">⚠️ İkinci düzəlişimiz: Copilot köhnə versiya təklif edir (<code>3.0.0</code> kimi!) — təlim datası köhnədir. Registry-dən cari versiyanı yoxlayıb <b>~&gt; 6.57</b> yazırıq. Fəsil 1-in "köhnə dərslik" problemi — ilk kod sətirlərimizdə qarşımıza çıxdı!</div>
<div class="r">✅ İki fayl, iki dərs: Copilot <b>strukturu mükəmməl bilir</b> (bloklar, sintaksis), amma <b>dəyərlərdə köhnəlir</b> (region, versiya). Struktura güvən, dəyəri yoxla.</div>
</div>
</div>

<div class="ai">🤖 Provider blokunu yazandan sonra Copilot əlavə təkliflər verməyə davam edəcək — hamısını qəbul etmə! Bizim provider konfiqurasiyamız artıq <code>provider.tf</code>-dədir. Copilot sənin fayl bölgüını bilmir — <b>sən bilirsən</b>.</div>

---

<!-- Slide 4.2d: VPC + yönləndirmə -->
## 4.2 — İlk Resurs: VPC (və Copilot-u Yönləndirmək)

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">
<div class="t">🖥️ Yaz: <code>resource "</code> → Copilot <b>aws_instance</b> təklif edir. Bizə instance yox, VPC lazımdır → yazmağa davam et: <code>aws_vpc</code> → təklif dəyişir!</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_vpc&quot; &quot;prd-vpc&quot; {
  cidr_block = &quot;10.0.0.0/16&quot;
}
</code></pre>
<ul>
<li><code>cidr_block</code> — VPC-nin IP diapazonu; <code>/16</code> = ~65k ünvan</li>
<li>Ad: <code>prd-vpc</code> — sonra dev-vpc gələndə fərqlənsin</li>
</ul>
</div>
<div style="flex:1;">
<div class="r">✅ <b>Yönləndirmə (steering) texnikası:</b> Copilot səhv istiqamətə gedirsə, Esc basıb sıfırdan yazmaq lazım deyil — <b>yazmağa davam et</b>. Hər yeni simvol konteksti dəqiqləşdirir və təklif yenilənir.</div>
<div class="q">❓ Niyə ilk təklif <code>aws_instance</code> idi?</div>
<div class="a">💡 Statistika: təlim datasında <code>resource "aws_</code> ilə başlayan kodların çoxu instance-dır. Copilot <b>sənin niyyətini bilmir</b> — ehtimalı bilir. Niyyəti sən verirsən: ya yazaraq, ya şərhlə.</div>
</div>
</div>

---


## 4.2 — Subnetlər: Copilot Kontekstdən Öyrənir

VPC-dən sonra Enter bas — Copilot özü subnet təklif edir (məntiqi ardıcıllığı duyur!):

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_subnet&quot; &quot;prd-pub-subnet-1&quot; {
  vpc_id            = aws_vpc.prd-vpc.id
  cidr_block        = &quot;10.0.0.0/24&quot;
  availability_zone = &quot;eu-north-1a&quot;

  tags = {
    Name = &quot;prd-pub-subnet-1&quot;
  }
}

resource &quot;aws_subnet&quot; &quot;prd-pub-subnet-2&quot; {
  vpc_id            = aws_vpc.prd-vpc.id
  cidr_block        = &quot;10.0.1.0/24&quot;
  availability_zone = &quot;eu-north-1b&quot;

  tags = {
    Name = &quot;prd-pub-subnet-2&quot;
  }
}
</code></pre>
</div>
<div style="flex:1;">
<p>Copilot-un kontekst zəkasını müşahidə et:</p>
<ul>
<li><code>vpc_id = aws_vpc.prd-vpc.id</code> — yuxarıdakı resursa <strong>istinad</strong> özü qoyur (Fəsil 2-dən: interpolation / implicit dependency)</li>
<li>2-ci subnetdə nömrəni <strong>özü artırır</strong>: subnet-1 → subnet-2, CIDR 10.0.0.0 → 10.0.1.0, AZ 1a → <strong>1b</strong></li>
<li><code>prd-</code> prefiksini adlandırmadan tutub — sənin üslubunu davam etdirir</li>
</ul>
<div class="t">🖥️ 3-cü public + 3 private subnet: Enter bas → Tab → CIDR-ləri yoxla (10.0.2.0 / 10.0.10-12.0) → AZ-ləri yoxla</div>
<div class="warn">⚠️ Private subnetlərdə Copilot bəzən <code>availability_zone</code>-u <b>unudur</b> — özün əlavə et: <code>availability</code> yazmağa başla, təklif gələcək. Hər Tab-dan sonra <b>oxu</b>!</div>
</div>
</div>

---


## 4.2 — Internet Gateway və Route Table-lar

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_internet_gateway&quot; &quot;prd-igw&quot; {
  vpc_id = aws_vpc.prd-vpc.id

  tags = {
    Name = &quot;prd-igw&quot;
  }
}

resource &quot;aws_route_table&quot; &quot;prd-pub-rt&quot; {
  vpc_id = aws_vpc.prd-vpc.id

  route {
    cidr_block = &quot;0.0.0.0/0&quot;
    gateway_id = aws_internet_gateway.prd-igw.id
  }
}

resource &quot;aws_route_table_association&quot; &quot;prd-pub-rt-assoc-1&quot; {
  subnet_id      = aws_subnet.prd-pub-subnet-1.id
  route_table_id = aws_route_table.prd-pub-rt.id
}
</code></pre>
</div>
<div style="flex:1;">
<ul>
<li><strong>IGW</strong> — VPC-nin internetə qapısı; subnetlərdən sonra Enter basanda Copilot bunu <strong>özü təklif edir</strong></li>
<li><strong>Public route table:</strong> <code>0.0.0.0/0 → IGW</code> = &quot;bütün kənar trafik internetə&quot;</li>
<li><strong>Assosiasiyalar:</strong> assoc-1-i yazandan sonra Copilot <strong>assoc-2 və assoc-3-ü ardıcıl təklif edir</strong> — Tab, Tab, hazır</li>
</ul>
<div class="r">✅ Private route table: route bloku <b>yoxdur</b> — daxili marşrutlar avtomatikdir, NAT olmadığı üçün kənara çıxış da yoxdur. 3 private assosiasiya da eyni qaydada.</div>
<div class="warn">⚠️ Ortada Copilot security group təklif edəcək — <b>Esc!</b> Plana sadiq qal: memarlıqda SG yoxdur. AI axına salıb plandan çıxarmasın.</div>
</div>
</div>

---

<!-- Slide 4.2g: Workflow icrası -->
## 4.2 — İcra: Tanış Beş Addım

Kod hazırdır — Fəsil 2-nin demo-sundakı **eyni iş axını**, indi Copilot-un yazdığı kodla:

<div style="display:flex; gap:9px; margin:8px 0 6px 0;">
<div style="flex:1; min-width:0; background:#1E293B; border-radius:10px; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.8;">
$ terraform fmt<br />
<span style="color:#94A3B8;">main.tf</span> <span style="color:#64748B;"># format düzəldildi</span><br /><br />
$ terraform init<br />
<span style="color:#4ADE80;">- Installed hashicorp/aws v6.57.1</span><br /><br />
$ terraform validate<br />
<span style="color:#4ADE80;">Success! The configuration is valid.</span>
</div>
<div style="flex:1; min-width:0; background:#1E293B; border-radius:10px; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.8;">
$ terraform plan<br />
<span style="color:#4ADE80; font-weight:700;">Plan: 16 to add, 0 to change, 0 to destroy.</span><br /><br />
$ terraform apply<br />
&nbsp;&nbsp;Enter a value: <span style="color:#FBBF24;">yes</span><br />
<span style="color:#4ADE80; font-weight:700;">Apply complete! Resources: 16 added.</span>
</div>
</div>

<div class="q">❓ 16 haradan gəldi? Sayaq:</div>

<div class="a">💡 1 VPC + 6 subnet + 1 IGW + 2 route table + 6 assosiasiya = <b>16 resurs</b>. Plan sayı gözləntinlə düz gəlmirsə — apply etmə, səbəbi tap!</div>

<div class="r">✅ <code>validate</code> burada xüsusi əhəmiyyət daşıyır: kodun böyük hissəsini <b>Copilot yazdı</b> — validate onun bütün istinadlarını, arqumentlərini yoxladı. Ana xəttimiz işləkdir: <b>Copilot sürətləndirir, validate yoxlayır.</b></div>

---


## 4.2 — AWS Console-da Vizual Yoxlama

<div class="t">🖥️ <b>Sən də et:</b> AWS Console → VPC → Your VPCs → <code>prd-vpc</code> seç → <b>Resource map</b> tabı</div>

Resource map — qurduğunun canlı xəritəsi:

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<p><strong>Görməli olduqların:</strong></p>
<ul>
<li>VPC: 10.0.0.0/16</li>
<li>6 subnet — hər AZ-də (1a/1b/1c) bir public + bir private</li>
<li>Public route table üzərinə gəl → solda <strong>3 public subnet</strong> işıqlanır, sağda <strong>IGW-ə marşrut</strong> görünür</li>
<li>Private route table → 3 private subnet, kənar marşrut yoxdur</li>
</ul>
</div>
<div style="flex:1;">
<div class="r">✅ Bu, memarlıq slaydındakı şəklin <b>birə-bir</b> reallaşmasıdır — plan etdiyimizi qurduq.</div>
<div class="warn">⚠️ İşin sonunda: <code>terraform destroy</code> → Console-da təmizliyi yoxla. VPC resursları pulsuzdur, amma <b>ritual ritualdır</b> — vərdiş prod-da xilas edir.</div>
</div>
</div>

<div class="ai">🤖 Bu dərsin kodu kursun repo-sundadır: <code>copilot-course/1-generate-terraform/</code> — öz nəticənlə tutuşdur. Yadda saxla: səndə <b>bir az fərqli</b> çıxa bilər (probabilistik!), vacib olan strukturun düzgünlüyüdür.</div>

---


## Mini Yoxlama — Fəsil 4.1–4.2

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Copilot <code>resource "aws_</code> yazanda instance təklif etdi, sənə VPC lazımdır. Nə edirsən?</div>
<div class="a">💡 <b>Yazmağa davam:</b> <code>aws_vpc</code> yazdıqca təklif yenilənir. Esc + sıfırdan başlamaq lazım deyil — hər simvol konteksti dəqiqləşdirir.</div>
<div class="q"><span class="qnum">2</span> Bu dərsdə Copilot-un iki "köhnəlik" səhvini tutduq — hansılar idi?</div>
<div class="a">💡 Region: <code>us-east-1</code> (bizə eu-north-1 lazımdır) və provider versiyası: <code>3.0.0</code> (cari: ~&gt; 6.57). Struktur düzgün, dəyərlər köhnə — dəyəri həmişə yoxla.</div>
<div class="q"><span class="qnum">3</span> Niyə memarlıqda NAT Gateway yoxdur?</div>
<div class="a">💡 NAT Gateway <b>saatlıq pulludur</b> — kurs pulsuz resurslarla gedir. Prod mühitində hər AZ-də bir NAT olardı (private yüklərin internetə çıxışı üçün).</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Subnet-2-ni yazanda Copilot CIDR-i 10.0.1.0-a, AZ-ni 1b-yə özü artırdı. Bu nəyin nümunəsidir?</div>
<div class="a">💡 <b>Kontekst zəkası:</b> Copilot faylda artıq yazılmış kodu oxuyub naxışı davam etdirir — nömrə, CIDR, AZ inkrementi. Buna görə yaxşı başlanğıc kod = yaxşı davam təklifləri.</div>
</div>

<div class="t">➡️ Növbəti: <b>4.3 — Təklifləri genişləndirmək</b> — şərhlə (comment-driven) daha dəqiq kod almaq və alternativ təkliflərə baxmaq.</div>

---


## 4.3 — Şərh Yaz, Kod Al: Comment-Driven Development

4.2-də Copilot yalnız **mövcud kodu** oxuyub təxmin edirdi. Ona **niyyətimizi açıq deyə** bilərik — şərhlə (comment):

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div class="t">🖥️ <b>Sən də et:</b> main.tf-in sonuna keç, yaz və Enter bas:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># creating a new vpc for development workloads
</code></pre>
<p>Copilot dərhal təklif edir:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_vpc&quot; &quot;dev-vpc&quot; {
  cidr_block = &quot;10.10.0.0/16&quot;
}
</code></pre>
</div>
<div style="flex:1;">
<p>Şərh niyə işləyir? Çünki şərhin <strong>iki oxucusu</strong> var:</p>
<ul>
<li>👤 <strong>İnsan</strong> — &quot;bu resurs nə üçündür?&quot; (sənədləşdirmə)</li>
<li>🤖 <strong>Copilot</strong> — &quot;istifadəçi nə istəyir?&quot; (<strong>prompt!</strong>)</li>
</ul>
<div class="r">✅ Diqqət: şərhdə "development" dedik → Copilot adı <code>dev-vpc</code> qoydu və CIDR-i mövcud prd-vpc (10.0.0.0/16) ilə <b>toqquşmayan</b> 10.10.0.0/16 seçdi. Şərh nə qədər dəqiq → təklif o qədər dəqiq.</div>
<div class="ai">🤖 Bu, kursun əsas iş üsuluna çevrilir: <b>əvvəl şərh yaz → sonra təklifi al → oxu → qəbul et</b>. Şərhlər həm sənəddir, həm prompt — ikisi bir yerdə.</div>
</div>
</div>

---

<!-- Slide 4.3b: Kontekst zəkası — SG -->
## 4.3 — Kontekstin Gücü: &quot;Web&quot; Dedin, Port 80 Aldın

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div class="t">🖥️ Yaz: <code># security group for our development web server</code> → Enter → Tab</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_security_group&quot; &quot;dev-web-sg&quot; {
  vpc_id = aws_vpc.dev-vpc.id

  ingress {
    description = &quot;allow inbound traffic&quot;
    from_port   = 80
    to_port     = 80
    protocol    = &quot;tcp&quot;
    cidr_blocks = [&quot;10.0.0.0/16&quot;]
  }
}
</code></pre>
</div>
<div style="flex:1;">
<p>Copilot-un kontekstdən çıxardığı nəticələr:</p>
<ul>
<li>Şərhdə <strong>&quot;web server&quot;</strong> → ingress qaydası <strong>port 80</strong> (web-in standart portu) — biz portu demədik!</li>
<li>Şərhdə <strong>&quot;development&quot;</strong> → <code>vpc_id</code> avtomatik <strong>dev-vpc</strong>-yə istinad edir, prd-yə yox</li>
</ul>
<div class="warn">⚠️ Amma diqqətli ol: <code>cidr_blocks = ["10.0.0.0/16"]</code> — bu, <b>prd</b> VPC-nin diapazonudur, halbuki qayda dev-vpc-dədir (10.10.0.0/16). Məqsədin dev daxili trafikdirsə, düzəlt! Copilot "ağlabatan görünən" dəyər qoyur — <b>düzgünlüyünü sən təsdiqləyirsən</b>. Security qaydalarında bu, ikiqat vacibdir.</div>
<div class="q">❓ Security Group nədir? (Bonus sənəddən xatırla)</div>
<div class="a">💡 Resurs səviyyəsində firewall — "bu servera hansı trafik girə bilər?" <code>ingress</code> = giriş qaydası, <code>egress</code> = çıxış.</div>
</div>
</div>

---

<!-- Slide 4.3c: Alternativ təkliflər -->
## 4.3 — İlk Təklif Yeganə Təklif Deyil

Copilot hər dəfə **bir neçə variant** hazırlayır — ekranda yalnız birincisini göstərir. Alternativlərə baxmağın iki yolu:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:10px 14px;">
<div style="font-weight:700; font-size:0.76em; color:#00703A;">Əsas yol — sətir içində: hover + oxlar</div>
<ul style="margin-top:6px;">
<li style="font-size:0.64em;">Boz təklifin üstünə mausu gətir → kiçik panel: <b>"1 of 2"</b> + ◀ ▶ oxları</li>
<li style="font-size:0.64em;">Klaviatura: <b>Option+]</b> / <b>Alt+]</b> — növbəti, <b>Option+[</b> — əvvəlki. Bəyəndiyini <b>Tab</b> ilə qəbul et</li>
<li style="font-size:0.64em;"><b>"1 of 1"</b> görürsənsə — bu dəfə alternativ yoxdur, Copilot tək variant hazırlayıb. Bu, normaldır</li>
<li style="font-size:0.64em;">Qısayol işləmirsə (klaviatura düzümü!): <b>⌘⇧P → "Show Next Inline Suggestion"</b></li>
</ul>
</div>
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #94A3B8; border-radius:10px; padding:10px 14px;">
<div style="font-weight:700; font-size:0.76em; color:#64748B;">Köhnə yol — <code>Ctrl+Enter</code> paneli <span style="background:#FEF2F2; border:1px solid #FECACA; color:#B91C1C; padding:1px 7px; border-radius:4px; font-size:0.82em;">yeni VS Code-da yoxdur</span></div>
<ul style="margin-top:6px;">
<li style="font-size:0.64em;">Köhnə Copilot extension-unda bütün variantları ayrıca tabda açırdı ("Open Completions Panel")</li>
<li style="font-size:0.64em;">Daxili (Built-in) Copilot-da bu panel <b>ləğv edilib</b> — köhnə təlimatlarda görsən, çaşma</li>
<li style="font-size:0.64em;">Müasir əvəzi: sətir içi oxlar (solda) və mürəkkəb istəklər üçün <b>Chat</b> (Fəsil 5)</li>
</ul>
</div>
</div>

<div class="r">✅ Vərdiş: təklif "demək olar yaxşıdır, amma tam deyil"sə — dərhal düzəltməyə girişmə, əvvəl <b>alternativlərə bax</b> (varsa). Alternativ yoxdursa, şərhi dəqiqləşdirib yenidən yazdırmaq da variantdır — yeni şərh = yeni təkliflər.</div>

---


## 4.3 — Mürəkkəb Resurs Sınağı: EKS (Yaz, Apply ETMƏ!)

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div class="t">🖥️ Yaz: <code># eks cluster for development web workloads</code> → Ctrl+Enter ilə təkliflərə bax</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_eks_cluster&quot; &quot;dev-cluster&quot; {
  name     = &quot;dev-cluster&quot;
  role_arn = &quot;arn:aws:iam::123456789012:role/eks-role&quot;
  vpc_config {
    security_group_ids = [aws_security_group.dev-web-sg.id]
    subnet_ids         = [&quot;subnet-1234567890abcdef0&quot;]
  }
}
</code></pre>
<div class="warn" style="margin-top:4px;">🛑 <b>APPLY ETMƏ!</b> EKS klasteri <b>pulludur</b> (~$0.10/saat + node-lar). Yazırıq, təkliflərə baxırıq, sonra bloku şərhə salırıq (<code>Cmd+/</code>). Kursun pulsuz xətti pozulmur.</div>
</div>
<div style="flex:1;">
<p>Bu nümunə iki şey öyrədir:</p>
<p><strong>1. Mürəkkəblik = çox variant.</strong> VPC üçün 1-2 təklif gəlirdi, EKS üçün ~10: biri IAM rolu ilə, biri subnet yaradan, biri sadə… Panel (<code>Ctrl+Enter</code>) burada əvəzsizdir.</p>
<p><strong>2. Hallüsinasiya qayıtdı!</strong> Təklifdəki dəyərlərə bax:</p>
<ul>
<li><code>role_arn = &quot;arn:aws:iam::<b>123456789012</b>:...&quot;</code> — <b>uydurma account nömrəsi</b></li>
<li><code>subnet_ids = [&quot;subnet-1234567890...&quot;]</code> — <b>uydurma ID</b></li>
</ul>
<div class="r">✅ Qayda: Copilot <b>strukturu</b> bilir, amma ARN, account nömrəsi, resurs ID-si kimi <b>konkret dəyərləri bilə bilməz</b> — onları uydurur. Belə dəyərlər həmişə səndən (və ya istinaddan) gəlməlidir.</div>
</div>
</div>

---


## Mini Yoxlama — Fəsil 4.3

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Şərh (comment) Copilot üçün nə rol oynayır?</div>
<div class="a">💡 <b>Prompt</b> rolunu — niyyətini açıq bildirirsən, təklif dəqiqləşir. Üstəlik şərh insan üçün sənədləşdirmə olaraq qalır: bir daşla iki quş.</div>
<div class="q"><span class="qnum">2</span> "Web server" şərhindən sonra Copilot port 80 təklif etdi. Bu təklifi yoxlamadan qəbul etmək olar?</div>
<div class="a">💡 Xeyr — məsələn həmin təklifdə <code>cidr_blocks</code> dev yox, <b>prd diapazonu</b> idi. Xüsusən security qaydalarında hər sətri oxu: Copilot "ağlabatan" qoyur, "düzgün"ü sən bilirsən.</div>
<div class="q"><span class="qnum">3</span> Alternativ təkliflərə baxmağın iki yolu hansılardır?</div>
<div class="a">💡 <b>Ctrl+Enter</b> — bütün variantlar ayrıca paneldə (mürəkkəb resurslar üçün); <b>hover + ◀▶ / Option+]</b> — sətir içində vərəqləmə (gündəlik sürətli yol).</div>
<div class="q"><span class="qnum qnum-bonus">4</span> EKS təklifində <code>arn:aws:iam::123456789012:role/eks-role</code> gördün. Nə edirsən?</div>
<div class="a">💡 Bu, <b>uydurma dəyərdir</b> — 123456789012 nümunə account nömrəsidir. Öz IAM rolunun ARN-i ilə əvəz etməlisən. ID/ARN tipli dəyərlərdə Copilot-a heç vaxt etibar etmə.</div>
</div>

<div class="t">➡️ Növbəti: <b>4.4 — Copilot Menyusu</b> — fix, explain, docs: üç güclü əməliyyat.</div>

---


## 4.4 — Üç Əməliyyat: Explain · Fix · Docs

Kodu seç → **⌘I / Ctrl+I** (inline chat) → **slash əmri** — üç əməliyyat bir qapıda:

<div style="display:flex; gap:8px; margin:8px 0 6px 0;">
<div style="flex:1; background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:9px 10px; text-align:center;">
<div style="font-size:1.3em;">💬</div>
<div style="font-weight:700; font-size:0.64em; color:#60A5FA; margin-top:3px;">/explain</div>
<div style="font-size:0.52em; color:#CBD5E1; margin-top:4px; line-height:1.4;">Seçili kodu sözlə izah edir</div>
</div>
<div style="flex:1; background:#0F172A; border:1.5px solid #EF4444; border-radius:10px; padding:9px 10px; text-align:center;">
<div style="font-size:1.3em;">🔧</div>
<div style="font-weight:700; font-size:0.64em; color:#F87171; margin-top:3px;">/fix</div>
<div style="font-size:0.52em; color:#CBD5E1; margin-top:4px; line-height:1.4;">Problemi tapır və düzəliş təklif edir</div>
</div>
<div style="flex:1; background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:9px 10px; text-align:center;">
<div style="font-size:1.3em;">📝</div>
<div style="font-weight:700; font-size:0.64em; color:#00A859; margin-top:3px;">/doc</div>
<div style="font-size:0.52em; color:#CBD5E1; margin-top:4px; line-height:1.4;">Şərh/sənəd generasiya edir</div>
</div>
</div>

**`/explain` — iki səviyyədə işləyir:**

- **Bütöv resurs:** `prd-vpc` blokunu seç → **⌘I** → `/explain` → izah: &quot;VPC yaradır, 10.0.0.0/16 = 10.0.0.0–10.0.255.255, ~65 min ünvan…&quot;
- **Tək parametr:** yalnız `version = "~> 6.57"` sətrini seç → `/explain` → pessimistic constraint izahı, nümunə kodla birlikdə

<div class="r">✅ Əsl istifadə yeri: <b>başqasının kodunu oxuyanda</b> (code review, yeni layihəyə qoşulma) — anlamadığın hər parçanı seç → ⌘I → /explain → sənədə keçmədən cavab.</div>

<div class="ai">🤖 İki praktik qeyd: <b>(1)</b> əməliyyat <b>"model is not supported" (400)</b> xətası versə — chat-in model seçicisindən başqa model seç (bəzi modellər inline əməliyyatları dəstəkləmir). <b>(2)</b> 💡 lampa ikonunda başqa AI extension-larının (Rovo Dev və s.) bəndlərini görə bilərsən — onlar Copilot deyil, çaşma; bizim yol həmişə <b>⌘I + slash əmri</b>dir.</div>

---

<!-- Slide 4.4b: Fix This — xəta 1 -->
## 4.4 — /fix №1: plan-ın Tutduğu Xəta

<div class="t">🖥️ <b>Lab faylında qəsdən 2 xəta gizlədilib</b> — birincisini plan tapır:</div>

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #EF4444; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform plan<br /><br />
<span style="color:#F87171; font-weight:700;">Error: Invalid number literal</span><br /><br />
&nbsp;&nbsp;on main.tf line 28, in resource "aws_security_group" "dev-web-sg":<br />
&nbsp;&nbsp;&nbsp;28:&nbsp;&nbsp;&nbsp;&nbsp;cidr_blocks = [<span style="color:#F87171;">10.0.0.0/16</span>]
</div>
<p>Problemli sətir:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">cidr_blocks = [10.0.0.0/16]      # dırnaqlar yoxdur!
</code></pre>
</div>
<div style="flex:1;">
<p><strong>Həll addımları:</strong></p>
<div class="step-row"><span class="step-num">1</span><span class="step-txt">Əvvəl <b>özün diaqnoz qoy</b>: dəyər string olmalıdır → dırnaq çatışmır</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt">Sətri seç → <b>⌘I</b> → <code>/fix</code></span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt">Copilot izah + düzəliş göstərir: <code>["10.0.0.0/16"]</code> → oxu → <b>Accept</b></span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt"><code>terraform plan</code> təkrar → xəta yoxdur ✅</span></div>
<div class="r">✅ Tanış xətadır? Sən özün provider-də <code>region = us-east-1</code> yazanda eynisini görmüşdün — dırnaqsız string. İndi düzəltmə yolunu iki cür bilirsən: əl ilə və Fix This ilə.</div>
</div>
</div>

---

<!-- Slide 4.4c: Fix This — xəta 2, plan keçir apply yıxılır -->
## 4.4 — /fix №2: plan-ın KEÇİRDİYİ, apply-ın Tutduğu Xəta

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<p>Faylda boş resurs var:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_vpc&quot; &quot;test-vpc&quot; {
}
</code></pre>
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #F59E0B; padding:8px 12px; margin-top:4px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform plan<br />
<span style="color:#4ADE80;">Plan: 1 to add…</span> <span style="color:#64748B;"># plan RAZIDIR! 🤨</span><br /><br />
$ terraform apply<br />
<span style="color:#F87171; font-weight:700;">Error: either cidr_block or ipv4_ipam_pool_id<br />should be provided</span>
</div>
<div class="step-row" style="margin-top:6px;"><span class="step-num">→</span><span class="step-txt">Bloku seç → <b>⌘I</b> → <code>/fix</code> → Copilot <code>cidr_block = "10.20.0.0/16"</code> təklif edir — mövcud naxışı izləyib <b>toqquşmayan</b> diapazon seçib!</span></div>
</div>
<div style="flex:1;">
<p><strong>Bu slaydın əsl dərsi — yoxlama qatları:</strong></p>
<div style="display:flex; flex-direction:column; gap:4px; margin:6px 0;">
<div style="background:#F0FAF4; border-left:4px solid #00A859; border-radius:0 6px 6px 0; padding:4px 10px; font-size:0.6em;"><b>validate</b> — sintaksis, istinadlar <em>(ən sürətli, ən az görən)</em></div>
<div style="background:#EFF6FF; border-left:4px solid #3B82F6; border-radius:0 6px 6px 0; padding:4px 10px; font-size:0.6em;"><b>plan</b> — kod ↔ state müqayisəsi <em>(amma AWS qaydalarını bilmir!)</em></div>
<div style="background:#FFF8E1; border-left:4px solid #F59E0B; border-radius:0 6px 6px 0; padding:4px 10px; font-size:0.6em;"><b>apply</b> — platformanın API-si = <b>son hakim</b> <em>(hər şeyi görür)</em></div>
</div>
<div class="r">✅ "Plan keçdi" ≠ "hər şey düzgündür". Sənin CIDR xətanda da belə idi: 10.1.0.0/24 VPC-dən kənar — plan susdu, apply tutdu. Bu, Terraform-un normal davranışıdır.</div>
<div class="warn">⚠️ /fix-in təklif etdiyi CIDR-i də <b>yoxla</b>: 10.20.0.0/16 boşdur? Prod-da bu sual şəbəkə komandasına gedir — lab-da özün cavab verirsən.</div>
</div>
</div>

---

<!-- Slide 4.4d: Docs -->
## 4.4 — Sənədləşdirmə: /doc və Agent

**📝 İki miqyasda işləyir:**

- **Tək resurs:** seç → **⌘I** → `/doc` → şərh kodun üstünə diff kimi gəlir → **Accept**. Bəzən <b>həddən artıq geniş</b> yazır — bəyənmədin? <b>Discard</b>
- **Bütün fayl (ən etibarlı yol — Agent):** chat-də Agent rejimi + prompt: *&quot;Add a # Resource / # Description comment above each resource block. Do not change any code.&quot;* → dəyişikliklərə bax → **Keep**

<div class="warn">⚠️ Generasiyadan sonra <b>oxu</b>: təsvirlər kodla düz gəlir? Adətən dəqiqdir (kodu onsuz da Copilot yazıb!), amma yekun məsuliyyət sənindir.</div>

<div class="ai">🤖 Yadda saxla: <b>chat paneli söhbətə yazır, fayla toxunmur</b> — fayl redaktəsi yalnız ⌘I (inline, Accept ilə) və Agent (Keep ilə) yollarından gəlir. Xülasə chat-ə gəldisə, yanlış qapıdan girmisən.</div>

<div class="ai">🤖 Üç əməliyyatın ortaq qaydası: slash əmrləri <b>sürətləndirir</b>, amma nəticəni oxumaq, Accept/Keep qərarı — həmişə səndə. /explain oxumağı, /fix düzəltməyi, /doc sənədləməyi sürətləndirir — heç biri düşünməyi əvəz etmir.</div>

---

<!-- Slide 4.4x: Köhnə-yeni xəritəsi -->
## 4.4 — İnternetdəki Köhnə Təlimatlarla Qarşılaşanda

Copilot-un interfeysi sürətlə dəyişir — köhnə dərsliklərdə, bloqlarda, hətta rəsmi sənədlərin köhnə versiyalarında **artıq mövcud olmayan yollar** göstərilir. Xəritən budur:

| Köhnə yol (köhnə təlimatlarda görəcəksən) | Müasir qarşılığı (bizim mühit) |
|---|---|
| Sağ klik → Copilot → **Explain This** | Seç → **⌘I** → `/explain` |
| Sağ klik → Copilot → **Fix This** | Seç → **⌘I** → `/fix` |
| Sağ klik → Copilot → **Generate Docs** | Seç → **⌘I** → `/doc` — və ya **Agent** promptu |
| **Ctrl+Enter** — təkliflər paneli | Yoxdur → hover + ◀▶ / **Option+]** |
| **@workspace /new** — scaffold | Yoxdur → **Agent** rejimi + adi dil promptu |
| Copilot extension-unu quraşdırmaq | Yeni VS Code-da **Built-in** — yalnız Sign in |

<div class="r">✅ Dəyişməyən nə? <b>Konsepsiyalar:</b> kontekst vermək, təklifi oxumaq, validate ilə yoxlamaq, qərarın səndə olması. Düymələr dəyişir — prinsiplər qalır. Yeni dəyişiklik görəndə çaşma: əməliyyatın adını xatırla, yeni qapısını axtar.</div>

<div class="ai">🤖 Bu cədvəl özü Fəsil 1-in "köhnə dərslik problemi"nin canlı sübutudur: bu kurs hazırlanan müddətdə belə interfeys dəyişdi. AI alətləri ilə işləyəndə bu, normadır — buna hazır ol.</div>

---


## Mini Yoxlama — Fəsil 4.4

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Boş <code>test-vpc</code> blokunu plan keçirdi, apply isə xəta verdi. Niyə?</div>
<div class="a">💡 <code>plan</code> AWS-in daxili qaydalarını (məsələn, "VPC-yə cidr_block MÜTLƏQDİR") bilmir — o, kod↔state müqayisəsidir. Son hakim <b>apply</b>-dır: platformanın API-si. Yoxlama qatları: validate &lt; plan &lt; apply.</div>
<div class="q"><span class="qnum">2</span> /fix düzəliş təklif etdi. Dərhal Accept basmaq olar?</div>
<div class="a">💡 Əvvəl <b>özün diaqnoz qoy</b>, sonra Copilot-un izahı ilə tutuşdur, təklif olunan dəyəri yoxla (CIDR boşdur? düzgün diapazon?) — sonra Accept. Kor-koranə Accept = kor-koranə Tab.</div>
<div class="q"><span class="qnum">3</span> Həmkarının yazdığı anlaşılmaz Terraform kodu qarşındadır. Ən sürətli addım?</div>
<div class="a">💡 Anlaşılmaz hissəni seç → <b>⌘I → /explain</b>. Bütöv resurs da olar, tək parametr də — hər ikisini izah edir.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Bütün fayla birdən sənəd şərhləri əlavə etməyin yolu?</div>
<div class="a">💡 <b>Agent rejimi</b> + prompt: <em>"Add # Resource / # Description comments above each resource block, do not change any code"</em> → oxu-yoxla → Keep. (Tək resurs üçün: seç → ⌘I → /doc.)</div>
</div>

<div class="t">➡️ Növbəti: <b>4.5 — Modul Yaratmaq</b> — dev-vpc resursunu Copilot ilə təkrar istifadə edilə bilən modula çeviririk.</div>

---

<!-- Slide 4.5a: Niyə modul + plan -->
## 4.5 — Modul Yaratmaq: Təkrarı Dayandırırıq

Fəsil 2-dən xatırla: **modul = funksiya** — input (variables) → resurslar → output. Kodumuzda artıq təkrar var: iki dəfə `aws_vpc` resource bloku yazmışıq. Bu gün **dev-vpc**-ni modula çeviririk:

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<p><strong>Niyə məhz dev, prd yox?</strong></p>
<ul>
<li>prd-vpc-yə kodda <strong>çoxlu istinad</strong> var (6 subnet, IGW, route table-lar) — hamısını dəyişmək lazım gələrdi</li>
<li>dev-vpc-yə yalnız <strong>bir</strong> istinad var (dev-web-sg) — kiçik, təhlükəsiz başlanğıc</li>
</ul>
<div class="r">✅ Prod-da da belə edilir: refaktorinqə <b>ən az asılılığı olan</b> hissədən başla.</div>
</div>
<div style="flex:1; min-width:0;">
<p>Yaradacağımız struktur:</p>
<div style="background:#1E293B; border-radius:10px; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.54em; color:#E2E8F0; line-height:1.75;">
modules/<br />
└── vpc/<br />
&nbsp;&nbsp;&nbsp;&nbsp;├── main.tf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#64748B;"># resurs bloku</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;├── variables.tf&nbsp;<span style="color:#64748B;"># giriş: cidr, ad</span><br />
&nbsp;&nbsp;&nbsp;&nbsp;└── outputs.tf&nbsp;&nbsp;&nbsp;<span style="color:#64748B;"># çıxış: vpc_id</span>
</div>
<div style="font-size:0.62em; color:#334155; margin-top:4px;">Üçünü bir faylda da yazmaq olar — amma ayırmaq oxunaqlılıq üçün standart praktikadır.</div>
</div>
</div>

<div class="t">🖥️ <b>Sən də et:</b> <code>modules/</code> altında <code>vpc</code> qovluğu yarat, içində üç boş fayl: <code>main.tf</code>, <code>variables.tf</code>, <code>outputs.tf</code>. (Scaffold-dan qalma example-module qovluğunu silə bilərsən.)</div>

---


## 4.5 — Yazmazdan Əvvəl: Modul Necə İşləyir?

Modul — **funksiya** kimidir. Məlumatın tam yolunu bir dəfə görək, sonra hissə-hissə özümüz yazaq:

<div style="display:flex; gap:8px; align-items:stretch; margin:8px 0 4px 0;">
<div style="flex:1; min-width:0; background:white; border:2px solid #3B82F6; border-radius:10px; padding:8px 10px;">
<div style="font-size:0.6em; font-weight:800; color:#1D4ED8; text-align:center;">1 · ÇAĞIRAN — kök main.tf</div>
<div style="background:#1E293B; border-radius:8px; padding:7px 10px; margin-top:5px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.46em; color:#E2E8F0; line-height:1.7;">
module "vpc" {<br />
&nbsp;&nbsp;source = "./modules/vpc"<br /><br />
&nbsp;&nbsp;<span style="color:#FBBF24;">vpc_cidr_block = "10.2.0.0/16"</span><br />
&nbsp;&nbsp;<span style="color:#FBBF24;">vpc_name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "dev-vpc"</span><br />
}
</div>
<div style="font-size:0.5em; color:#334155; margin-top:4px; text-align:center;"><em>funksiyanı çağırır, sarı sətirlər = <b>arqumentlər</b></em></div>
</div>
<div style="display:flex; align-items:center; font-size:1.2em; color:#848688;">→</div>
<div style="flex:1.25; min-width:0; background:white; border:2px solid #00A859; border-radius:10px; padding:8px 10px;">
<div style="font-size:0.6em; font-weight:800; color:#00703A; text-align:center;">2 · MODUL — modules/vpc/ qovluğu</div>
<div style="display:flex; flex-direction:column; gap:4px; margin-top:5px;">
<div style="background:#FFF8E1; border:1px solid #FDE68A; border-radius:6px; padding:4px 8px;">
<div style="font-size:0.5em; color:#B45309;"><b>variables.tf</b> — QƏBUL EDİR 📥<br /><code style="font-size:0.95em;">variable "vpc_cidr_block" {}</code> · <code style="font-size:0.95em;">variable "vpc_name" {}</code></div>
</div>
<div style="text-align:center; font-size:0.6em; color:#848688;">↓</div>
<div style="background:#F0FAF4; border:1px solid #C3E4D0; border-radius:6px; padding:4px 8px;">
<div style="font-size:0.5em; color:#00703A;"><b>main.tf</b> — İSTİFADƏ EDİR ⚙️<br /><code style="font-size:0.95em;">cidr_block = var.vpc_cidr_block</code> ← dəyər buradan gəlir!</div>
</div>
<div style="text-align:center; font-size:0.6em; color:#848688;">↓</div>
<div style="background:#F3E8FF; border:1px solid #D8B4FE; border-radius:6px; padding:4px 8px;">
<div style="font-size:0.5em; color:#7E22CE;"><b>outputs.tf</b> — QAYTARIR 📤<br /><code style="font-size:0.95em;">output "vpc_id" { value = aws_vpc.vpc.id }</code></div>
</div>
</div>
</div>
<div style="display:flex; align-items:center; font-size:1.2em; color:#848688;">→</div>
<div style="flex:1; min-width:0; background:white; border:2px solid #9333EA; border-radius:10px; padding:8px 10px;">
<div style="font-size:0.6em; font-weight:800; color:#7E22CE; text-align:center;">3 · NƏTİCƏNİN İSTİFADƏSİ</div>
<div style="background:#1E293B; border-radius:8px; padding:7px 10px; margin-top:5px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.46em; color:#E2E8F0; line-height:1.7;">
resource "aws_security_group" "dev-web-sg" {<br />
&nbsp;&nbsp;vpc_id = <span style="color:#C084FC;">module.vpc.vpc_id</span><br />
}
</div>
<div style="font-size:0.5em; color:#334155; margin-top:4px; text-align:center;"><em>modulun <b>return</b> dəyərini kənar kod belə oxuyur</em></div>
</div>
</div>

<div class="r" style="font-size:0.66em;">✅ Python ilə paralel: <code>def create_vpc(cidr, name): ... return vpc_id</code> → <code>id = create_vpc("10.2.0.0/16", "dev-vpc")</code>. Eyni məntiq: <b>arqument ötür → içəridə işlə → nəticəni qaytar</b>. Fərq: funksiya dəyər hesablayır, modul <b>infrastruktur yaradır</b>.</div>

<div class="q">❓ Bəs çağıran adi dildə nə deyir?</div>

<div class="a">💡 "Ey vpc modulu! Sənə CIDR <b>10.2.0.0/16</b> və ad <b>dev-vpc</b> verirəm — mənə bir VPC yarat və <b>ID-sini qaytar</b>." Modulun içi bu dəyərlərin dev üçün olduğunu bilmir və bilməməlidir — sabah eyni sözləri prd dəyərləri ilə deyəcəyik.</div>

---

<!-- Slide 4.5b: Modulun main.tf-i -->
## 4.5 — Qutu 2-ni Yazırıq: Modulun main.tf-i

Anatomiyadakı **2-ci qutunun ortasından** başlayırıq — resursu yaradan hissə:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div class="t">🖥️ <code>modules/vpc/main.tf</code>-də yaz: <code>resource "aws_vpc</code> → Copilot davamı gətirir, <code>cidr_block</code>-da <code>var.</code> yaz — dəyişənə yönləndir:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_vpc&quot; &quot;vpc&quot; {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}
</code></pre>
<div style="font-size:0.6em; color:#848688;">Fəsil 3-dəki "DNS hostnames: Disabled" yadındadır? Budur — modulda açırıq.</div>
<div class="ai" style="font-size:0.62em;">🤖 <code>resource "</code> yazanda Copilot əvvəlcə <b>route table</b> təklif edə bilər — 4.2-dəki steering: <code>aws_vpc</code> yazmağa davam et, təklif düzələcək. DNS parametrlərini və tags-ı isə Copilot özü təklif edir — seçərək qəbul et.</div>
</div>
<div style="flex:1;">
<div class="warn">⚠️ <b>Bu slaydın açar qaydası — adlar ÜMUMİ olmalıdır:</b> <code>vpc_cidr_block</code>, <code>vpc_name</code> — <code>dev_cidr_block</code> və ya <code>prod_vpc_name</code> YOX! Çünki bu modul sabah prd üçün, birisi gün QA üçün çağırılacaq. Modulun içi mühit adı bilməməlidir — mühiti <b>çağıran</b> deyir.</div>
<div class="q">❓ Hardcode dəyər qalsa nə olar?</div>
<div class="a">💡 Modul "funksiya" olmaqdan çıxır — hər çağırışda eyni nəticə verər. Dəyişənlik gətirən hər şey (CIDR, ad) <b>variable</b>-dan keçməlidir.</div>
</div>
</div>

---


## 4.5 — Qutu 2-nin Qapıları: variables (📥) və outputs (📤)

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">
<div class="t">🖥️ <code>modules/vpc/variables.tf</code> — <code>variable "</code> yaz, Copilot təklif edir:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">variable &quot;vpc_cidr_block&quot; {
  description = &quot;The CIDR block for the VPC&quot;
  type        = string
}

variable &quot;vpc_name&quot; {
  description = &quot;The name of the VPC&quot;
  type        = string
}
</code></pre>
<div class="warn" style="margin-top:4px;">⚠️ İki düzəliş lazım ola bilər: <b>(1)</b> Copilot <code>vpc_cidr</code> təklif edir — main.tf-də <code>var.vpc_cidr_block</code> yazmışıq, adlar <b>hərfbəhərf</b> eyni olmalıdır; <b>(2)</b> Copilot <code>default</code> sətri də təklif edir — <b>SİL:</b> modul dəyişəninə default qoymuruq, dəyəri <b>çağıran verməlidir</b>. Unudarsa, Terraform açıq xəta verər — gizli səhv dəyərdən yaxşıdır.</div>
</div>
<div style="flex:1; min-width:0;">
<div class="t">🖥️ <code>modules/vpc/outputs.tf</code> — <code>output "</code> yaz. Təklif gəlmir? Normaldır — boş faylda kontekst azdır. <b>Yazmağa davam et:</b> <code>vpc_id</code> — təklif dərhal gələcək:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">output &quot;vpc_id&quot; {
  description = &quot;The ID of the VPC&quot;
  value       = aws_vpc.vpc.id
}

output &quot;vpc_cidr_block&quot; {
  description = &quot;The CIDR block of the VPC&quot;
  value       = aws_vpc.vpc.cidr_block
}
</code></pre>
<div class="r" style="margin-top:4px;">✅ Output = modulun <b>qaytardığı dəyər</b>. Kənardan modulun içinə <b>birbaşa çıxış yoxdur</b> — yalnız output-la danışır: input → emal → <b>return</b>.</div>
<div style="font-size:0.6em; color:#848688; margin-top:3px;">Dürüst qeyd: <code>vpc_cidr_block</code> output-u əslində lazım deyil (dəyəri onsuz da özümüz veririk) — onu "bir moduldan çox output olur" nümunəsi üçün əlavə edirik.</div>
</div>
</div>

---

<!-- Slide 4.5d: Modulu çağırmaq -->
## 4.5 — Modulu Çağırmaq: resource → module

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div class="t">🖥️ Kök <code>main.tf</code>-də köhnə <code>dev-vpc</code> resursunu <b>SİL</b>, yerinə <code>module</code> yaz — Copilot modul qovluğunu tanıyıb çağırışı özü təklif edir:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">module &quot;vpc&quot; {
  source = &quot;./modules/vpc&quot;

  vpc_cidr_block = var.dev_cidr_block
  vpc_name       = var.dev_vpc_name
}
</code></pre>
<div style="font-size:0.62em; color:#334155; margin-top:2px;"><code>source</code> yolunun oxunuşu: <code>./</code> = "bu qovluqdan başla" → <code>modules</code> qovluğu → <code>vpc</code> alt-qovluğu. Modulun ünvanı budur.</div>
<div class="r" style="margin-top:5px;">✅ Körpüyə bax: sol tərəf modulun <b>ümumi</b> adı (<code>vpc_cidr_block</code>), sağ tərəf <b>bizim mühitin</b> dəyişəni (<code>var.dev_cidr_block</code>). Ümumi ↔ konkret ayrımı məhz bu sətirdə birləşir.</div>
</div>
<div style="flex:1; min-width:0;">
<p>Kök <code>variables.tf</code>-ə iki yeni dəyişən:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">variable &quot;dev_cidr_block&quot; {
  description = &quot;CIDR for the development VPC&quot;
  type        = string
  default     = &quot;10.0.0.0/16&quot;
}

variable &quot;dev_vpc_name&quot; {
  description = &quot;Name of the development VPC&quot;
  type        = string
}
</code></pre>
<div class="warn" style="margin-top:4px;">⚠️ <b>Ad uyğunsuzluğu №2:</b> Copilot burada <code>dev_vpc_cidr_block</code> təklif edir — amma modul çağırışında <code>var.dev_cidr_block</code> yazmışıq! Bu dərsdə <b>ikinci dəfədir</b> Copilot ad "uydurub" — hər dəfə öz kodunla tutuşdur. Ad tutmazsa, plan dərhal "undeclared variable" xətası ilə deyəcək.</div>
</div>
</div>

---

<!-- Slide 4.5d2: tfvars -->
## 4.5 — Dəyərlərin Təyini: terraform.tfvars

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1; min-width:0;">
<div class="t">🖥️ <code>terraform.tfvars</code>-da yaz: <code>dev_</code> — təklif gəlmir! Yeni fayl = boş kontekst. Birinci sətri özün tamamla:</div>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">dev_cidr_block = &quot;10.2.0.0/16&quot;
dev_vpc_name   = &quot;dev-vpc&quot;
</code></pre>
<div class="ai" style="margin-top:4px;">🤖 Birinci sətri yazan kimi Copilot "oyunu tutur": ikinci sətri (<code>dev_vpc_name</code>) özü təklif edir. Daha maraqlısı — ondan sonra <b><code>prod_cidr_block</code> təklif etməyə başlayır</b>: kodda iki VPC olduğunu görüb, prd-nin də modula keçəcəyini <b>qabaqcadan güman edir</b>. Kontekst zəkasının zirvəsi! (Qəbul etmirik — prd hələ resource olaraq qalır.)</div>
</div>
<div style="flex:1;">
<div class="q">❓ Həm default (10.0.0.0/16), həm tfvars (10.2.0.0/16) var — hansı qalib gəlir?</div>
<div class="a">💡 <b>tfvars qalib gəlir</b> — default yalnız heç nə verilməyəndə işləyir. Prioritet: default &lt; terraform.tfvars &lt; CLI <code>-var</code>. Dəyəri dəyişmək üçün variables.tf-ə toxunmuruq — tfvars kifayətdir. (Default-u qəsdən saxladıq ki, bu üstələməni öz gözünlə görəsən.)</div>
<div class="r">✅ Tam zəncir: <b>tfvars dəyəri</b> (10.2.0.0/16) → kök dəyişən (<code>dev_cidr_block</code>) → modul input-u (<code>vpc_cidr_block</code>) → resurs arqumenti (<code>cidr_block</code>). Dörd addımlıq ötürmə — "funksiya çağırışı" tamamlandı.</div>
</div>
</div>

---


## 4.5 — İcra: init → Xəta → Düzəliş → Replace

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.05; min-width:0;">
<div style="background:#1E293B; border-radius:10px; padding:9px 13px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.7;">
$ terraform init&nbsp;&nbsp;<span style="color:#64748B;"># YENİ MODUL = MÜTLƏQ init!</span><br />
<span style="color:#4ADE80;">- vpc in modules/vpc</span><br /><br />
$ terraform plan<br />
<span style="color:#F87171; font-weight:700;">Error: Reference to undeclared resource</span><br />
&nbsp;&nbsp;on main.tf: resource "aws_security_group" "dev-web-sg":<br />
&nbsp;&nbsp;&nbsp;&nbsp;vpc_id = aws_vpc.<span style="color:#F87171;">dev</span>.id&nbsp;&nbsp;<span style="color:#64748B;"># bu resurs artıq yoxdur!</span>
</div>
<p>Düzəliş — SG artıq modulun output-una baxmalıdır:</p>
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;aws_security_group&quot; &quot;dev-web-sg&quot; {
  vpc_id = module.vpc.vpc_id
  # əvvəl: aws_vpc.dev-vpc.id
}
</code></pre>
</div>
<div style="flex:1;">
<div style="background:#1E293B; border-radius:10px; padding:9px 13px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.7;">
$ terraform plan<br />
<span style="color:#FBBF24; font-weight:700;">Plan: 2 to add, 0 to change, 2 to destroy.</span><br /><br />
$ terraform apply&nbsp;&nbsp;<span style="color:#FBBF24;">yes</span><br />
<span style="color:#94A3B8;">aws_security_group.dev-web-sg: Destroying...</span><br />
<span style="color:#94A3B8;">aws_vpc.dev-vpc: Destroying...</span><br />
<span style="color:#4ADE80;">module.vpc.aws_vpc.vpc: Creation complete</span><br />
<span style="color:#4ADE80;">aws_security_group.dev-web-sg: Creation complete</span>
</div>
<div class="q">❓ Niyə "2 destroy + 2 add", sadə "change" yox?</div>
<div class="a">💡 İki səbəb: <b>(1)</b> resursun state ünvanı dəyişdi (<code>aws_vpc.dev-vpc</code> → <code>module.vpc.aws_vpc.vpc</code>) — Terraform üçün bu, "köhnəni sil, yenini yarat" deməkdir; <b>(2)</b> CIDR də dəyişdi (10.1 → 10.2). SG də VPC-yə bağlı olduğu üçün onunla birlikdə yenidən yaranır.</div>
<div class="warn">⚠️ Prod dərsi: resursu modula köçürmək <b>replace</b> deməkdir — canlı sistemdə bu, kəsinti riski! (Dərinlik: <code>terraform state mv</code> bunu itkisiz edir — kursdan sonrakı mövzu.)</div>
</div>
</div>

---

## Mini Yoxlama — Fəsil 4.5 · Fəsil 4 Tamamlandı! 🎉

<div style="margin:6px 0;">
<div class="q"><span class="qnum">1</span> Modulun dəyişən adları niyə <code>vpc_cidr_block</code>-dur, <code>dev_cidr_block</code> yox?</div>
<div class="a">💡 Modul <b>mühit bilməməlidir</b> — ümumi adlarla onu dev, prd, QA üçün təkrar çağırmaq olur. Mühiti çağıran tərəf deyir: <code>vpc_cidr_block = var.dev_cidr_block</code>.</div>
<div class="q"><span class="qnum">2</span> Modul əlavə etdin, plan işlətdin — "Module not installed" xətası. Nə unutmusan?</div>
<div class="a">💡 <code>terraform init</code> — hər yeni modul qeydiyyata alınmalıdır. Qayda: yeni provider VƏ YA yeni modul = init.</div>
<div class="q"><span class="qnum">3</span> Kənar kod modulun içindəki VPC-nin ID-sinə necə çatır?</div>
<div class="a">💡 Yalnız <b>output</b> vasitəsilə: <code>module.vpc.vpc_id</code>. İçəri birbaşa çıxış yoxdur — output modulun "return"üdür.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> default = "10.0.0.0/16", tfvars-da "10.2.0.0/16" — VPC hansı CIDR ilə yaranacaq?</div>
<div class="a">💡 <b>10.2.0.0/16</b> — tfvars default-u üstələyir. Prioritet zənciri: default &lt; terraform.tfvars &lt; CLI -var.</div>
</div>

<div style="background:#0F172A; border-radius:12px; padding:12px 20px; margin:8px 0; text-align:center;">
<div style="font-size:0.8em; color:#00A859; font-weight:700;">🏁 Fəsil 4 yekunu — Copilot ilə keçdiyin yol:</div>
<div style="font-size:0.64em; color:#E2E8F0; margin-top:6px; line-height:1.8;">Agent ilə scaffold → şərhlə 16 resursluq şəbəkə → alternativ təkliflər → /fix /explain /doc → <b>təkrar istifadə edilən modul</b>.<br />Və hər addımda: <b>Copilot sürətləndirdi, sən yoxladın.</b> İş bitdi? <code>terraform destroy</code> 🧹</div>
</div>

<div class="bonus">🚀 <b>Sərbəst iş (istəyənlər üçün):</b> prd-vpc-ni də modula çevir — <code>module "prod_vpc"</code> çağırışı yaz və bütün istinadları (<code>aws_vpc.prd.id</code> → <code>module.prod_vpc.vpc_id</code>) dəyiş: 6 subnet + IGW + 2 route table. Apply etmə — yalnız <code>terraform plan</code>-da neçə resursun replace olacağını izlə və səbəbini izah et. Dərsdə etmədiyimizin səbəbini öz gözünlə görəcəksən.</div>

<div class="t">➡️ Növbəti: <b>Fəsil 5 — Copilot Chat</b> — sual-cavab, thread-lər, agent-lər, /əmrlər, kontekst idarəsi.</div>
