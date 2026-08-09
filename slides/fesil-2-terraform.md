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

<!-- Slide 18: Fəsil 2 — bölmə başlığı --><div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; text-align:center;">
<p><svg width="110" height="110" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg></p>
  <div style="font-size:0.7em; color:#7B42BC; font-weight:700; letter-spacing:2px; text-transform:uppercase; margin-top:18px;">Fəsil 2</div>
  <div style="font-size:1.5em; font-weight:700; color:#0F172A; margin-top:6px;">HashiCorp Terraform-a Giriş</div>
  <div style="background:#0F172A; border-radius:10px; padding:12px 26px; margin-top:20px;">
    <div style="font-size:0.72em; color:#E2E8F0; line-height:1.9;">
      Infrastructure as Code nədir? &nbsp;·&nbsp; IaC-ın faydaları &nbsp;·&nbsp; Terraform vs digər alətlər<br />
      Əsas komponentlər &nbsp;·&nbsp; İş axını: <span style="color:#00A859; font-weight:700;">init → plan → apply → destroy</span>
    </div>
  </div>
</div>

---

<!-- Slide 19: Terraform nədir -->
## Terraform Nədir?

<div style="display:flex; gap:16px; align-items:flex-start; margin:6px 0;">
<div style="flex-shrink:0; background:#0F172A; border-radius:12px; padding:18px 16px; text-align:center; width:150px;">
  <svg width="80" height="80" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
  <div style="font-size:0.6em; color:#C084FC; font-weight:700; margin-top:8px;">HashiCorp Terraform</div>
  <div style="font-size:0.5em; color:#94A3B8; margin-top:5px; line-height:1.4;">Digər HashiCorp alətləri: Vault · Consul · Nomad · Packer · Vagrant</div>
</div>
<div style="flex:1; min-width:0;">
<p>Dünyada ən populyar <strong>Infrastructure as Code (IaC)</strong> alətidir — infrastrukturun <strong>yaradılmasını, idarə olunmasını və versiyalanmasını</strong> avtomatlaşdırır.</p>
<ul>
<li>Bu gün konsola daxil olub <strong>siçanla klikləyərək</strong> VM, konteyner, şəbəkə yaradırsan</li>
<li>Terraform ilə həmin infrastrukturu <strong>kod şəklində yazırsan</strong> (HCL dili) və kodu tətbiq edirsən</li>
<li>Konfiqurasiya <strong>HCL</strong> (HashiCorp Configuration Language) ilə yazılır — insan üçün oxunaqlı</li>
</ul>
<div class="r">✅ <b>Platform-aqnostikdir:</b> public cloud (AWS, Azure, GCP), on-prem data mərkəzi (<b>VMware/ESXi</b>), DNS qeydləri, SaaS xidmətləri — hamısı <b>eyni iş axını</b> ilə.</div>
</div>
</div>

---

<!-- Slide: Konsol vs Kod -->
## Konsolda Kliklə vs Kodla — Nə Dəyişir?

**Terraform-suz:** hər platformanın öz konsolu, öz sehrbazı, öz addımları — hamısı əl ilə, hər dəfə yenidən:

<div style="display:flex; gap:8px; width:100%; margin:8px 0 4px 0;">
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:8px 10px; flex:1; text-align:center;">
    <div style="font-size:1.1em;">☁️</div>
    <div style="font-weight:700; font-size:0.6em; color:#FBBF24; margin-top:2px;">AWS Console</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px;">EC2 → "Launch" → 🖱️ klik-klik-klik → VM</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:8px 10px; flex:1; text-align:center;">
    <div style="font-size:1.1em;">🖥️</div>
    <div style="font-weight:700; font-size:0.6em; color:#FBBF24; margin-top:2px;">VMware vSphere</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px;">"New VM" sehrbazı → CPU/RAM seç → 🖱️ → VM</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:8px 10px; flex:1; text-align:center;">
    <div style="font-size:1.1em;">🌀</div>
    <div style="font-weight:700; font-size:0.6em; color:#FBBF24; margin-top:2px;">Azure Portal</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px;">"Create resource" → formalar → 🖱️ → VM</div>
  </div>
</div>

<div style="text-align:center; font-size:0.7em; color:#00A859; font-weight:700; margin:2px 0;">⬇ kodlaşdır (codify) ⬇</div>

<div style="display:flex; gap:12px; align-items:center; margin:4px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl">resource &quot;vm&quot; &quot;app&quot; {
  cpu    = 2
  memory = 4096
  subnet = var.subnet
}
</code></pre>
</div>
<div style="flex:1;">
  <div style="font-size:0.68em; line-height:1.6;"><b>Terraform ilə:</b> infrastrukturu bir dəfə kodda təsvir edirsən — tətbiq yükləri, şəbəkə, subnet, NAT gateway… hamısı kodda. Sonra <b>eyni iş axını</b> ilə istənilən platformaya deploy edirsən.</div>
  <div style="margin-top:6px;">
    <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">AWS</span>
    <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">Azure</span>
    <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">GCP</span>
    <span style="background:#F3E8FF; border:1px solid #D8B4FE; color:#7E22CE; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">VMware / ESXi</span>
  </div>
</div>
</div>

---

<!-- Slide: IaC faydaları — mozaika -->
## Infrastructure as Code — 5 Fayda Bir Baxışda

<div style="display:flex; gap:10px; width:100%; margin:10px 0 6px 0; align-items:stretch;">
  <div style="flex:1; display:flex; flex-direction:column; gap:10px;">
    <div style="background:#7C3AED; border-radius:10px; padding:12px 14px; color:white; flex:1;">
      <div style="font-size:1.5em;">☁️</div>
      <div style="font-weight:800; font-size:0.7em; text-transform:uppercase; letter-spacing:0.5px; margin-top:4px; line-height:1.3;">Versiya nəzarəti və audit</div>
      <div style="font-size:0.56em; margin-top:6px; line-height:1.5; opacity:0.9;">Dəyişikliklər versiya nəzarətində izlənir — aydın tarixçə və geri qayıtma imkanı</div>
    </div>
    <div style="background:#2563EB; border-radius:10px; padding:12px 14px; color:white; flex:1;">
      <div style="font-size:1.5em;">🚚</div>
      <div style="font-weight:800; font-size:0.7em; text-transform:uppercase; letter-spacing:0.5px; margin-top:4px; line-height:1.3;">Avtomatlaşdırma və səmərəlilik</div>
      <div style="font-size:0.56em; margin-top:6px; line-height:1.5; opacity:0.9;">Əl işi azalır, deploy müddəti sürətlənir</div>
    </div>
  </div>
  <div style="flex:1; background:#43A047; border-radius:10px; padding:14px 14px; color:white; display:flex; flex-direction:column; justify-content:center; text-align:center;">
    <div style="font-size:2.2em;">🚀</div>
    <div style="font-weight:800; font-size:0.78em; text-transform:uppercase; letter-spacing:0.5px; margin-top:6px; line-height:1.3;">Miqyaslama və çeviklik</div>
    <div style="font-size:0.58em; margin-top:8px; line-height:1.6; opacity:0.9;">Resursları əl ilə dəyişmək əvəzinə kodu dəyişərək infrastrukturu sürətlə böyüt və ya kiçilt</div>
  </div>
  <div style="flex:1; display:flex; flex-direction:column; gap:10px;">
    <div style="background:#D32F2F; border-radius:10px; padding:12px 14px; color:white; flex:1;">
      <div style="font-size:1.5em;">👥</div>
      <div style="font-weight:800; font-size:0.7em; text-transform:uppercase; letter-spacing:0.5px; margin-top:4px; line-height:1.3;">Əməkdaşlıq</div>
      <div style="font-size:0.56em; margin-top:6px; line-height:1.5; opacity:0.9;">Komandalar infrastruktur dəyişikliklərində tətbiq kodu kimi birgə işləyir — şəffaflıq artır, silolar azalır</div>
    </div>
    <div style="background:#EA8A00; border-radius:10px; padding:12px 14px; color:white; flex:1;">
      <div style="font-size:1.5em;">📋</div>
      <div style="font-weight:800; font-size:0.7em; text-transform:uppercase; letter-spacing:0.5px; margin-top:4px; line-height:1.3;">Ardıcıllıq və təkrarlanabilirlik</div>
      <div style="font-size:0.56em; margin-top:6px; line-height:1.5; opacity:0.9;">Bütün mühitlərdə eyni nəticə — drift və insan xətası minimuma enir</div>
    </div>
  </div>
</div>

<div class="r">✅ İndi bu beş faydanın hərəsinə yaxından baxaq →</div>

---

<!-- Slide: IaC faydaları 1/2 -->
## IaC-ın Faydaları (1/2) — Nəzarət və Sürət

<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Versiya nəzarəti və audit.</b> İnfrastruktur dəyişiklikləri git-də izlənir: tam tarixçə, kim-nə vaxt-nəyi dəyişib. Prod-u sındıran dəyişiklik? — <code>git revert</code> ilə əvvəlki konfiqurasiyaya qayıdırsan.</span></div>

<div style="display:flex; gap:12px; align-items:flex-start; margin:4px 0;">
<div style="flex:1; min-width:0;">
<div style="background:#1E293B; border-radius:8px; border-left:4px solid #00A859; padding:8px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.52em; color:#E2E8F0; line-height:1.6;">
<span style="color:#64748B;">$ git log --oneline infra/</span><br />
<span style="color:#FBBF24;">f3a9c12</span> web-ferma: server sayı 3 → 5<br />
<span style="color:#FBBF24;">8d1e044</span> NAT gateway əlavə edildi<br />
<span style="color:#FBBF24;">c07d215</span> İlk VPC + subnet konfiqurasiyası
</div>
<div style="font-size:0.58em; color:#848688; margin-top:3px;">İnfrastrukturun tarixçəsi — kod tarixçəsi kimi</div>
</div>
<div style="flex:1;">
<div class="warn">⚠️ Konsolda siçan kliklərinin <b>versiya nəzarəti yoxdur</b>. Kim etdi? Niyə etdi? Necə geri qaytarmalı? — heç kim bilmir. Geri qaytarmaq üçün yenə insan konsola girib əl ilə düzəltməlidir.</div>
</div>
</div>

<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>Avtomatlaşdırma və səmərəlilik.</b> Əl ilə görülən işlər azalır, deploy sürətlənir: kodu push edirsən → infrastruktur qurulur. Kimsə konsolda klikləyənə qədər sənin mühitin artıq hazırdır.</span></div>

---

<!-- Slide: IaC faydaları 2/2 -->
## IaC-ın Faydaları (2/2) — Miqyas, Əməkdaşlıq, Ardıcıllıq

<div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>Miqyaslama və çeviklik.</b> Trafik artdı? Konsola girmirsən — dəyişəni dəyişirsən:</span></div>

<div style="display:flex; gap:10px; align-items:center; justify-content:center; margin:4px 0 8px 0;">
  <code style="font-size:0.72em;">instance_count = 3</code>
  <span style="font-size:0.8em; color:#848688;">→ apply →</span>
  <code style="font-size:0.72em;">instance_count = 5</code>
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 10px; border-radius:10px; font-size:0.62em; font-weight:700;">+2 server</span>
</div>

<div style="font-size:0.66em; color:#334155; margin:0 0 6px 26px;">Həftəsonu / gecə yük azdır? Sayı azalt → <b>xərcə qənaət</b>. Eyni asanlıqla aşağı miqyasla.</div>

<div class="step-row"><span class="step-num">4</span><span class="step-txt"><b>Əməkdaşlıq.</b> İnfrastruktur kodu tətbiq kodu kimi PR + review prosesindən keçir — komandalar birgə işləyir, şəffaflıq artır, "bunu yalnız Elşən bilir" siloları azalır.</span></div>

<div class="step-row"><span class="step-num">5</span><span class="step-txt"><b>Ardıcıllıq və təkrarlanabilirlik.</b> Eyni kod = hər dəfə <b>eyni nəticə</b>. Bütün serverlər eynidir, konfiqurasiya sürüşməsi (drift) və insan xətası minimuma enir.</span></div>

<div class="q">❓ "Snowflake server" nədir?</div>

<div class="a">💡 Əl ilə qurulmuş, heç kimin dəqiq nə olduğunu bilmədiyi unikal server — hər biri qar dənəsi kimi təkrarolunmazdır. Sıradan çıxsa, eynisini qurmaq mümkün deyil. IaC bu problemi kökündən həll edir.</div>

---

<!-- Slide: Provisioning alətləri müqayisəsi -->
## Terraform vs Digər Provisioning Alətləri

Bu alətlərin hamısı **infrastrukturu yaradır və idarə edir** — fərq: harada işləyə bilirlər:

<div style="display:flex; gap:8px; width:100%; margin:8px 0 6px 0;">
  <div style="background:#0F172A; border:1.5px solid #7B42BC; border-radius:10px; padding:10px 10px; flex:1; text-align:center;">
    <svg width="34" height="34" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
    <div style="font-weight:700; font-size:0.64em; color:#C084FC; margin-top:3px;">Terraform</div>
    <div style="font-size:0.52em; color:#A7F3D0; margin-top:4px; font-weight:600;">✅ Platform-aqnostik</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px; line-height:1.4;">İstənilən cloud, on-prem, SaaS</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:10px 10px; flex:1; text-align:center;">
    <div style="font-size:1.3em;">🟪</div>
    <div style="font-weight:700; font-size:0.64em; color:#60A5FA; margin-top:3px;">Pulumi</div>
    <div style="font-size:0.52em; color:#A7F3D0; margin-top:4px; font-weight:600;">✅ Platform-aqnostik</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px; line-height:1.4;">Terraform-a ən oxşarı — fərqi: adi proqramlaşdırma dilləri ilə yazılır</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:10px 10px; flex:1; text-align:center;">
    <div style="font-size:1.3em;">🟧</div>
    <div style="font-weight:700; font-size:0.64em; color:#FBBF24; margin-top:3px;">CloudFormation</div>
    <div style="font-size:0.52em; color:#FCA5A5; margin-top:4px; font-weight:600;">🔒 Yalnız AWS</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px; line-height:1.4;">Azure-da və ya VMware-də işlətmək mümkün deyil</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:10px 10px; flex:1; text-align:center;">
    <div style="font-size:1.3em;">🟦</div>
    <div style="font-weight:700; font-size:0.64em; color:#FBBF24; margin-top:3px;">Azure Bicep</div>
    <div style="font-size:0.52em; color:#FCA5A5; margin-top:4px; font-weight:600;">🔒 Yalnız Azure</div>
    <div style="font-size:0.5em; color:#CBD5E1; margin-top:3px; line-height:1.4;">AWS resursları üçün dəstək yoxdur — məqsəd səni öz cloud-unda saxlamaqdır</div>
  </div>
</div>

<div class="r">✅ Ortaq cəhətləri: hamısı <b>deklarativ</b> dildən istifadə edir (nə istədiyini yazırsan, necəsini alət həll edir), <b>immutable</b> infrastruktur yanaşmasına və <b>modular</b> dizayna fokuslanır.</div>

<div class="warn">⚠️ Vendor lock nəticəsi: CloudFormation/Bicep bilirsənsə — yalnız o platformada işləyirsən. Terraform bilirsənsə — <b>hər yerdə</b>: AWS, Azure, GCP, VMware, Kubernetes…</div>

---


## Bəs Ansible, Chef, Puppet? — Konfiqurasiya İdarəetməsi

Bunlar da IaC alətləridir, amma **fərqli təbəqədə** işləyirlər — serverin *özünü* yox, **içini** idarə edirlər:

- **Paket quraşdırır, faylları və servisləri idarə edir** — nginx qur, konfiqi yaz, servisi işə sal
- **İstənilən konfiqurasiyanı (desired state) qoruyur** — server həmişə təyin etdiyin vəziyyətdə qalır
- **Rutin işləri avtomatlaşdırır** — 100 serverdə eyni dəyişiklik: bir playbook, bir icra. Hər serverə tək-tək daxil olmaq yoxdur

<div class="q">❓ Sistem inzibatçısı serverdə əl ilə konfiqurasiyanı dəyişdi. Nə baş verir?</div>

<div class="a">💡 Ansible/Chef/Puppet növbəti icrada fərqi <b>görür</b> və konfiqurasiyanı <b>desired state-ə geri qaytarır</b>. Drift beləcə avtomatik aradan qalxır.</div>

<div style="display:flex; align-items:center; justify-content:center; gap:10px; margin:10px 0 6px 0;">
  <div style="background:#F3E8FF; border:1.5px solid #D8B4FE; border-radius:10px; padding:8px 14px; text-align:center;">
    <div style="font-size:0.66em; color:#7E22CE; font-weight:700;">🏗️ Terraform</div>
    <div style="font-size:0.54em; color:#581C87; margin-top:2px;">VM-i yaradır</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div style="background:#EFF6FF; border:1.5px solid #BFDBFE; border-radius:10px; padding:8px 14px; text-align:center;">
    <div style="font-size:0.66em; color:#1D4ED8; font-weight:700;">🔧 Ansible</div>
    <div style="font-size:0.54em; color:#1E3A5F; margin-top:2px;">içini qurur: nginx, PostgreSQL…</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div style="background:#F0FAF4; border:1.5px solid #C3E4D0; border-radius:10px; padding:8px 14px; text-align:center;">
    <div style="font-size:0.66em; color:#00703A; font-weight:700;">✅ Hazır tətbiq</div>
    <div style="font-size:0.54em; color:#0F172A; margin-top:2px;">işlək mühit</div>
  </div>
</div>

<div class="r">✅ Rəqib deyil, <b>tamamlayıcıdır</b> — prod layihələrində çox vaxt ikisi birgə işləyir: əvvəl Terraform, sonra Ansible.</div>

---

<!-- Slide: Alətlər müqayisəsi — bir baxışda -->
## Digər IaC Alətləri ilə Müqayisə — Bir Baxışda

<div style="display:flex; gap:20px; margin:10px 0 4px 0;">
<div style="flex:1;">
  <div style="background:#7B42BC; border:2px solid white; border-radius:8px; padding:6px 14px; text-align:center; color:white; font-weight:700; font-size:0.74em; box-shadow:0 1px 4px rgba(0,0,0,0.15);">Terraform-a oxşar</div>
  <div style="display:flex; gap:10px; justify-content:center; margin:12px 0;">
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjU2cHgiIHZpZXdCb3g9IjAgMCAyNTYgMjU2IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHByZXNlcnZlQXNwZWN0UmF0aW89InhNaWRZTWlkIj4KICAgIDx0aXRsZT5BV1MgQ2xvdWRGb3JtYXRpb248L3RpdGxlPgogICAgPGRlZnM+CiAgICAgICAgPGxpbmVhckdyYWRpZW50IHgxPSIwJSIgeTE9IjEwMCUiIHgyPSIxMDAlIiB5Mj0iMCUiIGlkPSJsaW5lYXJHcmFkaWVudC0xIj4KICAgICAgICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iI0IwMDg0RCIgb2Zmc2V0PSIwJSI+PC9zdG9wPgogICAgICAgICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjRkY0RjhCIiBvZmZzZXQ9IjEwMCUiPjwvc3RvcD4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgogICAgPGc+CiAgICAgICAgPHJlY3QgZmlsbD0idXJsKCNsaW5lYXJHcmFkaWVudC0xKSIgeD0iMCIgeT0iMCIgd2lkdGg9IjI1NiIgaGVpZ2h0PSIyNTYiPjwvcmVjdD4KICAgICAgICA8cGF0aCBkPSJNMTY5LjYsMTI3Ljg4MjI1MiBMMTg1LjYsMTI3Ljg4MjI1MiBMMTg1LjYsMTIxLjQ3MjQ0IEwxNjkuNiwxMjEuNDcyNDQgTDE2OS42LDEyNy44ODIyNTIgWiBNODkuNiwxNjYuMzQxMTI2IEwxMDUuNiwxNjYuMzQxMTI2IEwxMDUuNiwxNTkuOTMxMzE0IEw4OS42LDE1OS45MzEzMTQgTDg5LjYsMTY2LjM0MTEyNiBaIE01Ny42LDE2Ni4zNDExMjYgTDgwLDE2Ni4zNDExMjYgTDgwLDE1OS45MzEzMTQgTDU3LjYsMTU5LjkzMTMxNCBMNTcuNiwxNjYuMzQxMTI2IFogTTU3LjYsMTQ3LjExMTY4OSBMOTYsMTQ3LjExMTY4OSBMOTYsMTQwLjcwMTg3NyBMNTcuNiwxNDAuNzAxODc3IEw1Ny42LDE0Ny4xMTE2ODkgWiBNNTcuNiwxMDguNjUyODE1IEw4Ni40LDEwOC42NTI4MTUgTDg2LjQsMTAyLjI0MzAwMyBMNTcuNiwxMDIuMjQzMDAzIEw1Ny42LDEwOC42NTI4MTUgWiBNNTcuNiwxMjcuODgyMjUyIEwxNjMuMiwxMjcuODgyMjUyIEwxNjMuMiwxMjEuNDcyNDQgTDU3LjYsMTIxLjQ3MjQ0IEw1Ny42LDEyNy44ODIyNTIgWiBNMTE4LjQsMTk4LjM5MDE4OCBMNDQuOCwxOTguMzkwMTg4IEw0NC44LDg5LjQyMzM3ODYgTDExOC40LDg5LjQyMzM3ODYgTDExOC40LDExNS4wNjI2MjggTDEyNC44LDExNS4wNjI2MjggTDEyNC44LDg2LjIxODQ3MjMgQzEyNC44LDg0LjQ0OTM2NDIgMTIzLjM2NjQsODMuMDEzNTY2NCAxMjEuNiw4My4wMTM1NjY0IEw0MS42LDgzLjAxMzU2NjQgQzM5LjgzMDQsODMuMDEzNTY2NCAzOC40LDg0LjQ0OTM2NDIgMzguNCw4Ni4yMTg0NzIzIEwzOC40LDIwMS41OTUwOTQgQzM4LjQsMjAzLjM2NDIwMiAzOS44MzA0LDIwNC44IDQxLjYsMjA0LjggTDEyMS42LDIwNC44IEMxMjMuMzY2NCwyMDQuOCAxMjQuOCwyMDMuMzY0MjAyIDEyNC44LDIwMS41OTUwOTQgTDEyNC44LDEzNy40OTY5NzEgTDExOC40LDEzNy40OTY5NzEgTDExOC40LDE5OC4zOTAxODggWiBNMjE3LjYsMTE4LjI2NzUzNCBDMjE3LjYsMTM4Ljk3NzYzNyAxOTguOTUzNiwxNDYuMTgyMjY3IDE4OS4wOTQ0LDE0Ny4wOTg4NyBMMTM3LjYsMTQ3LjExMTY4OSBMMTM3LjYsMTQwLjcwMTg3NyBMMTg4LjgsMTQwLjcwMTg3NyBDMTg5LjQyNCwxNDAuNjI4MTY0IDIxMS4yLDEzOC4yNzg5NjggMjExLjIsMTE4LjI2NzUzNCBDMjExLjIsMTAwLjA0NDQzNyAxOTQuNzYxNiw5Ni4zNDU5NzYgMTkxLjQ2ODgsOTUuNzg4MzIyMiBDMTg5LjgyNzIsOTUuNTA5NDk1NCAxODguNjcyLDk0LjAyMjQxODkgMTg4LjgxMjgsOTIuMzYyMjc3NCBDMTg4LjgxNiw5Mi4zMDEzODQzIDE4OC44MjI0LDkyLjI0MzY5NiAxODguODI4OCw5Mi4xODYwMDc3IEMxODguNjUyOCw4MS44ODg2NDQyIDE4Mi4zMzkyLDc4LjY3MDkxODQgMTc5LjYwMzIsNzcuNzYwNzI1MSBDMTc0LjQ5Niw3Ni4wNjIxMjQ4IDE2OC44MDMyLDc3LjY4NzAxMjIgMTY1Ljc5Miw4MS43MjUxOTM5IEMxNjUuMDkxMiw4Mi42NzM4NDYxIDE2My45MzI4LDgzLjE1Nzc4NzIgMTYyLjc1NTIsODIuOTc4MzEyMyBDMTYxLjU5MDQsODIuODAyMDQyNiAxNjAuNjE0NCw4Mi4wMDA4MTYgMTYwLjIxNzYsODAuODg1NTA4NSBDMTU4LjIzMDQsNzUuMzE1MzgxOCAxNTUuMzQ3Miw3MS43MDY2NTczIDE1MS4zMzc2LDY3LjY5MDkxMDEgQzE0MS4zMDg4LDU3LjcyMzY1MTggMTI3LjY5Niw1NC45NzA2Mzc0IDExNC45Niw2MC4zMjkyNDA2IEMxMDguMjc4NCw2My4xNDYzNTMgMTAyLjQzODQsNjkuNTMwNTI2MSA5OC45NTA0LDc3Ljg0NzI1NzYgTDkzLjA0OTYsNzUuMzYwMjUwMiBDOTcuMTg0LDY1LjUxNzk4MzcgMTA0LjI2ODgsNTcuODgzODk3MyAxMTIuNDgsNTQuNDIyNTk4NCBDMTI3LjY5Niw0OC4wMTU5OTEgMTQzLjkwNzIsNTEuMjgxNzkwNCAxNTUuODUyOCw2My4xNDk1NTgxIEMxNTkuMjc2OCw2Ni41ODIwMTI1IDE2Mi4xMTIsNjkuOTI0NzI5NiAxNjQuMzIsNzQuMjUxMzUzIEMxNjkuMDk3Niw3MC43MTMxMzYzIDE3NS41NDI0LDY5LjY1NTUxNzQgMTgxLjYyMjQsNzEuNjc3ODEzMSBDMTg5LjQwNDgsNzQuMjY3Mzc3MyAxOTQuMzI2NCw4MS4wMjY1MjQ1IDE5NS4xMiw5MC4wMTMwODEzIEMyMDYuMDE5Miw5Mi43NjI4OTA5IDIxNy42LDEwMS40NzcwMzEgMjE3LjYsMTE4LjI2NzUzNCBMMjE3LjYsMTE4LjI2NzUzNCBaIiBmaWxsPSIjRkZGRkZGIj48L3BhdGg+CiAgICA8L2c+Cjwvc3ZnPg==" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">AWS<br />CloudFormation</div>
    </div>
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PHRpdGxlPmZpbGVfdHlwZV9iaWNlcDwvdGl0bGU+PHBhdGggZD0iTTI0LjU1NiwxOS4xMTFIMTEuMzMzbDMuMTExLTcuNzc4aDUuMTM0TDIwLjY2Nyw5SDE2TDE0LjQ0NCw2LjY2NywxNiw0LjMzM2g0LjY2N0wxOS41NzgsMkgxNC40NDRMMTEuMDIyLDYuNjY3LDEyLjQyMiw5LDMuMDg5LDIwLjY2N0E1LjM3NSw1LjM3NSwwLDAsMCwyLDIzLjc3OGE0LjcsNC43LDAsMCwwLDMuODg5LDQuNjY2UzIyLjIyMiwzMCwyNC41NTYsMzBhNS40NDUsNS40NDUsMCwwLDAsMC0xMC44ODlabS0xNy44ODksN2EyLjMzNCwyLjMzNCwwLDEsMSwwLTQuNjY3LDIuMzM0LDIuMzM0LDAsMCwxLDAsNC42NjdabTE3Ljg4OSwxLjU1NmEzLjExMiwzLjExMiwwLDEsMSwzLjExMS0zLjExMUEzLjEyLDMuMTIsMCwwLDEsMjQuNTU2LDI3LjY2N1oiIHN0eWxlPSJmaWxsOiMzMmIwZTciLz48L3N2Zz4=" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">Azure<br />Bicep</div>
    </div>
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjcxcHgiIHZpZXdCb3g9IjAgMCAyNTYgMjcxIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgcHJlc2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQiPgogICAgPHRpdGxlPlB1bHVtaTwvdGl0bGU+CiAgICA8Zz4KICAgICAgICA8cGF0aCBkPSJNNDMuNzA1NDcwNywxNTAuNzA2ODc3IEM1My43MTgxNzIyLDE0NC45MjU4NjggNTMuNzM0ODEyMywxMjYuMjA5OTA5IDQzLjc0MjU5MDgsMTA4LjkwMzIzNCBDMzMuNzUwMzY5Myw5MS41OTY4MTQ1IDE3LjUzMzE4MjIsODIuMjUzNTU0OSA3LjUyMDQ1NDk4LDg4LjAzNDU2NCBDLTIuNDkyMjgyNDMsOTMuODE1NTczMSAtMi41MDg5Mjc2LDExMi41MzE3ODggNy40ODMyODM2NywxMjkuODM4MjA3IEMxNy40NzU0Nzk2LDE0Ny4xNDQ4ODMgMzMuNjkyNzY5MSwxNTYuNDg3ODg2IDQzLjcwNTQ3MDcsMTUwLjcwNjg3NyBaIE00My43NjUzNzQ4LDE4Ny43NjQ1MjMgQzUzLjc1NzU5NjMsMjA1LjA3MTE5OCA1My43NDA5NTYzLDIyMy43ODcxNTcgNDMuNzI4MjU0NywyMjkuNTY4MTY2IEMzMy43MTUyOTcyLDIzNS4zNDkxNzUgMTcuNDk4MjEyNSwyMjYuMDA1OTE2IDcuNTA2MDE2NTQsMjA4LjY5OTQ5NiBDLTIuNDg2MTk3MjksMTkxLjM5MzA3NyAtMi40Njk1NTcyNCwxNzIuNjc2ODYyIDcuNTQzMTg3ODUsMTY2Ljg5NTg1MyBDMTcuNTU1OTE1LDE2MS4xMTQ4NDQgMzMuNzczMTUzMywxNzAuNDU4MTAzIDQzLjc2NTM3NDgsMTg3Ljc2NDUyMyBaIE0xMTEuOTk5MDQ4LDIyNy4yMTM3MjcgQzEyMS45OTEyNywyNDQuNTIwMTQ2IDEyMS45NzQ2MywyNjMuMjM1MzM3IDExMS45NjE5MjgsMjY5LjAxODM5NSBDMTAxLjk0OTIyNywyNzQuNzk4ODkyIDg1LjczMTgzNDgsMjY1LjQ1NDg2NCA3NS43Mzk2MTMzLDI0OC4xNDg0NDUgQzY1Ljc0NzY0NzgsMjMwLjg0MjAyNiA2NS43NjQyODc4LDIxMi4xMjYwNjcgNzUuNzc2OTg5NCwyMDYuMzQ0ODAxIEM4NS43ODk2OTEsMjAwLjU2Mzc5MiAxMDIuMDA2ODI3LDIwOS45MDcwNTIgMTExLjk5OTA0OCwyMjcuMjEzNzI3IFogTTExMS45NzY3NzYsMTQ4LjM1MzQ2MiBDMTIxLjk2ODk5OCwxNjUuNjU5ODgxIDEyMS45NTIzNTgsMTg0LjM3NjA5NyAxMTEuOTM5NjU2LDE5MC4xNTcxMDYgQzEwMS45MjY5NTUsMTk1LjkzODExNSA4NS43MDk4MTg3LDE4Ni41OTQ4NTUgNzUuNzE3NTk3MiwxNjkuMjg4NDM2IEM2NS43MjUzNzU3LDE1MS45ODE3NjEgNjUuNzQyMDE1NywxMzMuMjY1ODAyIDc1Ljc1NDcxNzMsMTI3LjQ4NDc5MyBDODUuNzY3NDE4OSwxMjEuNzAzNzgzIDEwMS45ODQ4MTEsMTMxLjA0NzA0MyAxMTEuOTc2Nzc2LDE0OC4zNTM0NjIgWiIgZmlsbD0iI0YyNkU3RSI+PC9wYXRoPgogICAgICAgIDxwYXRoIGQ9Ik0yNDguNDc3NDAzLDEyOS44ODE3MjggQzI1OC40Njg2MDEsMTEyLjU3NTMwOCAyNTguNDUzMjQxLDkzLjg1OTA5MzIgMjQ4LjQ0MDI4Myw4OC4wNzgwODQxIEMyMzguNDI3NTgyLDgyLjI5NzA3NTEgMjIyLjIxMDQ0Niw5MS42NDAzMzQ3IDIxMi4yMTgyMjQsMTA4Ljk0NzAxIEMyMDIuMjI2MDAzLDEyNi4yNTM0MjkgMjAyLjI0MjY0MywxNDQuOTY5Mzg4IDIxMi4yNTUzNDQsMTUwLjc1MDY1MyBDMjIyLjI2ODA0NiwxNTYuNTMxNjYyIDIzOC40ODU0MzgsMTQ3LjE4ODQwMyAyNDguNDc3NDAzLDEyOS44ODE3MjggWiBNMjQ4LjQ3OTQ1MSwxNjYuOTIwNjg1IEMyNTguNDkxNjQxLDE3Mi43MDE2OTQgMjU4LjUwOTU2MSwxOTEuNDE3NjUzIDI0OC41MTY4MjgsMjA4LjcyNDMyOCBDMjM4LjUyNDYwNiwyMjYuMDMwNzQ4IDIyMi4zMDcyMTQsMjM1LjM3NDAwNyAyMTIuMjk0NTEzLDIyOS41OTI5OTggQzIwMi4yODE4MTEsMjIzLjgxMTk4OSAyMDIuMjY1MTcxLDIwNS4wOTU3NzQgMjEyLjI1NzM5MiwxODcuNzg5MzU1IEMyMjIuMjQ5NjE0LDE3MC40ODI5MzYgMjM4LjQ2Njc1LDE2MS4xMzk2NzYgMjQ4LjQ3OTQ1MSwxNjYuOTIwNjg1IFogTTE4MC4yNTkzNDYsMjA2LjMwNTEyMSBDMTkwLjI3MjMwNCwyMTIuMDg2MTMgMTkwLjI4ODk0NCwyMzAuODAyMDkgMTgwLjI5NjcyMiwyNDguMTA4NzY1IEMxNzAuMzA0NTAxLDI2NS40MTM5MDQgMTU0LjA4NzEwOSwyNzQuNzU3OTMxIDE0NC4wNzQ0MDcsMjY4Ljk3NzQzNCBDMTM0LjA2MTcwNiwyNjMuMTk2OTM3IDEzNC4wNDUwNjUsMjQ0LjQ4MDIxIDE0NC4wMzcyODcsMjI3LjE3Mzc5MSBDMTU0LjAyOTUwOSwyMDkuODY3MTE2IDE3MC4yNDY2NDQsMjAwLjUyMzg1NiAxODAuMjU5MzQ2LDIwNi4zMDUxMjEgWiBNMTgwLjIyMDk0NiwxMjcuNDYyMDA4IEMxOTAuMjMzNjQ3LDEzMy4yNDMwMTggMTkwLjI1MDI4NywxNTEuOTU5MjMzIDE4MC4yNTgwNjYsMTY5LjI2NTY1MiBDMTcwLjI2NTg0NCwxODYuNTcyMzI3IDE1NC4wNDg3MDksMTk1LjkxNTU4NyAxNDQuMDM1NzUxLDE5MC4xMzQ1NzggQzEzNC4wMjMwNDksMTg0LjM1MzU2OCAxMzQuMDA2NDA5LDE2NS42MzczNTMgMTQzLjk5ODYzMSwxNDguMzMwOTM0IEMxNTMuOTkwODUyLDEzMS4wMjQyNTkgMTcwLjIwNzk4OCwxMjEuNjgwOTk5IDE4MC4yMjA5NDYsMTI3LjQ2MjAwOCBaIiBmaWxsPSIjOEEzMzkxIj48L3BhdGg+CiAgICAgICAgPHBhdGggZD0iTTE2NC4xNTMzMTQsMjAuOTM0OTQ4MiBDMTY0LjE1MzMxNCwzMi40OTY5OTIgMTQ3Ljk1MjgxOSw0MS44Njk5NDc3IDEyNy45NjgzNzYsNDEuODY5OTQ3NyBDMTA3Ljk4MzkzMyw0MS44Njk5NDc3IDkxLjc4MzQzNjcsMzIuNDk2OTkyIDkxLjc4MzQzNjcsMjAuOTM0OTQ4MiBDOTEuNzgzNDM2Nyw5LjM3Mjg3ODg4IDEwNy45ODM5MzMsMCAxMjcuOTY4Mzc2LDAgQzE0Ny45NTI4MTksMCAxNjQuMTUzMzE0LDkuMzcyODc4ODggMTY0LjE1MzMxNCwyMC45MzQ5NDgyIFogTTk1LjkzMzcyMDksNjAuMjc4OTYyIEM5NS45MzM3MjA5LDcxLjg0MDk4MDIgNzkuNzMzMjI1MSw4MS4yMTM5MzU5IDU5Ljc0ODc4Miw4MS4yMTM5MzU5IEMzOS43NjQzMzksODEuMjEzOTM1OSAyMy41NjM4MTc2LDcxLjg0MDk4MDIgMjMuNTYzODE3Niw2MC4yNzg5NjIgQzIzLjU2MzgxNzYsNDguNzE2OTQzOSAzOS43NjQzMzksMzkuMzQzOTg4MiA1OS43NDg3ODIsMzkuMzQzOTg4MiBDNzkuNzMzMjI1MSwzOS4zNDM5ODgyIDk1LjkzMzcyMDksNDguNzE2OTQzOSA5NS45MzM3MjA5LDYwLjI3ODk2MiBaIE0xOTYuMjc3MDU3LDgxLjIxMzkzNTkgQzIxNi4yNjE1LDgxLjIxMzkzNTkgMjMyLjQ2MTk5Niw3MS44NDA5ODAyIDIzMi40NjE5OTYsNjAuMjc4OTYyIEMyMzIuNDYxOTk2LDQ4LjcxNjk0MzkgMjE2LjI2MTUsMzkuMzQzOTg4MiAxOTYuMjc3MDU3LDM5LjM0Mzk4ODIgQzE3Ni4yOTI2MTQsMzkuMzQzOTg4MiAxNjAuMDkyMTE4LDQ4LjcxNjk0MzkgMTYwLjA5MjExOCw2MC4yNzg5NjIgQzE2MC4wOTIxMTgsNzEuODQwOTgwMiAxNzYuMjkyNjE0LDgxLjIxMzkzNTkgMTk2LjI3NzA1Nyw4MS4yMTM5MzU5IFogTTE2NC4xNTMzMTQsOTkuNzExMjcwNSBDMTY0LjE1MzMxNCwxMTEuMjczMjg5IDE0Ny45NTI4MTksMTIwLjY0NTk4OCAxMjcuOTY4Mzc2LDEyMC42NDU5ODggQzEwNy45ODM5MzMsMTIwLjY0NTk4OCA5MS43ODM0MzY3LDExMS4yNzMyODkgOTEuNzgzNDM2Nyw5OS43MTEyNzA1IEM5MS43ODM0MzY3LDg4LjE0OTI1MjMgMTA3Ljk4MzkzMyw3OC43NzYyOTY3IDEyNy45NjgzNzYsNzguNzc2Mjk2NyBDMTQ3Ljk1MjgxOSw3OC43NzYyOTY3IDE2NC4xNTMzMTQsODguMTQ5MjUyMyAxNjQuMTUzMzE0LDk5LjcxMTI3MDUgWiIgZmlsbD0iI0Y3QkYyQSI+PC9wYXRoPgogICAgPC9nPgo8L3N2Zz4K" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">Pulumi<br />&nbsp;</div>
    </div>
  </div>
  <div style="border-top:2px solid #0F172A; margin:0 20px;"></div>
  <div style="text-align:center; font-size:0.6em; color:#334155; line-height:1.8; margin-top:8px;">
    İnfrastrukturun yaradılması və idarəetməsi<br />
    Deklarativ dil<br />
    Immutable infrastruktur<br />
    Modular dizayn
  </div>
</div>
<div style="flex:1;">
  <div style="background:#7B42BC; border:2px solid white; border-radius:8px; padding:6px 14px; text-align:center; color:white; font-weight:700; font-size:0.74em; box-shadow:0 1px 4px rgba(0,0,0,0.15);">Fərqli, amma tamamlayıcı</div>
  <div style="display:flex; gap:10px; justify-content:center; margin:12px 0;">
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxzdmcgd2lkdGg9IjI1NnB4IiBoZWlnaHQ9IjMxNXB4IiB2aWV3Qm94PSIwIDAgMjU2IDMxNSIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJ4TWlkWU1pZCI+Cgk8Zz4KCQk8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwgMjgxLjg1OTk4NSkiIGZpbGw9IiMxQTE5MTgiPgoJCQk8cGF0aCBkPSJNNjcuNTE2ODM0LDMyLjAwMzUyNDggQzY2Ljk3NTMxMDUsMzIuMDAzNTI0OCA2Ni4zOTA2NjcxLDMxLjg2NjY3MzkgNjUuOTg0NzE4NywzMS4zMTc2OTI2IEw0OC42MDExOTIxLDguNDU2NDg2MTQgTDQ4LjYwMTE5MjEsMzEuNzc1MTc3IEw0NC42MzY4ODI1LDMxLjc3NTE3NyBMNDQuNjM2ODgyNSwzLjA2MDkzMDY1IEM0NC42MzY4ODI1LDEuOTE4NDAyNzUgNDUuNTgyODAwNiwxLjAwMzgyODI5IDQ2LjY2NDY4MjIsMS4wMDM4MjgyOSBDNDcuMjk0Mzg3OSwxLjAwMzgyODI5IDQ3LjgzNTUyMjksMS4xODY0Mjc2NyA0OC4yMzk1MjksMS43MzU0MDg5OCBMNjUuNTc5MTU4NywyNC41NTEyNjEzIEw2NS41NzkxNTg3LDEuMzIzNjczIEw2OS41NDMwNzk4LDEuMzIzNjczIEw2OS41NDMwNzk4LDI5Ljk5MTc3NjUgQzY5LjU0MzA3OTgsMzEuMTgwODQxNiA2OC41OTcxNjE4LDMyLjAwMzUyNDggNjcuNTE2ODM0LDMyLjAwMzUyNDgiPjwvcGF0aD4KCQkJPHBhdGggZD0iTTEwMC4zMDYyNzcsMzIuMjc3OTc2IEM5Ni4zNDM1MjE3LDMyLjI3Nzk3NiA5Mi4xOTkzNTE3LDMxLjQ1NDUwNDEgODguMzI1OTQzNiwyOS45OTIxMzE0IEw4OS4yNzIyNTAxLDI2LjY5OTQyNjggQzkyLjgzMDIyMjgsMjcuODQyNzQzNCA5Ni43MDMyNDI1LDI4LjY2NTgyMSAxMDAuMzA2Mjc3LDI4LjY2NTgyMSBDMTA1LjMwNTg1MywyOC42NjU4MjEgMTA3LjkxNzkwNywyNi44ODI0MjA1IDEwNy45MTc5MDcsMjQuMzY4MjI4MSBDMTA3LjkxNzkwNywyMi4wODE1OTQ4IDEwNS44OTA0OTYsMjAuOTM4NjcyNSA5OC45MDk3MzcyLDE3LjY0NjM2MjIgQzkxLjkyODk3ODUsMTQuMzU0NDQ2MyA4OS4xODI1MTQxLDEyLjI1MTU5NTUgODkuMTgyNTE0MSw4LjEzNTgxMzIyIEM4OS4xODI1MTQxLDIuOTcwMTgzMSA5My4xNDUyNjk4LDAuODY1NzU0NzU4IDEwMC42MjA5MzYsMC44NjU3NTQ3NTggQzEwMy43MjkwNjMsMC44NjU3NTQ3NTggMTA4LjUwMjU1MSwxLjUwNjYyNzMzIDExMS4yNTA5NTcsMi4zMjk3MDQ5MSBMMTEwLjYyMDA4Niw1LjcxMjcyMzMyIEMxMDcuNjAxNjk1LDQuOTgxNTM3MDIgMTAzLjgxOTU3Niw0LjQ3ODY5ODU0IDEwMC43MTE0NDksNC40Nzg2OTg1NCBDOTUuNDQzMDU0Myw0LjQ3ODY5ODU0IDkzLjI4MDg0NDksNS40ODM5ODExMSA5My4yODA4NDQ5LDcuOTk5MzU2NjYgQzkzLjI4MDg0NDksMTAuNDY3ODAwNiA5NC44NTY0Njg2LDExLjUxOTYyMDQgMTAyLjI0Mjc4NywxNC45NDkxNzYgQzExMC4wMzQ2NjYsMTguNTYxMzMxIDExMi4wMTYyMzgsMjAuMzkwNDggMTEyLjAxNjIzOCwyNC4xMzkwOTE1IEMxMTIuMDE2MjM4LDI5LjU4MDc4OTggMTA2Ljg4MTA4OCwzMi4yNzc5NzYgMTAwLjMwNjI3NywzMi4yNzc5NzYiPjwvcGF0aD4KCQkJPHBhdGggZD0iTTEzMC43OTgxMzEsMS4zMjM2NzMgTDEzNC44OTY0NjEsMS4zMjM2NzMgTDEzNC44OTY0NjEsMzEuNzc0NzgyNiBMMTMwLjc5ODEzMSwzMS43NzQ3ODI2IEwxMzAuNzk4MTMxLDEuMzIzNjczIFoiPjwvcGF0aD4KCQkJPHBhdGggZD0iTTE2OS43NTc4MzQsMTcuOTY2OTE2OCBMMTU5LjU3ODA0NywxNy45NjY5MTY4IEwxNTkuNTc4MDQ3LDI4LjMwMDkzNzcgTDE2OS43NTc4MzQsMjguMzAwOTM3NyBDMTczLjIyNTI5NCwyOC4zMDA5Mzc3IDE3NS4zNDIwNTMsMjYuMTA1ODAxMyAxNzUuMzQyMDUzLDIzLjA0MTgzODggQzE3NS4zNDIwNTMsMjAuMTYxMjY0NSAxNzMuMTM1NTU4LDE3Ljk2NjkxNjggMTY5Ljc1NzgzNCwxNy45NjY5MTY4IE0xNjcuNzc1MDk3LDQuNzk4NDY0MzcgTDE1OS41NzgwNDcsNC43OTg0NjQzNyBMMTU5LjU3ODA0NywxNC41Mzc3NTU2IEwxNjcuNzc1MDk3LDE0LjUzNzc1NTYgQzE3MS4wNjM0NzMsMTQuNTM3NzU1NiAxNzMuNDUwMjE3LDEyLjQzNDExNiAxNzMuNDUwMjE3LDkuNTA4MTg3NjEgQzE3My40NTAyMTcsNi42Mjc2MTMyOSAxNzEuMzc4MTMyLDQuNzk4NDY0MzcgMTY3Ljc3NTA5Nyw0Ljc5ODQ2NDM3IE0xNjkuODAyNTA4LDMxLjc3NTA1ODcgTDE1Ny41NTI1NzgsMzEuNzc1MDU4NyBDMTU2LjM4MDk2LDMxLjc3NTA1ODcgMTU1LjQ4MDEwNCwzMC44NjAwODk4IDE1NS40ODAxMDQsMjkuNzE3NTYxOSBMMTU1LjQ4MDEwNCwzLjM4MTQ0NTgxIEMxNTUuNDgwMTA0LDIuMjgzNDgzMiAxNTYuMzgwOTYsMS4zMjM5NDkwNyAxNTcuNTUyNTc4LDEuMzIzOTQ5MDcgTDE2Ny42ODU3NDksMS4zMjM5NDkwNyBDMTczLjkwMDgzOSwxLjMyMzk0OTA3IDE3Ny41OTM2MSw0LjM4NzEyMjc3IDE3Ny41OTM2MSw5LjE4ODM0MjkgQzE3Ny41OTM2MSwxMS43OTQwMzIyIDE3Ni4wNjIyNzEsMTQuMjE3NTE2NSAxNzMuNzE5ODEzLDE1LjYzNDkyOTQgQzE3Ny4xODkyMTUsMTYuNjg2NzQ5MiAxNzkuNTI5NzMxLDE5LjU2NjkyOTEgMTc5LjUyOTczMSwyMy4wNDE4Mzg4IEMxNzkuNTI5NzMxLDI3Ljg4ODQxMyAxNzUuNTIyMzAyLDMxLjc3NTA1ODcgMTY5LjgwMjUwOCwzMS43NzUwNTg3Ij48L3BhdGg+CgkJCTxwYXRoIGQ9Ik0xOTkuMjEyMjQ2LDMxLjc3NTA5ODEgQzE5OC4wODgwMjIsMzEuNzc1MDk4MSAxOTcuMTg2Nzc4LDMwLjgxNDc3NTIgMTk3LjE4Njc3OCwyOS43MTc2MDEzIEwxOTcuMTg2Nzc4LDEuMzIzOTg4NTEgTDIwMS4yODQzMzEsMS4zMjM5ODg1MSBMMjAxLjI4NDMzMSwyOC4wNzE4NDA2IEwyMTcuNTg4MzA3LDI4LjA3MTg0MDYgTDIxNy41ODgzMDcsMzEuNzc1MDk4MSBMMTk5LjIxMjI0NiwzMS43NzUwOTgxIFoiPjwvcGF0aD4KCQkJPHBhdGggZD0iTTI0NS41MjYxODEsMzIuMjc3OTc2IEMyMzcuMTQ4ODgzLDMyLjI3Nzk3NiAyMzIuMTA0NjM0LDI5LjE2OTA1MzkgMjMyLjEwNDYzNCwyMi45MDUwNjY3IEMyMzIuMTA0NjM0LDE5LjkzMjk5NTUgMjMzLjc3MTU0NywxNy4wOTgxNjk3IDIzNy4wMTQ0NzMsMTUuNzcyMjUzNiBDMjM0LjQwMjAzLDE0LjEyNjA5ODUgMjMzLjA1MTMyOSwxMS43OTQxMTExIDIzMy4wNTEzMjksOS4yMzM3NzU4MyBDMjMzLjA1MTMyOSwzLjU2NDUxODQ2IDIzNy40MjExOTgsMC44NjU3NTQ3NTggMjQ1LjYxNzA4MywwLjg2NTc1NDc1OCBDMjQ4LjM2NDcxMywwLjg2NTc1NDc1OCAyNTIuMjM3MzQ0LDEuMTg2Mzg4MjQgMjU1LjQ4MDY1OCwxLjkxODM2MzMxIEwyNTUuMDI5NjQ3LDUuMzAxMzgxNzMgQzI1MS42MDc2MzgsNC43NTI0MDA0MiAyNDguNDA4NjA5LDQuNDMzMzQ0NDggMjQ1LjMwMTI1OSw0LjQzMzM0NDQ4IEMyMzkuOTg2NjM3LDQuNDMzMzQ0NDggMjM3LjE0ODg4Myw1Ljg5NTcxNzA5IDIzNy4xNDg4ODMsOS40MTY3Njk2IEMyMzcuMTQ4ODgzLDEyLjIwNjI0MTQgMjM5Ljc2MTcxNCwxNC40MDA1ODkxIDI0My4yMzAzMzksMTQuNDAwNTg5MSBMMjUwLjI1NTM4MywxNC40MDA1ODkxIEMyNTEuMjQ2MzY0LDE0LjQwMDU4OTEgMjUyLjAxMTY0NCwxNS4xNzc5MTgyIDI1Mi4wMTE2NDQsMTYuMTM3ODQ2OCBDMjUyLjAxMTY0NCwxNy4xNDM1MjM3IDI1MS4yNDYzNjQsMTcuOTIwODUyOSAyNTAuMjU1MzgzLDE3LjkyMDg1MjkgTDI0Mi42OTAzNywxNy45MjA4NTI5IEMyMzguNzI1NjcyLDE3LjkyMDg1MjkgMjM2LjIwNDkwNywxOS44ODY0NTgzIDIzNi4yMDQ5MDcsMjIuOTA1MDY2NyBDMjM2LjIwNDkwNywyNy4zMzk5MDQ5IDI0MC4zMDMyMzgsMjguNjY1ODIxIDI0NS40MzcyMjIsMjguNjY1ODIxIEMyNDguMjI5OTE0LDI4LjY2NTgyMSAyNTIuMDExNjQ0LDI4LjMwMTAxNjYgMjU1LjA3MzkzMywyNy41NjkwNDE1IEwyNTUuNjYwOTA3LDMwLjkwNjMxMTUgQzI1Mi43MzI2NCwzMS43Mjk3ODM1IDI0OC45MDM5MDUsMzIuMjc3OTc2IDI0NS41MjYxODEsMzIuMjc3OTc2Ij48L3BhdGg+CgkJCTxwYXRoIGQ9Ik0xNC4xMzc5OTgyLDcuMDM0Njk1NTUgTDIxLjMxNTcwOTksMjUuMDE4OTYwMyBMMTAuNDc1MTM5MywxNi4zNDk2MzA1IEwxNC4xMzc5OTgyLDcuMDM0Njk1NTUgWiBNMjYuODg5NDM5OCwyOS4xNjIzNDk0IEwxNS44NDk1ODU0LDIuMTg3NzI2OTggQzE1LjUzNDUzODQsMS40MTAzOTc4NSAxNC45MDM2Njc0LDAuOTk4NjYxODcgMTQuMTM3OTk4MiwwLjk5ODY2MTg3IEMxMy4zNzIzMjksMC45OTg2NjE4NyAxMi42OTY3ODQyLDEuNDEwMzk3ODUgMTIuMzgxNzM3MiwyLjE4NzcyNjk4IEwwLjI2Mzg4NTg4OCwzMS43NzUxMzc1IEw0LjQwODQ0NDMxLDMxLjc3NTEzNzUgTDkuMjA2MDE2MzksMTkuNTc2ODY3NiBMMjMuNTIwMjYyMiwzMS4zMTc2NTMxIEMyNC4wOTU5NzA5LDMxLjc4OTcyOTcgMjQuNTExMjQyNSwzMi4wMDM0ODU0IDI1LjA1MjM3NzUsMzIuMDAzNDg1NCBDMjYuMTMyNzA1MywzMi4wMDM0ODU0IDI3LjA3ODYyMzQsMzEuMTgwODAyMiAyNy4wNzg2MjM0LDI5Ljk5MjEzMTQgQzI3LjA3ODYyMzQsMjkuNzk5Mjc4MSAyNy4wMTA2NDE2LDI5LjQ5MjQ0OCAyNi44ODk0Mzk4LDI5LjE2MjM0OTQgTDI2Ljg4OTQzOTgsMjkuMTYyMzQ5NCBaIj48L3BhdGg+CgkJPC9nPgoJCTxnPgoJCQk8cGF0aCBkPSJNMjU1Ljg3ODU2NiwxMjcuODY4MDI4IEMyNTUuODc4NTY2LDE5OC4zMjMxNzEgMTk4Ljc2ODQ5NCwyNTUuNDMyNzQgMTI4LjMxMjM0NywyNTUuNDMyNzQgQzU3Ljg2MjIyNjUsMjU1LjQzMjc0IDAuNzQ2MTI3MzI1LDE5OC4zMjMxNzEgMC43NDYxMjczMjUsMTI3Ljg2ODAyOCBDMC43NDYxMjczMjUsNTcuNDE3OTA3NyA1Ny44NjIyMjY1LDAuMzAxODA4NTQ0IDEyOC4zMTIzNDcsMC4zMDE4MDg1NDQgQzE5OC43Njg0OTQsMC4zMDE4MDg1NDQgMjU1Ljg3ODU2Niw1Ny40MTc5MDc3IDI1NS44Nzg1NjYsMTI3Ljg2ODAyOCIgZmlsbD0iIzFBMTkxOCI+PC9wYXRoPgoJCQk8cGF0aCBkPSJNMTMwLjQ1OTg2Myw3OC4yMjg4ODUgTDE2My40NzE0NiwxNTkuNzA1MTM4IEwxMTMuNjA4MDA3LDEyMC40MjczMzUgTDEzMC40NTk4NjMsNzguMjI4ODg1IFogTTE4OS4xMDQzNDIsMTc4LjQ3NDEyMyBMMTM4LjMyNTc3LDU2LjI3MjA0OTggQzEzNi44NzYyNDYsNTIuNzQ3Njg1NCAxMzMuOTc3Njk4LDUwLjg4Mjc5MDkgMTMwLjQ1OTg2Myw1MC44ODI3OTA5IEMxMjYuOTM1NDk5LDUwLjg4Mjc5MDkgMTIzLjgyNjAwMiw1Mi43NDc2ODU0IDEyMi4zNzY0NzcsNTYuMjcyMDQ5OCBMNjYuNjQzNjA0NSwxOTAuMzEyNDExIEw4NS43MDg5MjQsMTkwLjMxMjQxMSBMMTA3Ljc3MTIzNCwxMzUuMDQ3MTQzIEwxNzMuNjEwMDk3LDE4OC4yMzcwNyBDMTc2LjI1ODAxNiwxOTAuMzc4MjA4IDE3OC4xNjg2MTcsMTkxLjM0NjU2NiAxODAuNjUyMjk3LDE5MS4zNDY1NjYgQzE4NS42MjYxODYsMTkxLjM0NjU2NiAxODkuOTczNzU2LDE4Ny42MTc3ODIgMTg5Ljk3Mzc1NiwxODIuMjM1NTU1IEMxODkuOTczNzU2LDE4MS4zNTk2MTIgMTg5LjY2NDM2MywxNzkuOTY5MzU0IDE4OS4xMDQzNDIsMTc4LjQ3NDEyMyBMMTg5LjEwNDM0MiwxNzguNDc0MTIzIFoiIGZpbGw9IiNGRkZGRkYiPjwvcGF0aD4KCQk8L2c+Cgk8L2c+Cjwvc3ZnPgo=" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">Ansible<br />&nbsp;</div>
    </div>
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIiA/Pgo8c3ZnIHdpZHRoPSIyNTZweCIgaGVpZ2h0PSIyNzRweCIgdmlld0JveD0iMCAwIDI1NiAyNzQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgcHJlc2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQiPgogICAgPGc+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC4wMDAwMDAsIDIwOC4yMTMzMzMpIiBmaWxsPSIjNDM1MzYzIj4KICAgICAgICAgICAgPHBhdGggZD0iTTAsMzQuMDQ0NTg2NyBMMCwzMy44NzM5MiBDMCwxNi44NDQ4IDEyLjgzNDEzMzMsMi44OTc5MiAzMS4yMzIsMi44OTc5MiBDNDIuNTMwMTMzMywyLjg5NzkyIDQ5LjI4ODUzMzMsNi42NjYyNCA1NC44NDg4NTMzLDEyLjEzNzgxMzMgTDQ2LjQ2MjI5MzMsMjEuODA3Nzg2NyBDNDEuODQwNjQsMTcuNjE2MjEzMyAzNy4xMzM2NTMzLDE1LjA0OTM4NjcgMzEuMTQzMjUzMywxNS4wNDkzODY3IEMyMS4wNDY2MTMzLDE1LjA0OTM4NjcgMTMuNzcyOCwyMy40MzU5NDY3IDEzLjc3MjgsMzMuNzA2NjY2NyBMMTMuNzcyOCwzMy44NzczMzMzIEMxMy43NzI4LDQ0LjE0ODA1MzMgMjAuODc1OTQ2Nyw1Mi43MDUyOCAzMS4xNDMyNTMzLDUyLjcwNTI4IEMzNy45OTA0LDUyLjcwNTI4IDQyLjE4MTk3MzMsNDkuOTY0MzczMyA0Ni44ODg5Niw0NS42ODc0NjY3IEw1NS4yNzU1Miw1NC4xNTkzNiBDNDkuMTE3ODY2Nyw2MC43NDM2OCA0Mi4yNzQxMzMzLDY0Ljg1MzMzMzMgMzAuNzIsNjQuODUzMzMzMyBDMTMuMDkzNTQ2Nyw2NC44NTMzMzMzIDAsNTEuMjQ3Nzg2NyAwLDM0LjA0NDU4NjciPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTcyLjUyOTkyLDMuOTI1MzMzMzMgTDg1LjcwNTM4NjcsMy45MjUzMzMzMyBMODUuNzA1Mzg2NywyNy42Mjc1MiBMMTEwLjAwODMyLDI3LjYyNzUyIEwxMTAuMDA4MzIsMy45MjUzMzMzMyBMMTIzLjE5MDYxMywzLjkyNTMzMzMzIEwxMjMuMTkwNjEzLDYzLjgyNTkyIEwxMTAuMDA4MzIsNjMuODI1OTIgTDExMC4wMDgzMiwzOS43Nzg5ODY3IEw4NS43MDUzODY3LDM5Ljc3ODk4NjcgTDg1LjcwNTM4NjcsNjMuODI1OTIgTDcyLjUyOTkyLDYzLjgyNTkyIEw3Mi41Mjk5MiwzLjkyNTMzMzMzIFoiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTE0NC4zOTA4MjcsMy45NDI0IEwxOTAuMjk2NzQ3LDMuOTQyNCBMMTkwLjI5Njc0NywxNS44NTE1MiBMMTU3LjY5MjU4NywxNS44NTE1MiBMMTU3LjY5MjU4NywyOC4xOTQxMzMzIEwxODYuMzgxNjUzLDI4LjE5NDEzMzMgTDE4Ni4zODE2NTMsNDAuMTA2NjY2NyBMMTU3LjY5MjU4Nyw0MC4xMDY2NjY3IEwxNTcuNjkyNTg3LDUyLjg4NjE4NjcgTDE5MC43MzAyNCw1Mi44ODYxODY3IEwxOTAuNzMwMjQsNjQuNzk1MzA2NyBMMTQ0LjM5MDgyNyw2NC43OTUzMDY3IEwxNDQuMzkwODI3LDMuOTQyNCBaIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMDkuOTIsMy45MjUzMzMzMyBMMjU1LjUyNTU0NywzLjkyNTMzMzMzIEwyNTUuNTI1NTQ3LDE1LjkwNjEzMzMgTDIyMy4wOTIwNTMsMTUuOTA2MTMzMyBMMjIzLjA5MjA1MywyOC42NTQ5MzMzIEwyNTEuNjc1MzA3LDI4LjY1NDkzMzMgTDI1MS42NzUzMDcsNDAuNjM1NzMzMyBMMjIzLjA5MjA1Myw0MC42MzU3MzMzIEwyMjMuMDkyMDUzLDYzLjgyNTkyIEwyMDkuOTIsNjMuODI1OTIgTDIwOS45MiwzLjkyNTMzMzMzIFoiPjwvcGF0aD4KICAgICAgICA8L2c+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDAuOTYwMDAwLCAwLjAwMDAwMCkiPgogICAgICAgICAgICA8cGF0aCBkPSJNODguNjI3MiwxMjcuNjY4OTA3IEM2Ni43NjgyMTMzLDEyNy42Njg5MDcgNDguOTgxMzMzMywxMDkuODg1NDQgNDguOTgxMzMzMyw4OC4wMjY0NTMzIEM0OC45ODEzMzMzLDY2LjE2NDA1MzMgNjYuNzY4MjEzMyw0OC4zNzcxNzMzIDg4LjYyNzIsNDguMzc3MTczMyBDMTA2LjY3MzQ5Myw0OC4zNzcxNzMzIDEyMS45Mjc2OCw2MC40OTc5MiAxMjYuNzA5NzYsNzcuMDIxODY2NyBMMTQyLjA0OTI4LDc3LjAyMTg2NjcgQzEzNi45NDI5MzMsNTIuMjAzNTIgMTE0LjkzMzc2LDMzLjQ4NDggODguNjI3MiwzMy40ODQ4IEM1OC41NTU3MzMzLDMzLjQ4NDggMzQuMDg4OTYsNTcuOTUxNTczMyAzNC4wODg5Niw4OC4wMjY0NTMzIEMzNC4wODg5NiwxMTguMDk3OTIgNTguNTU1NzMzMywxNDIuNTY0NjkzIDg4LjYyNzIsMTQyLjU2NDY5MyBDMTE0LjkzMzc2LDE0Mi41NjQ2OTMgMTM2Ljk0MjkzMywxMjMuODQ5Mzg3IDE0Mi4wNDkyOCw5OS4wMzEwNCBMMTI2LjcwOTc2LDk5LjAzMTA0IEMxMjEuOTI3NjgsMTE1LjU1MTU3MyAxMDYuNjczNDkzLDEyNy42Njg5MDcgODguNjI3MiwxMjcuNjY4OTA3IiBmaWxsPSIjNDM1MzYzIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02MS45MDA4LDExNC43NDk0NCBDNjguNzQ3OTQ2NywxMjEuNTk2NTg3IDc4LjIwMjg4LDEyNS44MzkzNiA4OC42MjcyLDEyNS44MzkzNiBMODguNjI3MiwxMTAuMDMyMjEzIEM4Mi41NTE0NjY3LDExMC4wMzIyMTMgNzcuMDQ5MTczMywxMDcuNTY0MzczIDczLjA2NTgxMzMsMTAzLjU4NDQyNyBMNjEuOTAwOCwxMTQuNzQ5NDQgTDYxLjkwMDgsMTE0Ljc0OTQ0IFoiIGZpbGw9IiM0MzUzNjMiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTUwLjgxNDI5MzMsODguMDIzMDQgQzUwLjgxNDI5MzMsOTMuNDMzMTczMyA1MS45NjgsOTguNTgwNDggNTQuMDIyODI2NywxMDMuMjM5NjggTDY4LjQ4MTcwNjcsOTYuODgwNjQgQzY3LjI4NzA0LDk0LjE3MDQ1MzMgNjYuNjE4MDI2Nyw5MS4xNzY5NiA2Ni42MTgwMjY3LDg4LjAyMzA0IEM2Ni42MTgwMjY3LDc1Ljg2ODE2IDc2LjQ3MjMyLDY2LjAxNzI4IDg4LjYyMzc4NjcsNjYuMDE3MjggTDg4LjYyMzc4NjcsNTAuMjEwMTMzMyBDNjcuNzc1MTQ2Nyw1MC4yMTAxMzMzIDUwLjgxNDI5MzMsNjcuMTc0NCA1MC44MTQyOTMzLDg4LjAyMzA0IiBmaWxsPSIjRjM4QjAwIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0xMDIuMzM1MTQ3LDUyLjc4NzIgTDk2LjYwMDc0NjcsNjcuNTIyNTYgQzEwMS4yODM4NCw2OS4zNDg2OTMzIDEwNS4xOTIxMDcsNzIuNzE3NjUzMyAxMDcuNjc3MDEzLDc3LjAxODQ1MzMgTDEyNC43OTgyOTMsNzcuMDE4NDUzMyBDMTIxLjQxOTA5Myw2NS45MjE3MDY3IDExMy4wNjMyNTMsNTYuOTc1MzYgMTAyLjMzNTE0Nyw1Mi43ODcyIiBmaWxsPSIjNDM1MzYzIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik05Ni42MDc1NzMzLDEwOC41MjM1MiBMMTAyLjMzODU2LDEyMy4yNTg4OCBDMTEzLjA2NjY2NywxMTkuMDcwNzIgMTIxLjQyMjUwNywxMTAuMTIwOTYgMTI0LjgwNTEyLDk5LjAyNDIxMzMgTDEwNy42ODM4NCw5OS4wMjQyMTMzIEMxMDUuMTkyMTA3LDEwMy4zMjg0MjcgMTAxLjI4NzI1MywxMDYuNzAwOCA5Ni42MDc1NzMzLDEwOC41MjM1MiIgZmlsbD0iI0YzOEIwMCI+PC9wYXRoPgogICAgICAgICAgICA8cGF0aCBkPSJNMTguNjcwOTMzMywxMDkuMTc1NDY3IEMxOC40MjE3NiwxMDguMzQ5NDQgMTguMTgyODI2NywxMDcuNTE2NTg3IDE3Ljk2MDk2LDEwNi42NzY5MDcgQzE3Ljk0NzMwNjcsMTA2LjYyNTcwNyAxNy45MzM2NTMzLDEwNi41NzQ1MDcgMTcuOTIsMTA2LjUyMzMwNyBDMTcuNzE1MiwxMDUuNzQ1MDY3IDE3LjUyNzQ2NjcsMTA0Ljk2NjgyNyAxNy4zNDY1NiwxMDQuMTgxNzYgQzE3LjMwOTAxMzMsMTA0LjAyMTMzMyAxNy4yNzQ4OCwxMDMuODYwOTA3IDE3LjI0MDc0NjcsMTAzLjcwMDQ4IEMxNy4wOTA1NiwxMDMuMDI4MDUzIDE2Ljk1NDAyNjcsMTAyLjM0ODggMTYuODIwOTA2NywxMDEuNjY5NTQ3IEMxNi43NjI4OCwxMDEuMzY1NzYgMTYuNzExNjgsMTAxLjA2MTk3MyAxNi42NjA0OCwxMDAuNzU4MTg3IEMxNi41NjQ5MDY3LDEwMC4yMTU0NjcgMTYuNDY5MzMzMyw5OS42NzYxNiAxNi4zODQsOTkuMTI2NjEzMyBDMTYuMzEyMzIsOTguNjU4OTg2NyAxNi4yNTA4OCw5OC4xOTQ3NzMzIDE2LjE4OTQ0LDk3LjcyNzE0NjcgQzE1Ljc1OTM2LDk0LjUzOTA5MzMgMTUuNTI3MjUzMyw5MS4yOTk4NCAxNS41MzA2NjY3LDg4LjAxOTYyNjcgTDAuNTk3MzMzMzMzLDg4LjAxOTYyNjcgQzAuNTkzOTIsOTEuNTk2OCAwLjgxOTIsOTUuMTI5NiAxLjIzOTA0LDk4LjYxODAyNjcgTDEuMjM5MDQsOTguNjE4MDI2NyBDMS4yNDU4NjY2Nyw5OC42OTMxMiAxLjI1OTUyLDk4Ljc2ODIxMzMgMS4yNjk3Niw5OC44NDMzMDY3IEMxLjM4NTgxMzMzLDk5Ljc5MjIxMzMgMS41MTU1MiwxMDAuNzQxMTIgMS42NjIyOTMzMywxMDEuNjc5Nzg3IEMxLjcwMzI1MzMzLDEwMS45MzkyIDEuNzQ3NjI2NjcsMTAyLjE5ODYxMyAxLjc5MiwxMDIuNDYxNDQgQzEuOTIxNzA2NjcsMTAzLjIzMjg1MyAyLjA1NDgyNjY3LDEwNC4wMDQyNjcgMi4yMDUwMTMzMywxMDQuNzcyMjY3IEMyLjI4MDEwNjY3LDEwNS4xODE4NjcgMi4zNjg4NTMzMywxMDUuNTg0NjQgMi40NTQxODY2NywxMDUuOTkwODI3IEMyLjU4MDQ4LDEwNi42MDE4MTMgMi43MTAxODY2NywxMDcuMjEyOCAyLjg1MDEzMzMzLDEwNy44MjAzNzMgQzIuOTczMDEzMzMsMTA4LjM1Mjg1MyAzLjEwNjEzMzMzLDEwOC44ODUzMzMgMy4yNDI2NjY2NywxMDkuNDE3ODEzIEMzLjM2MjEzMzMzLDEwOS44OTIyNjcgMy40NzgxODY2NywxMTAuMzY2NzIgMy42MDQ0OCwxMTAuODQxMTczIEMzLjc3NTE0NjY3LDExMS40NjkyMjcgMy45NTYwNTMzMywxMTIuMDkwNDUzIDQuMTM2OTYsMTEyLjcxNTA5MyBDNC4yMTIwNTMzMywxMTIuOTc0NTA3IDQuMjgwMzIsMTEzLjI0MDc0NyA0LjM1ODgyNjY3LDExMy40OTY3NDcgTDQuMzY1NjUzMzMsMTEzLjQ5Njc0NyBDNS4zOTY0OCwxMTYuOTA2NjY3IDYuNjE4NDUzMzMsMTIwLjIzNDY2NyA4LjAzODQsMTIzLjQ1Njg1MyBMMjEuNzIyNDUzMywxMTcuNDM5MTQ3IEMyMC41NDQ4NTMzLDExNC43Njk5MiAxOS41Mjc2OCwxMTIuMDA1MTIgMTguNjcwOTMzMywxMDkuMTc1NDY3IEwxOC42NzA5MzMzLDEwOS4xNzU0NjcgWiIgZmlsbD0iIzQzNTM2MyI+PC9wYXRoPgogICAgICAgICAgICA8cGF0aCBkPSJNODguNjI3MiwxNjEuMTIyOTg3IEM2OC40NzQ4OCwxNjEuMTIyOTg3IDUwLjIwNjcyLDE1Mi45MTczMzMgMzYuOTczMjI2NywxMzkuNjgwNDI3IEwyNi4zOTUzMDY3LDE1MC4yNTgzNDcgQzQyLjMyNTMzMzMsMTY2LjE4ODM3MyA2NC4zMjA4NTMzLDE3Ni4wNTI5MDcgODguNjI3MiwxNzYuMDUyOTA3IEMxMzMuNTE1OTQ3LDE3Ni4wNTI5MDcgMTcwLjU1MDYxMywxNDIuNDUyMDUzIDE3NS45Njc1NzMsOTkuMDMxMDQgTDE2MC44OTc3MDcsOTkuMDMxMDQgQzE1NS41NzI5MDcsMTM0LjEzMDM0NyAxMjUuMTk0MjQsMTYxLjEyMjk4NyA4OC42MjcyLDE2MS4xMjI5ODciIGZpbGw9IiNGMzhCMDAiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTg4LjYyNzIsMTQuOTI5OTIgQzEwNS4wMDA5NiwxNC45Mjk5MiAxMjAuMTI1NDQsMjAuMzQwMDUzMyAxMzIuMzI0NjkzLDI5LjQ3MDcyIEwxNDEuMjcxMDQsMTcuNDc5NjggQzEyNi41ODY4OCw2LjUwMjQgMTA4LjM2NjUwNywwIDg4LjYyNzIsMCBDNTEuMjc1MDkzMywwIDE5LjM2MDQyNjcsMjMuMjY1MjggNi41ODA5MDY2Nyw1Ni4wOTgxMzMzIEwyMC41MTA3Miw2MS41MTg1MDY3IEMzMS4xNDMyNTMzLDM0LjI3NjY5MzMgNTcuNjY4MjY2NywxNC45Mjk5MiA4OC42MjcyLDE0LjkyOTkyIiBmaWxsPSIjRjM4QjAwIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0xNjAuODk3NzA3LDc3LjAyMTg2NjcgTDE3NS45Njc1NzMsNzcuMDIxODY2NyBDMTc0LjM1MzA2Nyw2NC4wNjgyNjY3IDE2OS45MjI1Niw1MS45ODg0OCAxNjMuMzA3NTIsNDEuNDEzOTczMyBMMTUwLjYxNjc0Nyw0OS4zMzI5MDY3IEMxNTUuNzk4MTg3LDU3LjYwMzQxMzMgMTU5LjM3MTk0Nyw2Ni45Nzk4NCAxNjAuODk3NzA3LDc3LjAyMTg2NjciIGZpbGw9IiM0MzUzNjMiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTE0My45MTk3ODcsNzcuMDIxODY2NyBMMTU5LjA0MDg1Myw3Ny4wMjE4NjY3IEMxNTUuMDk1MDQsNTEuNjY3NjI2NyAxMzcuNzMxNDEzLDMwLjcwMjkzMzMgMTE0LjQ2MjcyLDIxLjYyMDA1MzMgTDEwOS4wNjI4MjcsMzUuNTA1NDkzMyBDMTI2Ljc1NzU0Nyw0Mi40MTQwOCAxNDAuMTQxMjI3LDU4LjAwMjc3MzMgMTQzLjkxOTc4Nyw3Ny4wMjE4NjY3IiBmaWxsPSIjRjM4QjAwIj48L3BhdGg+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik04OC42MjcyLDMxLjY1MTg0IEw4OC42MjcyLDMxLjY1MTg0IEw4OC42MzA2MTMzLDE2Ljc2Mjg4IEw4OC42MjcyLDE2Ljc2Mjg4IEM1OC40NDMwOTMzLDE2Ljc2Mjg4IDMyLjU4NzA5MzMsMzUuNjI0OTYgMjIuMjE3Mzg2Nyw2Mi4xODQxMDY3IEwzNi4wOTI1ODY3LDY3LjU4NCBDNDQuMjk4MjQsNDYuNTc0OTMzMyA2NC43NTA5MzMzLDMxLjY1MTg0IDg4LjYyNzIsMzEuNjUxODQiIGZpbGw9IiM0MzUzNjMiPjwvcGF0aD4KICAgICAgICAgICAgPHBhdGggZD0iTTMyLjI1Niw4OC4wMjMwNCBMMzIuMjU2LDg4LjAyMzA0IEwxNy4zNjcwNCw4OC4wMjMwNCBDMTcuMzY3MDQsMTE3Ljk2ODIxMyAzNS45Mzg5ODY3LDE0My42NDY3MiA2Mi4xNjcwNCwxNTQuMTczNDQgTDY3LjY5NjY0LDE0MC4zNTI4NTMgQzQ2Ljk0Njk4NjcsMTMyLjAyNDMyIDMyLjI1NiwxMTEuNzExNTczIDMyLjI1Niw4OC4wMjMwNCIgZmlsbD0iI0YzOEIwMCI+PC9wYXRoPgogICAgICAgICAgICA8cGF0aCBkPSJNODguNjI3MiwxNDQuMzk0MjQgTDg4LjYyNzIsMTU5LjI4NjYxMyBDMTI0LjE4MDQ4LDE1OS4yODY2MTMgMTUzLjczMzEyLDEzMy4xMTMxNzMgMTU5LjA0MDg1Myw5OS4wMjQyMTMzIEwxNDMuOTE2MzczLDk5LjAyNDIxMzMgQzEzOC43ODYxMzMsMTI0Ljg2MzE0NyAxMTUuOTQ3NTIsMTQ0LjM5NDI0IDg4LjYyNzIsMTQ0LjM5NDI0IiBmaWxsPSIjNDM1MzYzIj48L3BhdGg+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">Chef<br />&nbsp;</div>
    </div>
    <div style="text-align:center; flex:1;">
      <div style="background:white; border:1px solid #E2E8F0; border-radius:12px; width:56px; height:56px; display:flex; align-items:center; justify-content:center; margin:0 auto;"><img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMzk1cHgiIHZpZXdCb3g9IjAgMCAyNTYgMzk1IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHByZXNlcnZlQXNwZWN0UmF0aW89InhNaWRZTWlkIj4KICAgIDxnPgogICAgICAgIDxwYXRoIGQ9Ik0yNTYsMjU2IEwyNTYsMTM4LjIwMzgzNSBMMTY1Ljg0NDYwMSwxMzguMjAzODM1IEwxMTcuNzk2MTY1LDg5Ljg5NzA3MzcgTDExNy43OTYxNjUsMCBMMCwwIEwwLDExNy43OTYxNjUgTDkwLjE1NTM5ODYsMTE3Ljc5NjE2NSBMMTM4LjQ2MjE1OSwxNjYuMTAyOTI2IEwxMzguNDYyMTU5LDIyOC4zNTkyMzMgTDkwLjE1NTM5ODYsMjc2LjY2NTk5NCBMMCwyNzYuNjY1OTk0IEwwLDM5NC40NjIxNTkgTDExNy43OTYxNjUsMzk0LjQ2MjE1OSBMMTE3Ljc5NjE2NSwzMDQuNTY1MDg2IEwxNjYuMTAyOTI2LDI1Ni4yNTgzMjUgTDI1NiwyNTYuMjU4MzI1IEwyNTYsMjU2IEwyNTYsMjU2IFogTTM5LjI2NTM4ODUsMzkuMjY1Mzg4NSBMNzguNTMwNzc3LDM5LjI2NTM4ODUgTDc4LjUzMDc3Nyw3OC41MzA3NzcgTDM5LjI2NTM4ODUsNzguNTMwNzc3IEwzOS4yNjUzODg1LDM5LjI2NTM4ODUgWiBNNzguNTMwNzc3LDM1NC45Mzg0NDYgTDM5LjI2NTM4ODUsMzU0LjkzODQ0NiBMMzkuMjY1Mzg4NSwzMTUuNjczMDU4IEw3OC41MzA3NzcsMzE1LjY3MzA1OCBMNzguNTMwNzc3LDM1NC45Mzg0NDYgWiIgZmlsbD0iI0ZGQUUxQSI+PC9wYXRoPgogICAgPC9nPgo8L3N2Zz4=" style="width:38px; height:38px; object-fit:contain;" /></div>
      <div style="font-size:0.56em; color:#334155; font-weight:600; margin-top:5px; line-height:1.3;">Puppet<br />&nbsp;</div>
    </div>
  </div>
  <div style="border-top:2px solid #0F172A; margin:0 20px;"></div>
  <div style="text-align:center; font-size:0.6em; color:#334155; line-height:1.8; margin-top:8px;">
    Konfiqurasiya idarəetməsi<br />
    Paketlərin quraşdırılması və faylların idarəsi<br />
    Mövcud sistemlərin konfiqurasiyası<br />
    Rutin və çoxaddımlı işlərin avtomatlaşdırılması
  </div>
</div>
</div>

<div class="r">✅ Yadda saxla: sol tərəf — serverin <b>özü</b> (Terraform-un dünyası), sağ tərəf — serverin <b>içi</b>. İkisi birlikdə tam həll verir.</div>

---

<!-- Slide 22: Kodun təkrar istifadəsi -->
## Terraform Nə Edir? — Bir Kod, Fərqli Nəticələr

Eyni resurs kodu **bir dəfə** yazılır — fərqli giriş dəyişənləri (input variables) fərqli tətbiqlər yaradır:

<div style="display:flex; gap:10px; align-items:center; margin:8px 0 4px 0;">
  <div style="flex:0.85; text-align:right;">
    <div style="font-weight:700; font-size:0.6em; color:#7C3AED; text-decoration:underline;">Giriş dəyişənləri</div>
    <div style="font-size:0.56em; color:#334155; line-height:1.7; margin-top:3px;">AMI = <b>Ubuntu</b><br />Subnet = 10.16.7.0<br />App = <b>Web Server</b></div>
  </div>
  <div style="font-size:1.2em; color:#7C3AED; font-weight:800;">➜</div>
  <div style="background:#0B1220; border-radius:10px; overflow:hidden; flex:1.6; min-width:0; border:2px solid #7C3AED;">
    <div style="background:#1E293B; padding:4px 10px; display:flex; gap:5px; align-items:center;">
      <span style="width:8px; height:8px; border-radius:50%; background:#EF4444; display:inline-block;"></span>
      <span style="width:8px; height:8px; border-radius:50%; background:#F59E0B; display:inline-block;"></span>
      <span style="width:8px; height:8px; border-radius:50%; background:#22C55E; display:inline-block;"></span>
    </div>
    <div style="padding:7px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.55;">
      <span style="color:#C084FC;">resource</span> <span style="color:#FBBF24;">"aws_instance" "basic_server"</span> {<br />
      &nbsp;&nbsp;ami&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.ami</span><br />
      &nbsp;&nbsp;instance_type&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.instance_size</span><br />
      &nbsp;&nbsp;subnet_id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.subnet</span><br />
      &nbsp;&nbsp;tags = { App = <span style="color:#7DD3FC;">var.app</span> }<br />
      }
    </div>
  </div>
  <div style="font-size:1.2em; color:#7C3AED; font-weight:800;">➜</div>
  <div style="flex:0.75; background:#7C3AED; border-radius:14px; padding:12px 10px; text-align:center; color:white;">
    <div style="font-size:1.5em;">🌐</div>
    <div style="font-size:0.62em; font-weight:700; margin-top:3px;">Web tətbiqi</div>
  </div>
</div>

<div style="display:flex; gap:10px; align-items:center; margin:6px 0 4px 0;">
  <div style="flex:0.85; text-align:right;">
    <div style="font-weight:700; font-size:0.6em; color:#2563EB; text-decoration:underline;">Giriş dəyişənləri</div>
    <div style="font-size:0.56em; color:#334155; line-height:1.7; margin-top:3px;">AMI = <b>Windows</b><br />Subnet = 10.0.3.0<br />App = <b>Data Processing</b></div>
  </div>
  <div style="font-size:1.2em; color:#2563EB; font-weight:800;">➜</div>
  <div style="background:#0B1220; border-radius:10px; overflow:hidden; flex:1.6; min-width:0; border:2px solid #2563EB;">
    <div style="background:#1E293B; padding:4px 10px; display:flex; gap:5px; align-items:center;">
      <span style="width:8px; height:8px; border-radius:50%; background:#EF4444; display:inline-block;"></span>
      <span style="width:8px; height:8px; border-radius:50%; background:#F59E0B; display:inline-block;"></span>
      <span style="width:8px; height:8px; border-radius:50%; background:#22C55E; display:inline-block;"></span>
    </div>
    <div style="padding:7px 12px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.55;">
      <span style="color:#C084FC;">resource</span> <span style="color:#FBBF24;">"aws_instance" "basic_server"</span> {<br />
      &nbsp;&nbsp;ami&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.ami</span><br />
      &nbsp;&nbsp;instance_type&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.instance_size</span><br />
      &nbsp;&nbsp;subnet_id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= <span style="color:#7DD3FC;">var.subnet</span><br />
      &nbsp;&nbsp;tags = { App = <span style="color:#7DD3FC;">var.app</span> }<br />
      }
    </div>
  </div>
  <div style="font-size:1.2em; color:#2563EB; font-weight:800;">➜</div>
  <div style="flex:0.75; background:#2563EB; border-radius:14px; padding:12px 10px; text-align:center; color:white;">
    <div style="font-size:1.5em;">📊</div>
    <div style="font-size:0.62em; font-weight:700; margin-top:3px;">Data tətbiqi</div>
  </div>
</div>

<div class="r">✅ Diqqət: <b>hər iki kod pəncərəsi eynidir!</b> Dəyişən yalnız giriş dəyərləridir. Buna <b>DRY</b> prinsipi deyilir — <em>Don't Repeat Yourself</em>: kodu bir dəfə yaz, dəyişənlərlə çoxalt.</div>

---

<!-- Slide 23: Modullar -->
## Kodun Təkrar İstifadəsi — Modullar &quot;Lego Dəsti&quot; Kimi

Layihələrdə eyni resurs qrupları təkrarlanır. Onları **modul** kimi paketlə → yeni yük üçün lazım olanları seç və yığ:

<div style="display:flex; gap:20px; align-items:stretch; margin:8px 0 6px 0;">
<div style="flex:1;">
  <div style="text-align:center; font-weight:700; font-size:0.72em; color:#0F172A; margin-bottom:8px;">Modullar</div>
  <div style="display:grid; grid-template-columns:1fr 1fr; gap:7px;">
    <div style="background:#2196F3; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Network</div>
    <div style="background:#7CB342; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Virtual Machine</div>
    <div style="background:#F57C00; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Subnet</div>
    <div style="background:#E91E63; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Kubernetes Cluster</div>
    <div style="background:#00897B; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">NAT Gateway</div>
    <div style="background:#1565C0; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Database</div>
    <div style="background:#9C27B0; border-radius:8px; padding:6px 8px; text-align:center; color:white; font-weight:700; font-size:0.58em;">Load Balancer</div>
    <div style="background:#FDD835; border-radius:8px; padding:6px 8px; text-align:center; color:#0F172A; font-weight:700; font-size:0.58em;">Messaging Service</div>
  </div>
</div>
<div style="display:flex; align-items:center; font-size:1.4em; color:#848688;">→</div>
<div style="flex:1;">
  <div style="text-align:center; font-weight:700; font-size:0.72em; color:#0F172A; margin-bottom:8px;">Yeni yükün tələbləri</div>
  <div style="border:2.5px dotted #94A3B8; border-radius:14px; padding:10px 14px; display:flex; flex-direction:column; gap:6px; align-items:center;">
    <div style="background:#2196F3; border-radius:8px; padding:5px 22px; text-align:center; color:white; font-weight:700; font-size:0.58em; width:60%;">Network</div>
    <div style="background:#F57C00; border-radius:8px; padding:5px 22px; text-align:center; color:white; font-weight:700; font-size:0.58em; width:60%;">Subnet</div>
    <div style="background:#9C27B0; border-radius:8px; padding:5px 22px; text-align:center; color:white; font-weight:700; font-size:0.58em; width:60%;">Load Balancer</div>
    <div style="display:flex; gap:6px; width:90%; justify-content:center;">
      <div style="background:#7CB342; border-radius:8px; padding:5px 10px; text-align:center; color:white; font-weight:700; font-size:0.58em; flex:1;">Virtual Machine</div>
      <div style="background:#7CB342; border-radius:8px; padding:5px 10px; text-align:center; color:white; font-weight:700; font-size:0.58em; flex:1;">Virtual Machine</div>
    </div>
    <div style="background:#1565C0; border-radius:8px; padding:5px 22px; text-align:center; color:white; font-weight:700; font-size:0.58em; width:60%;">Database</div>
  </div>
</div>
</div>

<div class="r">✅ Yeni tələb gələndə <b>təsdiqlənmiş modullar siyahısından</b> yığırsan — sıfırdan kod yazılmır. Bir VM modulu → 1000 fərqli çağırış. Dərs 2-də öz modulumuzu <b>Copilot ilə</b> yazacağıq.</div>

---

<!-- Slide: Komponentlər 1/2 — Core, Providers, Resources -->
## Əsas Komponentlər (1/2) — Core · Providers · Resources

<div style="display:flex; gap:10px; width:100%; margin:8px 0 6px 0;">
  <div style="background:#0F172A; border:1.5px solid #7B42BC; border-radius:10px; padding:12px 12px; flex:1; text-align:center;">
    <svg width="44" height="44" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
    <div style="font-weight:700; font-size:0.7em; color:#C084FC; margin-top:5px;">Terraform Core</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:5px; line-height:1.5;">HashiCorp-dan endirdiyin <b>binary</b> — CLI aləti. Konfiqurasiya fayllarını oxuyur, resursları yaradır və idarə edir.</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:12px 12px; flex:1; text-align:center;">
    <div style="font-size:1.7em;">🔌</div>
    <div style="font-weight:700; font-size:0.7em; color:#00A859; margin-top:5px;">Providers</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:5px; line-height:1.5;">Core-u genişləndirən <b>plugin-lər</b> — hər platformanın API tərcüməçisi. Minlərlə mövcuddur, hətta 🍕 Domino's Pizza provider-i də var!</div>
  </div>
  <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:12px 12px; flex:1; text-align:center;">
    <div style="font-size:1.7em;">🧱</div>
    <div style="font-weight:700; font-size:0.7em; color:#60A5FA; margin-top:5px;">Resources</div>
    <div style="font-size:0.54em; color:#CBD5E1; margin-top:5px; line-height:1.5;">İdarə etmək istədiyin <b>hər şey</b>: VM, subnet, Kubernetes klasteri, konteyner, DNS qeydi, verilənlər bazası…</div>
  </div>
</div>

<div style="text-align:center; margin:4px 0;">
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">aws</span>
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">azurerm</span>
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">google</span>
  <span style="background:#F3E8FF; border:1px solid #D8B4FE; color:#7E22CE; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">vsphere</span>
  <span style="background:#F3E8FF; border:1px solid #D8B4FE; color:#7E22CE; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">esxi</span>
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">kubernetes</span>
  <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">github</span>
  <span style="background:#FFF8E1; border:1px solid #FDE68A; color:#B45309; padding:2px 8px; border-radius:4px; font-size:0.58em; font-weight:600;">🍕 dominos</span>
</div>

<div class="r">✅ VMware-də deploy etmək istəyirsən? → vsphere/esxi provider-i endirirsən → Terraform artıq VMware resurslarını tanıyır. Bizim kursda bütün lab-lar <b>aws</b> provider-i ilədir; on-prem tərəfi (<b>vsphere</b>) kursdan sonra əlavə praktikada.</div>

---

<!-- Slide: Komponentlər 2/2 — State və Modules -->
## Əsas Komponentlər (2/2) — State və Modules

**State** — Terraform-un &quot;yaddaşı&quot;: kodda yazdığın *istənilən vəziyyəti* platformada *real mövcud olanla* uyğunlaşdıran xəritə.

<div style="display:flex; align-items:center; justify-content:center; gap:10px; margin:10px 0 8px 0;">
  <div style="background:#F0FAF4; border:1.5px solid #C3E4D0; border-radius:10px; padding:9px 14px; text-align:center;">
    <div style="font-size:1.2em;">📄</div>
    <div style="font-size:0.62em; color:#00703A; font-weight:700; margin-top:2px;">Kod (main.tf)</div>
    <div style="font-size:0.52em; color:#334155; margin-top:2px;">istənilən vəziyyət:<br />"1 VM olmalıdır"</div>
  </div>
  <div style="font-size:1em; color:#848688;">↔</div>
  <div style="background:#FFF8E1; border:1.5px solid #FDE68A; border-radius:10px; padding:9px 14px; text-align:center;">
    <div style="font-size:1.2em;">🗺️</div>
    <div style="font-size:0.62em; color:#B45309; font-weight:700; margin-top:2px;">State faylı</div>
    <div style="font-size:0.52em; color:#334155; margin-top:2px;">xəritə:<br />"kod ↔ real resurs"</div>
  </div>
  <div style="font-size:1em; color:#848688;">↔</div>
  <div style="background:#EFF6FF; border:1.5px solid #BFDBFE; border-radius:10px; padding:9px 14px; text-align:center;">
    <div style="font-size:1.2em;">🖥️</div>
    <div style="font-size:0.62em; color:#1D4ED8; font-weight:700; margin-top:2px;">Real dünya</div>
    <div style="font-size:0.52em; color:#334155; margin-top:2px;">ESXi-də işləyən<br />həqiqi VM</div>
  </div>
</div>

- Hər `plan`/`apply`-da Terraform üçünü müqayisə edir və **yalnız fərqi** tətbiq edir
- Kodda dəyişiklik → state ilə tutuşdurulur → real dünyaya köçürülür

<div class="warn">⚠️ Terraform yalnız <b>state-də tanıdığı</b> resurslara toxunur. Terraform 5 VM yaradıbsa, <code>destroy</code> yalnız o 5-ini silər — platformada əl ilə yaradılmış 500 başqa VM-ə <b>dəymir</b>.</div>

**Modules** 📦 — təkrar istifadə olunan, paylaşıla bilən kod blokları: bir VM modulu yaz → onu **1000 dəfə** çağır, 1000 fərqli VM al.

---

<!-- Slide: Komponentlər xülasə (pill format) -->
## Terraform-un Əsas Komponentləri — Xülasə

<div style="display:flex; flex-direction:column; gap:9px; margin:12px 0 6px 0;">
  <div style="display:flex; align-items:center; gap:16px;">
    <div style="background:white; border:2px solid #7B42BC; border-radius:14px; padding:8px 10px; width:180px; flex-shrink:0; text-align:center; color:#7B42BC; font-weight:700; font-size:0.72em;">Terraform Core</div>
    <div style="font-size:0.64em; color:#334155; line-height:1.5;">Konfiqurasiya fayllarında təyin olunan infrastruktur resurslarını yaradan və idarə edən <b>CLI aləti</b></div>
  </div>
  <div style="display:flex; align-items:center; gap:16px;">
    <div style="background:white; border:2px solid #7B42BC; border-radius:14px; padding:8px 10px; width:180px; flex-shrink:0; text-align:center; color:#7B42BC; font-weight:700; font-size:0.72em;">Providers</div>
    <div style="font-size:0.64em; color:#334155; line-height:1.5;">Terraform-u konkret hədəf platformalar üçün <b>genişləndirir</b>: public cloud, SaaS xidmətləri, hardware platformaları</div>
  </div>
  <div style="display:flex; align-items:center; gap:16px;">
    <div style="background:white; border:2px solid #7B42BC; border-radius:14px; padding:8px 10px; width:180px; flex-shrink:0; text-align:center; color:#7B42BC; font-weight:700; font-size:0.72em;">Resources</div>
    <div style="font-size:0.64em; color:#334155; line-height:1.5;">Terraform-un idarə etdiyi infrastruktur komponentləri: <b>VM-lər, şəbəkələr, DNS konfiqurasiyaları, firewall qaydaları</b> və s.</div>
  </div>
  <div style="display:flex; align-items:center; gap:16px;">
    <div style="background:white; border:2px solid #7B42BC; border-radius:14px; padding:8px 10px; width:180px; flex-shrink:0; text-align:center; color:#7B42BC; font-weight:700; font-size:0.72em;">State</div>
    <div style="font-size:0.64em; color:#334155; line-height:1.5;">İstənilən konfiqurasiya ilə hədəf platformada işləyən <b>real resursları uyğunlaşdıran</b> xəritə</div>
  </div>
  <div style="display:flex; align-items:center; gap:16px;">
    <div style="background:white; border:2px solid #7B42BC; border-radius:14px; padding:8px 10px; width:180px; flex-shrink:0; text-align:center; color:#7B42BC; font-weight:700; font-size:0.72em;">Modules</div>
    <div style="font-size:0.64em; color:#334155; line-height:1.5;">Təkrar-təkrar çağırıla bilən, <b>paylaşılan kod blokları</b></div>
  </div>
</div>

<div class="r">✅ Bu beş anlayış kursun sonrakı bütün mövzularının təməlidir — hər lab-da bunlarla işləyəcəyik.</div>

---

<!-- Slide 25: İş axını -->
## Terraform İş Axını

<div style="display:flex; align-items:center; justify-content:center; gap:6px; width:100%; margin:12px 0 8px 0;">
  <div class="anim-step1" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 9px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.64em;">✍️ YAZ</div>
    <div style="font-size:0.52em; margin-top:4px; line-height:1.4;">HCL ilə resursları təsvir et</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div class="anim-step2" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 9px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.64em;">init</div>
    <div style="font-size:0.52em; margin-top:4px; line-height:1.4;">Provider-ləri endirir, mühiti hazırlayır</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div class="anim-step3" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 9px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.64em;">plan</div>
    <div style="font-size:0.52em; margin-top:4px; line-height:1.4;">Önizləmə: nə yaranacaq, nə dəyişəcək, nə silinəcək</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div class="anim-step4" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 9px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.64em;">apply</div>
    <div style="font-size:0.52em; margin-top:4px; line-height:1.4;">Əsl dəyişiklik: platforma API-ləri çağırılır</div>
  </div>
  <div style="font-size:1em; color:#848688;">→</div>
  <div class="anim-step5" style="border:2px solid #93C5FD; border-radius:10px; padding:9px 9px; text-align:center; flex:1; background:#EFF6FF; color:#1E3A5F;">
    <div style="font-weight:700; font-size:0.64em;">destroy</div>
    <div style="font-size:0.52em; margin-top:4px; line-height:1.4;">İdarə etdiyi hər şeyi təmizləyir</div>
  </div>
</div>

<div class="r">✅ Bu beş addım — Terraform ilə işin <b>bütün həyat dövrüdür</b>. Demo-da və bütün lab-larda məhz bu ardıcıllıqla işləyəcəyik. Qızıl qayda: <code>plan</code> çıxışını <b>oxumadan</b> heç vaxt <code>apply</code> etmə.</div>

---

<!-- Slide: plan/apply/destroy dərindən -->
## plan · apply · destroy — Dərindən

<div style="display:flex; gap:10px; margin:8px 0 6px 0;">
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #3B82F6; border-radius:10px; padding:9px 12px;">
  <div style="font-weight:700; font-size:0.74em; color:#1D4ED8;">🔍 terraform plan</div>
  <ul style="margin-top:5px;">
    <li style="font-size:0.58em;">Yeni mühitdə: bütün resurslar <b>+</b> ilə görünür</li>
    <li style="font-size:0.58em;">Mövcud mühitdə: kod ↔ state ↔ real müqayisə — <b>yalnız fərq</b> göstərilir</li>
    <li style="font-size:0.58em;"><b>Heç bir dəyişiklik etmir</b> — təhlükəsiz önizləmədir</li>
  </ul>
</div>
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:9px 12px;">
  <div style="font-weight:700; font-size:0.74em; color:#00703A;">🚀 terraform apply</div>
  <ul style="margin-top:5px;">
    <li style="font-size:0.58em;">Platformanın <b>API-ləri ilə əsl əməliyyat</b> aparır</li>
    <li style="font-size:0.58em;">Koda subnet əlavə etdin → platformada yaradır</li>
    <li style="font-size:0.58em;">Koddan subnet sildin → platformadan da <b>silir</b></li>
  </ul>
</div>
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #EF4444; border-radius:10px; padding:9px 12px;">
  <div style="font-weight:700; font-size:0.74em; color:#DC2626;">🧹 terraform destroy</div>
  <ul style="margin-top:5px;">
    <li style="font-size:0.58em;">İdarə etdiyi <b>bütün</b> resursları təmizləyir</li>
    <li style="font-size:0.58em;">Cloud xərclərini dayandırmağın ən təmiz yolu</li>
    <li style="font-size:0.58em;">Yalnız <b>state-dəki</b> resurslara toxunur — əl ilə yaradılanlara yox</li>
  </ul>
</div>
</div>

<div class="t">🔤 <code>plan</code> çıxışının əlifbası: <b style="color:#00703A;">+</b> yaradılacaq &nbsp;·&nbsp; <b style="color:#B45309;">~</b> yerində dəyişəcək &nbsp;·&nbsp; <b style="color:#DC2626;">-</b> silinəcək &nbsp;·&nbsp; <b style="color:#DC2626;">-</b>/<b style="color:#00703A;">+</b> silinib yenidən yaradılacaq</div>

<div class="q">❓ Nümunə: 3 web serverim var, kodda sayı 5 etdim. <code>plan</code> nə deyəcək?</div>

<div class="a">💡 State-ə baxır: realda 3, kodda 5 → <b>"Plan: 2 to add, 0 to change, 0 to destroy"</b>. Apply-da yalnız 2 yeni server yaranır — mövcud 3-ə toxunulmur.</div>

<div class="r">✅ Kursun sonunda <code>destroy</code> bizim <b>ritualımız</b> olacaq — AWS-də xərc qalmaması üçün hər dərs bununla bitir.</div>

---

<!-- Slide: Terraform data engineering-də -->
## Terraform Data Engineering-də — İş Mənzərəsi

Data mühəndisi üçün Terraform = **bütün analitika platformasının kodla qurulması**. Bir mühəndis, bir kod — bütöv data platforması:

<div style="display:flex; align-items:center; justify-content:center; gap:7px; width:100%; margin:8px 0 6px 0;">
  <div style="text-align:center; flex-shrink:0;">
    <div style="font-size:1.6em;">👤</div>
    <div style="font-size:0.56em; color:#334155; font-weight:700;">Data Engineer</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div style="background:#0F172A; border:1.5px solid #7B42BC; border-radius:10px; padding:7px 10px; text-align:center; flex-shrink:0;">
    <svg width="28" height="28" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
    <div style="font-size:0.52em; color:#C084FC; font-weight:700; margin-top:2px;">Terraform kodu</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div class="anim-step3" style="border:2px solid #93C5FD; border-radius:10px; padding:8px 12px; text-align:center; background:#EFF6FF; color:#1E3A5F; flex-shrink:0;">
    <div style="font-weight:700; font-size:0.62em;">plan</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div class="anim-step4" style="border:2px solid #93C5FD; border-radius:10px; padding:8px 12px; text-align:center; background:#EFF6FF; color:#1E3A5F; flex-shrink:0;">
    <div style="font-weight:700; font-size:0.62em;">apply</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div style="background:white; border:2px solid #00A859; border-radius:12px; padding:8px 12px; flex:1;">
    <div style="font-size:0.54em; color:#00703A; font-weight:700; text-transform:uppercase; letter-spacing:0.8px; margin-bottom:5px; text-align:center;">Data Platforması</div>
    <div style="display:flex; flex-wrap:wrap; gap:4px; justify-content:center;">
      <span style="background:#FEF2F2; border:1px solid #FECACA; color:#B91C1C; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🧱 Databricks</span>
      <span style="background:#EFF6FF; border:1px solid #BFDBFE; color:#1D4ED8; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🔷 Synapse</span>
      <span style="background:#F0FDFA; border:1px solid #99F6E4; color:#0F766E; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🌊 Data Lake</span>
      <span style="background:#EFF6FF; border:1px solid #BFDBFE; color:#1D4ED8; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🏭 Data Factory</span>
      <span style="background:#FFF8E1; border:1px solid #FDE68A; color:#B45309; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🔑 Key Vault</span>
    </div>
  </div>
</div>

<div style="display:flex; gap:10px; margin:6px 0 4px 0;">
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># Data Lake (Gen2) — xam data üçün
resource &quot;azurerm_storage_account&quot; &quot;lake&quot; {
  name           = &quot;dcrasdatalake&quot;
  location       = &quot;westeurope&quot;
  account_tier   = &quot;Standard&quot;
  is_hns_enabled = true
}
</code></pre>
</div>
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># Databricks — data emalı üçün
resource &quot;azurerm_databricks_workspace&quot; &quot;dbx&quot; {
  name     = &quot;dcras-databricks&quot;
  location = &quot;westeurope&quot;
  sku      = &quot;standard&quot;
}
</code></pre>
</div>
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># Key Vault — parol və secret-lər
resource &quot;azurerm_key_vault&quot; &quot;kv&quot; {
  name      = &quot;dcras-secrets&quot;
  location  = &quot;westeurope&quot;
  sku_name  = &quot;standard&quot;
}
</code></pre>
</div>
</div>

<div class="r">✅ Beş servis, əl ilə sıfır klik — hamısı bir <code>terraform apply</code> ilə yaranır. <b>dev</b> mühiti lazımdır? Eyni kod, fərqli dəyişənlər. Layihə bitdi? <code>destroy</code> — xərc dayanır. Data mühəndisinin infrastruktur azadlığı budur.</div>

---


## Eyni Mənzərə On-Prem-də — Data Platform Engineer

Cloud yoxdursa, yaxud data compliance səbəbi ilə ölkədən çıxa bilmirsə? **Yanaşma dəyişmir — yalnız provider dəyişir:**

<div style="display:flex; align-items:center; justify-content:center; gap:7px; width:100%; margin:8px 0 6px 0;">
  <div style="text-align:center; flex-shrink:0;">
    <div style="font-size:1.6em;">👤</div>
    <div style="font-size:0.56em; color:#334155; font-weight:700;">Data Platform<br />Engineer</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div style="background:#0F172A; border:1.5px solid #7B42BC; border-radius:10px; padding:7px 10px; text-align:center; flex-shrink:0;">
    <svg width="28" height="28" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>
    <div style="font-size:0.52em; color:#C084FC; font-weight:700; margin-top:2px;">esxi provider</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div class="anim-step3" style="border:2px solid #93C5FD; border-radius:10px; padding:8px 12px; text-align:center; background:#EFF6FF; color:#1E3A5F; flex-shrink:0;">
    <div style="font-weight:700; font-size:0.62em;">plan</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div class="anim-step4" style="border:2px solid #93C5FD; border-radius:10px; padding:8px 12px; text-align:center; background:#EFF6FF; color:#1E3A5F; flex-shrink:0;">
    <div style="font-weight:700; font-size:0.62em;">apply</div>
  </div>
  <div style="font-size:0.9em; color:#848688;">→</div>
  <div style="background:white; border:2px solid #7B42BC; border-radius:12px; padding:8px 12px; flex:1;">
    <div style="font-size:0.54em; color:#7E22CE; font-weight:700; text-transform:uppercase; letter-spacing:0.8px; margin-bottom:5px; text-align:center;">🖥️ On-Prem ESXi Host</div>
    <div style="display:flex; flex-wrap:wrap; gap:4px; justify-content:center;">
      <span style="background:#FFF8E1; border:1px solid #FDE68A; color:#B45309; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">⚡ Spark klasteri</span>
      <span style="background:#F0FDFA; border:1px solid #99F6E4; color:#0F766E; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">📨 Kafka</span>
      <span style="background:#EFF6FF; border:1px solid #BFDBFE; color:#1D4ED8; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🐘 PostgreSQL</span>
      <span style="background:#F0FAF4; border:1px solid #C3E4D0; color:#00703A; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🌬️ Airflow</span>
      <span style="background:#FEF2F2; border:1px solid #FECACA; color:#B91C1C; padding:2px 8px; border-radius:5px; font-size:0.54em; font-weight:600;">🪣 MinIO (data lake)</span>
    </div>
  </div>
</div>

<div style="display:flex; gap:10px; margin:6px 0 4px 0;">
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># Airflow VM — orkestrasiya
resource &quot;esxi_guest&quot; &quot;airflow&quot; {
  guest_name = &quot;airflow&quot;
  numvcpus   = 2
  memsize    = 4096
  disk_store = &quot;datastore1&quot;
}
</code></pre>
</div>
<div style="flex:1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># 3 Spark worker — eyni kod, count ilə
resource &quot;esxi_guest&quot; &quot;spark&quot; {
  count      = 3
  guest_name = &quot;spark-worker-${count.index}&quot;
  numvcpus   = 4
  memsize    = 8192
  disk_store = &quot;datastore1&quot;
}
</code></pre>
</div>
</div>

<div class="ai">🤖 Yük artdı? <code>count = 3</code> → <code>5</code> — iki yeni Spark worker. Cloud-dakı miqyaslama məntiqi eynilə on-prem-də də işləyir.</div>

<div class="r">✅ <b>Bu istiqamət kursun davamıdır:</b> vCenter qurulandan sonra əlavə praktika sessiyasında on-prem VM-i Terraform ilə canlı yaradacağıq. Cloud + on-prem — bir alət, bir iş axını, bir bilik.</div>

---

<!-- Slide 26: Necə başlamalı -->
## Terraform ilə Necə Başlamalı?

<div style="margin:8px 0;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Binary-ni endir</b> — terraform.io-dan öz OS-in üçün (Windows/macOS/Linux). <span style="color:#00A859; font-weight:700;">✅ Pre-work-də etmisiniz</span></span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>İş qovluğu yarat</b> — layihə üçün ayrıca qovluq + git repository (versiya nəzarəti üçün). VS Code ilə açırıq.</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>Platforma giriş məlumatları</b> — konsola daxil olduğun kimi, Terraform da hədəf platformada autentifikasiya olunmalıdır. <span style="color:#00A859; font-weight:700;">✅ <code>aws configure</code> pre-work-də edilib</span></span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt"><b>İlk konfiqurasiyanı yaz</b> — sadə resurslarla başla, addım-addım genişləndir. <span style="color:#7E22CE; font-weight:700;">Biz bunu Copilot ilə edəcəyik!</span></span></div>
</div>

<svg width="54" height="54" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg" style="display:block; margin:4px auto;"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg>

<div class="t">➡️ Növbəti: <b>Terraform Demo</b> — bütün bunları canlı görəcəyik: qovluq yaradırıq, sadə resurs yazırıq, public cloud-a deploy edirik.</div>

---


## Mini Yoxlama — Fəsil 2.1

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> Terraform-un CloudFormation və Bicep-dən əsas fərqi nədir?</div>
<div class="a">💡 <b>Platform-aqnostikdir</b> — CloudFormation yalnız AWS, Bicep yalnız Azure üçündür. Terraform eyni iş axını ilə istənilən platformada işləyir (cloud, on-prem VMware, DNS, SaaS…).</div>
<div class="q"><span class="qnum">2</span> State faylı nə üçündür və <code>destroy</code> ilə əlaqəsi nədir?</div>
<div class="a">💡 State — kodda yazılanla real dünyada mövcud olan arasında <b>xəritədir</b>. <code>destroy</code> yalnız state-də olan resursları silir — Terraform idarə etmədiyi heç nəyə toxunmur.</div>
<div class="q"><span class="qnum">3</span> <code>plan</code> ilə <code>apply</code>-ın fərqi nədir?</div>
<div class="a">💡 <code>plan</code> — <b>önizləmədir</b>, heç nəyi dəyişmir, yalnız nə olacağını göstərir. <code>apply</code> — əsl dəyişiklikdir, platforma API-lərini çağırıb resursları yaradır/dəyişir/silir.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Terraform ilə Ansible birlikdə necə istifadə olunur?</div>
<div class="a">💡 Tamamlayıcıdırlar: Terraform serverin <b>özünü yaradır</b> (provisioning), Ansible isə serverin <b>içini qurur</b> (paketlər, konfiqurasiya). Əvvəl Terraform, sonra Ansible.</div>
</div>

<div class="t">➡️ Növbəti: <b>Terraform Demo</b> — birlikdə, əl ilə, addım-addım.</div>

---

<!-- Slide: Demo giriş -->
<div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; text-align:center;">
<p><svg width="90" height="90" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg></p>
  <div style="font-size:0.7em; color:#7B42BC; font-weight:700; letter-spacing:2px; text-transform:uppercase; margin-top:14px;">Fəsil 2.2 · Praktika</div>
  <div style="font-size:1.4em; font-weight:700; color:#0F172A; margin-top:6px;">Terraform Demo — İlk Resurslarımız</div>
  <div style="display:flex; gap:10px; margin-top:16px;">
    <div style="background:#0F172A; border:1.5px solid #00A859; border-radius:10px; padding:8px 16px;">
      <div style="font-size:0.62em; color:#00A859; font-weight:700;">🌐 VPC "production"</div>
      <div style="font-size:0.5em; color:#CBD5E1;">10.0.0.0/16</div>
    </div>
    <div style="background:#0F172A; border:1.5px solid #3B82F6; border-radius:10px; padding:8px 16px;">
      <div style="font-size:0.62em; color:#60A5FA; font-weight:700;">🌐 VPC "dev"</div>
      <div style="font-size:0.5em; color:#CBD5E1;">10.10.0.0/16</div>
    </div>
    <div style="background:#0F172A; border:1.5px solid #F59E0B; border-radius:10px; padding:8px 16px;">
      <div style="font-size:0.62em; color:#FBBF24; font-weight:700;">🔗 Subnet "workloads"</div>
      <div style="font-size:0.5em; color:#CBD5E1;">production daxilində</div>
    </div>
  </div>
  <div class="warn" style="margin-top:16px; max-width:88%;">🚫 <b>Bu bölmədə Copilot istifadə ETMİRİK</b> — kodu əl ilə yazırıq. Səbəb: Copilot-un təklifini qiymətləndirmək üçün əvvəl özün anlamalısan. Copilot Fəsil 4-də qayıdır — o zaman fərqi öz gözünlə görəcəksən. <em>(VS Code-da Copilot ikonu → completions-u müvəqqəti dayandır)</em></div>
</div>

---

<!-- Slide: Demo addım 1 -->
## Addım 1 — Layihə Qovluğu və İlk Fayl

<div class="t">🖥️ <b>Sən də et:</b> hər addımı müəllimlə birlikdə öz kompüterində təkrarla.</div>

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<ol>
<li>Boş qovluq yarat: <code>demo</code></li>
<li>VS Code ilə aç: <strong>File → Open Folder</strong></li>
<li>Explorer-də sağ klik → <strong>New File</strong> → adı: <code>main.tf</code></li>
</ol>
<div class="r">✅ <code>.tf</code> uzantısı yazan kimi faylın yanında <b>Terraform loqosu</b> görünür — bu, pre-work-də quraşdırdığımız HashiCorp Terraform extension-unun işləməsi deməkdir.</div>
</div>
<div style="flex:1;">
<div style="background:#1E293B; border-radius:10px; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.56em; color:#E2E8F0; line-height:1.8;">
<span style="color:#64748B;"># Terminalda (istəsən):</span><br />
$ mkdir demo && cd demo<br />
$ code .<br /><br />
<span style="color:#64748B;"># Qovluq strukturu:</span><br />
demo/<br />
└── <svg width="10" height="10" viewBox="0 0 24 24" fill="#7B42BC" xmlns="http://www.w3.org/2000/svg"><path d="M1.44 0v7.575l6.561 3.79V3.787zm21.12 4.227l-6.561 3.791v7.574l6.56-3.787zM8.72 4.23v7.575l6.561 3.787V8.018zm0 8.405v7.575L15.28 24v-7.578z" /></svg> main.tf
</div>
</div>
</div>

---


## Addım 2 — Registry-dən Provider Götür → providers.tf

Terraform-un rəsmi mənbəyi: **registry.terraform.io** → Providers → **AWS** → sağ yuxarıda <b>&quot;Use Provider&quot;</b> düyməsi → kodu kopyala.

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># providers.tf
terraform {
  required_providers {
    aws = {
      source  = &quot;hashicorp/aws&quot;
      version = &quot;~&gt; 6.57&quot;
    }
  }
}

provider &quot;aws&quot; {
  region = &quot;eu-north-1&quot;
}
</code></pre>
</div>
<div style="flex:1;">
<ul>
<li>Provider konfiqurasiyasını ayrıca <strong><code>providers.tf</code></strong> faylına qoymaq geniş yayılmış praktikadır</li>
<li><code>version = &quot;~&gt; 6.57&quot;</code> — versiyanı <strong>kilidləyirik</strong> (pin): sabah yeni versiya çıxsa, kodumuz gözlənilmədən dəyişməsin. <b>Best practice!</b></li>
<li><code>region</code> — bizim kursda həmişə <code>eu-north-1</code> (Stokholm)</li>
</ul>
<div class="q">❓ "~&gt;" işarəsi nə deməkdir?</div>
<div class="a">💡 "Pessimistic constraint": 6.57, 6.58, 6.99 olar — amma 7.0 <b>olmaz</b>. Minor yeniliklərə açıq, major dəyişikliklərə bağlı.</div>
<div class="ai">🤖 Maraqlı fakt: bir neçə ay əvvəlki dərsliklərdə <b>v5.x</b> göstərilir, bu gün ən son versiya <b>v6.57</b>-dir. Fəsil 1-dəki "köhnə dərslik" problemi — canlıda! Həmişə registry-dən cari versiyanı yoxla.</div>
</div>
</div>

---

<!-- Slide: Demo addım 3 -->
## Addım 3 — Sənədləri Oxumağı Öyrən (Ən Vacib Bacarıq!)

Registry-də AWS provider səhifəsi → **Documentation** → solda bütün resurs siyahısı. AWS-dəki demək olar **hər resurs** burada var.

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<p><strong>Axtarış yolu:</strong></p>
<ol>
<li>Sol paneldə <strong>VPC</strong> bölməsinə keç</li>
<li><strong>aws_vpc</strong> resursunu tap</li>
<li>Səhifədə üç qızıl bölmə:
<ul>
<li><strong>Example Usage</strong> — kopyalanmağa hazır nümunələr</li>
<li><strong>Argument Reference</strong> — bütün mümkün arqumentlər</li>
<li>hansı arqument <strong>Required</strong>, hansı <strong>Optional</strong></li>
</ul>
</li>
</ol>
</div>
<div style="flex:1;">
<div class="r">✅ Bu vərdiş Copilot dövründə <b>daha da vacibdir</b>: Copilot arqument uydursa (hallüsinasiya!), həqiqəti yalnız registry sənədləri deyir. Şübhə = registry-yə bax.</div>
<div class="t">🖥️ <b>Sən də et:</b> registry.terraform.io → AWS → Documentation → <code>aws_vpc</code> səhifəsini aç, Argument Reference-ə göz gəzdir.</div>
</div>
</div>

---

<!-- Slide: Demo addım 4 -->
## Addım 4 — İki VPC Yazırıq

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># main.tf
resource &quot;aws_vpc&quot; &quot;production&quot; {
  cidr_block = &quot;10.0.0.0/16&quot;

  tags = {
    Name = &quot;production&quot;
  }
}

resource &quot;aws_vpc&quot; &quot;dev&quot; {
  cidr_block = &quot;10.10.0.0/16&quot;

  tags = {
    Name = &quot;dev&quot;
  }
}
</code></pre>
</div>
<div style="flex:1;">
<p><strong>Resource blokunun anatomiyası:</strong></p>
<ul>
<li><code>aws_vpc</code> — resursun <strong>tipi</strong> (registry-dən)</li>
<li><code>&quot;production&quot;</code> — sənin verdiyin <strong>ad</strong> (label), sərbəst mətndir</li>
<li><code>cidr_block</code> — VPC-nin IP diapazonu</li>
</ul>
<div class="warn">⚠️ Qayda: eyni tip + eyni ad <b>təkrarlana bilməz</b>. İkinci <code>aws_vpc "production"</code> yazmaq olmaz — amma <code>aws_vpc "dev"</code> olar.</div>
<div class="q">❓ AWS bu "production" adını görəcək?</div>
<div class="a">💡 Xeyr! Label yalnız <b>Terraform kodu daxilində</b> istinad üçündür. AWS konsolunda ad görünsün deyə <code>tags = { Name = ... }</code> əlavə edirik.</div>
</div>
</div>

---

<!-- Slide: Demo addım 5 -->
## Addım 5 — Subnet və Gizli Qəhrəman: İmplicit Dependency

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.1; min-width:0;">
<pre is="marp-pre" data-auto-scaling="downscale-only"><code class="language-hcl"># main.tf (davamı)
resource &quot;aws_subnet&quot; &quot;workloads&quot; {
  vpc_id     = aws_vpc.production.id
  cidr_block = &quot;10.0.1.0/24&quot;

  tags = {
    Name = &quot;workloads&quot;
  }
}
</code></pre>
<div style="background:#1E293B; border-radius:8px; padding:6px 12px; margin-top:6px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0;">
<span style="color:#64748B;"># Formatı avtomatik səliqəyə sal:</span><br />
$ terraform fmt
</div>
</div>
<div style="flex:1;">
<p>Diqqət bu sətrə: <code>vpc_id = aws_vpc.production.id</code></p>
<ul>
<li>Subnet <strong>hansı VPC-də</strong> yerləşəcəyini bilməlidir</li>
<li>Biz ID-ni bilmirik — o, hələ yaranmayıb!</li>
<li>Ona görə <strong>istinad</strong> yazırıq: &quot;production VPC-nin ID-si nə olarsa, onu götür&quot;</li>
</ul>
<div class="r">✅ Buna <b>implicit dependency</b> (gizli asılılıq) deyilir: Terraform özü başa düşür ki, əvvəl VPC yaranmalıdır, sonra subnet. Sıralamanı <b>sən yox, Terraform</b> müəyyən edir.</div>
</div>
</div>

---


## Addım 6 — terraform init

<div class="t">🖥️ <b>Sən də et:</b> VS Code terminalını aç (<code>Ctrl+`</code>) və işlət:</div>

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.15; min-width:0;">
<div style="background:#1E293B; border-radius:10px; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform init<br /><br />
<span style="color:#94A3B8;">Initializing the backend...</span><br />
<span style="color:#94A3B8;">Initializing provider plugins...</span><br />
<span style="color:#94A3B8;">- Finding hashicorp/aws versions matching "~&gt; 6.57"...</span><br />
<span style="color:#94A3B8;">- Installing hashicorp/aws v6.57.1...</span><br />
<span style="color:#94A3B8;">- Installed hashicorp/aws v6.57.1</span><br /><br />
<span style="color:#4ADE80; font-weight:700;">Terraform has been successfully initialized!</span>
</div>
</div>
<div style="flex:1;">
<p><code>init</code> nə etdi?</p>
<ul>
<li>AWS provider-i <strong>endirdi</strong> → yeni <code>.terraform/</code> qovluğunda görə bilərsən</li>
<li><code>.terraform.lock.hcl</code> faylı yarandı — provider versiyasını kilidləyir</li>
<li>Hələ <strong>heç nə deploy olunmayıb</strong> — yalnız qovluq hazırlandı</li>
</ul>
<div class="r">✅ Giriş məlumatları: pre-work-də <code>aws configure</code> etmişik — Terraform onları avtomatik tapır. Alternativ yol: <code>export AWS_ACCESS_KEY_ID=...</code> env dəyişənləri.</div>
<div class="warn">⚠️ Key-ləri heç vaxt <code>.tf</code> faylına yazma!</div>
</div>
</div>

---

<!-- Slide: Demo addım 7 — xəta -->
## Addım 7 — plan… və İlk Xətamız! 🎉

Deyək ki, VPC-nin adını sonradan `main`-dən `production`-a dəyişdik, amma subnet-dəki istinadı unutduq:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.15; min-width:0;">
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #EF4444; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform plan<br /><br />
<span style="color:#F87171; font-weight:700;">Error: Reference to undeclared resource</span><br /><br />
&nbsp;&nbsp;on main.tf line 21, in resource "aws_subnet" "workloads":<br />
&nbsp;&nbsp;&nbsp;21:&nbsp;&nbsp;vpc_id = aws_vpc.<span style="color:#F87171;">main</span>.id<br /><br />
A managed resource "aws_vpc" "main" has not been<br />declared in the root module.
</div>
</div>
<div style="flex:1;">
<p>Xətanı <strong>oxu</strong> — Terraform dəqiq deyir:</p>
<ul>
<li>hansı faylda: <code>main.tf</code></li>
<li>hansı sətirdə: <code>21</code></li>
<li>problem nədir: <code>aws_vpc.main</code> deyə resurs <strong>yoxdur</strong></li>
</ul>
<p>Düzəliş: <code>aws_vpc.main.id</code> → <code>aws_vpc.production.id</code></p>
<div class="r">✅ Xəta = normal iş prosesidir. Terraform xətaları <b>apply-dan əvvəl</b>, hələ heç nə yaranmamış tutur — bu onun ən böyük dostluğudur.</div>
</div>
</div>

---

<!-- Slide: Demo addım 8 — plan uğurlu -->
## Addım 8 — plan: 3 to add

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.15; min-width:0;">
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #00A859; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform plan<br /><br />
Terraform will perform the following actions:<br /><br />
&nbsp;&nbsp;<span style="color:#4ADE80;"># aws_vpc.production will be created</span><br />
&nbsp;&nbsp;<span style="color:#4ADE80;">+</span> resource "aws_vpc" "production" { … }<br /><br />
&nbsp;&nbsp;<span style="color:#4ADE80;"># aws_vpc.dev will be created</span><br />
&nbsp;&nbsp;<span style="color:#4ADE80;">+</span> resource "aws_vpc" "dev" { … }<br /><br />
&nbsp;&nbsp;<span style="color:#4ADE80;"># aws_subnet.workloads will be created</span><br />
&nbsp;&nbsp;<span style="color:#4ADE80;">+</span> resource "aws_subnet" "workloads" { … }<br /><br />
<span style="color:#4ADE80; font-weight:700;">Plan: 3 to add, 0 to change, 0 to destroy.</span>
</div>
</div>
<div style="flex:1;">
<p><code>plan</code> nə etdi?</p>
<ul>
<li><strong>İstənilən vəziyyəti</strong> (kodumuz) <strong>real dünya</strong> ilə müqayisə etdi</li>
<li>AWS account-da bu resurslar yoxdur → hamısı <b style="color:#00703A;">+</b> (yaradılacaq)</li>
<li>Hələ <strong>heç nə dəyişmədi</strong> — bu, təhlükəsiz önizləmədir</li>
</ul>
<div class="q">❓ Terraform haradan bilir ki, əvvəl VPC, sonra subnet yaratmalıdır?</div>
<div class="a">💡 <code>aws_vpc.production.id</code> istinadından — <b>implicit dependency</b>. Asılılıq qrafını özü qurur.</div>
<div class="t">🖥️ Plan çıxışını <b>sətir-sətir oxu</b> — bu vərdiş səni prod-da xilas edəcək.</div>
</div>
</div>

---

<!-- Slide: Demo addım 9 — apply -->
## Addım 9 — apply: Resurslar Həqiqətən Yaranır

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.15; min-width:0;">
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #00A859; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform apply<br /><br />
Do you want to perform these actions?<br />
&nbsp;&nbsp;Enter a value: <span style="color:#FBBF24;">yes</span><br /><br />
<span style="color:#94A3B8;">aws_vpc.production: Creating...</span><br />
<span style="color:#94A3B8;">aws_vpc.dev: Creating...</span><br />
<span style="color:#4ADE80;">aws_vpc.dev: Creation complete after 2s [id=vpc-0b2f…]</span><br />
<span style="color:#4ADE80;">aws_vpc.production: Creation complete after 2s [id=vpc-0a1c…]</span><br />
<span style="color:#94A3B8;">aws_subnet.workloads: Creating...</span><br />
<span style="color:#4ADE80;">aws_subnet.workloads: Creation complete after 1s [id=subnet-0f9e…]</span><br /><br />
<span style="color:#4ADE80; font-weight:700;">Apply complete! Resources: 3 added, 0 changed, 0 destroyed.</span>
</div>
</div>
<div style="flex:1;">
<p>Çıxışa diqqət:</p>
<ul>
<li>İki VPC <strong>paralel</strong> yaradıldı</li>
<li>Subnet <strong>onlardan sonra</strong> — çünki VPC-nin ID-sini gözləyirdi</li>
<li>Hər resursun həqiqi AWS ID-si göründü (<code>vpc-0a1c…</code>)</li>
</ul>
<div class="t">🖥️ <b>Sən də et:</b> AWS Console → VPC bölməsinə keç — <b>production</b> və <b>dev</b> VPC-lərini, <b>workloads</b> subnet-ini öz gözünlə gör!</div>
<div class="r">✅ Qovluğunda yeni <code>terraform.tfstate</code> faylı yarandı — bax, amma <b>əl ilə redaktə etmə!</b></div>
</div>
</div>

---

<!-- Slide: Demo addım 10 — destroy -->
## Addım 10 — destroy: Təmizlik Ritualı 🧹

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1.15; min-width:0;">
<div style="background:#1E293B; border-radius:10px; border-left:4px solid #EF4444; padding:10px 14px; font-family:'SF Mono',Menlo,Consolas,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.7;">
$ terraform destroy<br /><br />
<span style="color:#94A3B8;">aws_vpc.production: Refreshing state...</span><br />
<span style="color:#94A3B8;">aws_vpc.dev: Refreshing state...</span><br /><br />
&nbsp;&nbsp;<span style="color:#F87171;">-</span> resource "aws_vpc" "production" { … }<br />
&nbsp;&nbsp;<span style="color:#F87171;">-</span> resource "aws_vpc" "dev" { … }<br />
&nbsp;&nbsp;<span style="color:#F87171;">-</span> resource "aws_subnet" "workloads" { … }<br /><br />
<span style="color:#F87171; font-weight:700;">Plan: 0 to add, 0 to change, 3 to destroy.</span><br /><br />
&nbsp;&nbsp;Enter a value: <span style="color:#FBBF24;">yes</span><br /><br />
<span style="color:#4ADE80; font-weight:700;">Destroy complete! Resources: 3 destroyed.</span>
</div>
</div>
<div style="flex:1;">
<ul>
<li>Əvvəl state-i <strong>yenilədi</strong> (mövcud vəziyyəti yoxladı)</li>
<li>Sonra hər üç resursu <b style="color:#DC2626;">-</b> (qırmızı) ilə göstərdi</li>
<li>Təsdiq → AWS API ilə silindi</li>
</ul>
<div class="warn">⚠️ Bu bizim <b>hər dərsin son ritualıdır</b>: dərs bitir → <code>terraform destroy</code> → AWS Console-da təmizliyi vizual yoxla → xərc sıfır.</div>
<div class="r">✅ Növbəti təkmilləşdirmə istiqaməti: hardcode dəyərlər əvəzinə <b>variables</b> — kodu təkrar istifadə edilə bilən etmək. Bunu Fəsil 4-də <b>Copilot ilə</b> edəcəyik!</div>
</div>
</div>

---


## Mini Yoxlama — Fəsil 2.2 (Demo)

<div style="margin:8px 0;">
<div class="q"><span class="qnum">1</span> <code>resource "aws_vpc" "production"</code> — buradakı "production" adını AWS görəcək?</div>
<div class="a">💡 Xeyr — bu label yalnız Terraform kodu daxilində istinad üçündür. AWS-də ad görünsün deyə <code>tags = { Name = "production" }</code> yazırıq.</div>
<div class="q"><span class="qnum">2</span> <code>terraform init</code> nə edir və hansı fayllar yaranır?</div>
<div class="a">💡 Provider-ləri endirir və qovluğu hazırlayır: <code>.terraform/</code> qovluğu (provider binary-ləri) + <code>.terraform.lock.hcl</code> (versiya kilidi). Heç nə deploy etmir.</div>
<div class="q"><span class="qnum">3</span> Subnet-də <code>vpc_id = aws_vpc.production.id</code> yazdıq. Bu nəyi təmin edir?</div>
<div class="a">💡 <b>İmplicit dependency</b> — Terraform anlayır ki, əvvəl VPC yaranmalıdır, sonra subnet. Yaradılış sırasını asılılıq qrafından özü çıxarır.</div>
<div class="q"><span class="qnum qnum-bonus">4</span> Niyə provider versiyasını <code>"~&gt; 5.62"</code> kimi kilidləyirik?</div>
<div class="a">💡 Sabah 6.0 çıxsa, kodumuz xəbərsiz yeni (bəlkə uyğunsuz) versiya ilə işləməsin. <code>~&gt;</code> minor yeniləmələrə icazə verir, major-a yox. Təkrarlanabilirliyin təməli.</div>
</div>

<div class="t">➡️ Növbəti: <b>Fəsil 3 yoxlaması</b> (pre-work) və sonra <b>Fəsil 4 — nəhayət Copilot işə düşür!</b> Bu dəfə eyni işi Copilot-un sürəti ilə edəcəyik.</div>
