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

<!-- Slide: Fəsil 3 — bölmə başlığı --><div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; text-align:center;">
  <div style="font-size:3em;">🛠️</div>
  <div style="font-size:0.7em; color:#00A859; font-weight:700; letter-spacing:2px; text-transform:uppercase; margin-top:12px;">Fəsil 3</div>
  <div style="font-size:1.5em; font-weight:700; color:#0F172A; margin-top:6px;">Mühitin Qurulması</div>
  <div style="background:#0F172A; border-radius:10px; padding:12px 26px; margin-top:18px;">
    <div style="font-size:0.72em; color:#E2E8F0; line-height:1.9;">
      Copilot abunəliyi &nbsp;·&nbsp; VS Code &nbsp;·&nbsp; Copilot extension<br />
      Terraform quraşdırılması &nbsp;·&nbsp; AWS giriş məlumatları
    </div>
  </div>
  <div class="r" style="margin-top:16px; max-width:85%;">✅ Bu fəslin <b>hamısını pre-work-də etmisiniz</b> — burada sürətlə yoxlayırıq və bir neçə vacib nüansı öyrənirik. Problemi olan varsa, indi həll edirik.</div>
</div>

---

<!-- Slide 3.1: Copilot abunəliyi — yollar və planlar -->
## 3.1 — Copilot Abunəliyi: Yollar və Planlar

Abunə səhifəsinə iki yol:

<div style="display:flex; gap:10px; margin:8px 0 6px 0;">
  <div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-left:4px solid #00A859; border-radius:8px; padding:8px 14px;">
    <div style="font-size:0.68em; font-weight:700; color:#00703A;">Yol 1 — birbaşa link</div>
    <div style="font-size:0.62em; color:#334155; margin-top:3px;"><code>github.com/features/copilot</code> → "Get started"</div>
  </div>
  <div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-left:4px solid #3B82F6; border-radius:8px; padding:8px 14px;">
    <div style="font-size:0.68em; font-weight:700; color:#1D4ED8;">Yol 2 — profil menyusu</div>
    <div style="font-size:0.62em; color:#334155; margin-top:3px;">GitHub-da sağ yuxarı avatar → <b>"Your Copilot"</b></div>
  </div>
</div>

| Plan | Kimə | Bizim kursda |
|---|---|---|
| **Free** | Hər kəsə — kart tələb olunmur | ✅ **Bizim seçim** |
| Pro (~$10/ay) | Fərdi, limitsiz; illik ödənişdə ~2 ay endirim | Education ilə pulsuz |
| Business / Enterprise | Təşkilat ödəyir | — |

<div class="warn">⚠️ Şirkətdə işləyirsənsə, əvvəlcə yoxla: təşkilatın artıq <b>Enterprise lisenziyası</b> ola bilər — özün pul ödəməyə ehtiyac qalmır. Abunə olmazdan əvvəl bunu yoxlamaq ilk addımdır.</div>

<div class="ai">🤖 "Köhnə material" anı yenə qarşımızda: bir çox köhnə təlimatlarda yalnız ödənişli Individual plan göstərilir — <b>Copilot Free</b> sonradan çıxıb. Biz kartsız, pulsuz qeydiyyatdan keçirik. Texnologiya sənəddən sürətli dəyişir!</div>

---

<!-- Slide 3.1b: Policy parametrləri -->
## 3.1 — Qeydiyyatdan Sonra: Policy Parametrləri

Abunəlik tamamlananda GitHub iki vacib seçim təqdim edir — çoxları oxumadan &quot;Next&quot; basır. Biz basmırıq:

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #F59E0B; border-radius:10px; padding:10px 14px;">
  <div style="font-weight:700; font-size:0.72em; color:#B45309;">⚙️ Suggestions matching public code</div>
  <div style="font-size:0.6em; color:#334155; margin-top:5px; line-height:1.6;">Copilot-un təklifi <b>mövcud public kodla üst-üstə düşərsə</b> nə etsin: göstərsin (Allow) yoxsa bloklasın (Block)? Lisenziya narahatlığı varsa Block seç.</div>
</div>
<div style="flex:1; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #EF4444; border-radius:10px; padding:10px 14px;">
  <div style="font-weight:700; font-size:0.72em; color:#DC2626;">🔒 Use my code for product improvement</div>
  <div style="font-size:0.6em; color:#334155; margin-top:5px; line-height:1.6;">Yazdığın kod parçaları <b>modelin təlimi üçün</b> istifadə olunsun? Şəxsi/şirkət kodu ilə işləyirsənsə — <b>söndürməyi ciddi düşün</b>.</div>
</div>
</div>

<div class="r">✅ Fəsil 1-dəki dərs yadına düşdü? "Məxfi məlumat sızması + şirkət GenAI siyasəti" — bu parametrlər həmin mövzunun praktik tərəfidir. Parametrlər sonradan da dəyişdirilə bilər: <code>github.com/settings/copilot</code></div>

<div class="t">🖥️ <b>İndi yoxla:</b> <code>github.com/settings/copilot</code> aç → status <b>aktiv</b>? Policy seçimlərinə bax — şüurlu seçim et.</div>

---

<!-- Slide 3.1c: Yoxlama -->
## 3.1 — Sinif Yoxlaması ✅

<div style="margin:10px 0;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt"><code>github.com/settings/copilot</code> → status: <b>Copilot Free aktiv</b> (və ya Education təsdiqlənibsə Pro)</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt">Kredit kartı istənilmədi — Free plan kartsız işləyir. Kart istəyirsə, səhv səhifədəsən (Pro trial-a düşmüsən) — geri qayıt</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt">GitHub Education müraciəti göndərənlər: status <code>education.github.com</code>-da yoxlanır — təsdiq gələnə qədər Free ilə davam</span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt">Policy seçimləri şüurlu edilib (əvvəlki slayd)</span></div>
</div>

<div class="q">❓ Ayda 2000 completion bizə çatacaq?</div>

<div class="a">💡 Bəs edəcək: 2 dərs ərzində aktiv istifadədə belə adətən 200–400 completion işlənir. Chat limiti (50 mesaj) daha tez dolur — ona görə chat-i məqsədli istifadə edəcəyik (Fəsil 5-də öyrənirik).</div>

<div class="t">➡️ Növbəti: <b>3.2–3.3 — VS Code və Copilot Extension</b></div>

---


## 3.2–3.3 — VS Code və Copilot Extension

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">
<p><strong>Quraşdırma (pre-work-də edilib):</strong></p>
<div class="step-row"><span class="step-num">1</span><span class="step-txt">Extensions paneli (⇧⌘X / Ctrl+Shift+X) → axtar: <code>copilot</code></span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>GitHub Copilot</b> → Install. <b>Chat extension-u avtomatik gəlir</b> — ayrıca quraşdırmaq lazım deyil</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt">Sign in → brauzerdə authorize → VS Code-a qayıt. VS Code onsuz da GitHub hesabına bağlıdırsa, <b>avtomatik daxil olur</b></span></div>
<div class="ai">🤖 <b>Yeni VS Code-da fərq:</b> Copilot Chat artıq <b>"Built-in"</b> — quraşdırmaq mümkün deyil və lazım da deyil, redaktorun içində hazır gəlir (Install əvəzinə "Disable AI Features" görünür, köhnə Copilot extension-unun adı üstündən xətlidir). Belədirsə, 1–2-ci addımları ötür — birbaşa <b>Sign in</b> et.</div>
<div class="warn">⚠️ Extension axtarırsansa, yalnız <b>rəsmisini</b> götür: naşirin yanında <em>"publisher has verified ownership of github.com"</em> yazısını yoxla — saxta "copilot" extension-ları mövcuddur!</div>
</div>
<div style="flex:1;">
<p><strong>Ən çox rast gəlinən problem — ikonda ⃠ (slash):</strong></p>
<div style="background:#0F172A; border-radius:10px; padding:10px 14px; margin:4px 0;">
  <div style="font-size:0.62em; color:#E2E8F0; line-height:1.7;">
    Sağ aşağı küncdə Copilot ikonu üstündən xətt keçirsə:<br />
    <span style="color:#00A859; font-weight:700;">ikona klik → "Enable completions"</span><br />
    (+ lazımsa "Enable completions for plain text")
  </div>
</div>
<div style="font-size:0.64em; color:#334155; line-height:1.6;">Səbəb: <code>.tf</code> faylı <b>plain text</b> kimi tanınır — adətən HashiCorp Terraform extension-u quraşdırılmayanda olur. Bizdə o extension var, ona görə çox güman rast gəlməyəcəksən — amma görsən, artıq çaşmayacaqsan.</div>
<div class="r">✅ <b>Yoxlama:</b> <code>.tf</code> faylı aç → ikona klik → status <b>"Ready"</b>. Boş sətrə keçəndə ✨ işarələri görünür — Copilot işləyir. Silmək lazım olsa: extension-da ⚙️ → Uninstall.</div>
</div>
</div>

---


## 3.4 — Terraform Quraşdırılması: Üç OS, Bir Nəticə

Mənbə: **terraform.io → Download** (OS-ini avtomatik tanıyır) və ya bütün binary-lər üçün: `releases.hashicorp.com`

<div style="display:flex; gap:9px; margin:8px 0 6px 0;">
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.7em; color:#00703A;"> macOS — Homebrew</div>
  <div style="background:#1E293B; border-radius:6px; padding:6px 10px; margin-top:6px; font-family:'SF Mono',Menlo,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.7;">
  $ brew tap hashicorp/tap<br />
  $ brew install hashicorp/tap/terraform
  </div>
  <div style="font-size:0.54em; color:#848688; margin-top:5px;">Binary hara düşdü? <code>which terraform</code> → <code>/opt/homebrew/bin</code></div>
</div>
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #F59E0B; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.7em; color:#B45309;">🐧 Linux — paket meneceri</div>
  <div style="background:#1E293B; border-radius:6px; padding:6px 10px; margin-top:6px; font-family:'SF Mono',Menlo,monospace; font-size:0.48em; color:#E2E8F0; line-height:1.7;">
  $ sudo apt install terraform<br />
  <span style="color:#64748B;"># repo əlavə etmə addımları:</span><br />
  <span style="color:#64748B;"># bax prework, addım 3</span>
  </div>
  <div style="font-size:0.54em; color:#848688; margin-top:5px;">Alternativ: binary endir → <code>/usr/local/bin</code>-ə qoy</div>
</div>
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #3B82F6; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.7em; color:#1D4ED8;">🪟 Windows — binary + PATH</div>
  <div style="font-size:0.54em; color:#334155; margin-top:6px; line-height:1.7;">
  1. ZIP endir → <code>terraform.exe</code>-ni <code>C:\\terraform</code>-a çıxar<br />
  2. Start → System → Advanced → <b>Environment Variables</b> → Path → New → <code>C:\\terraform</code><br />
  3. Terminalı <b>yenidən aç</b> (köhnə pəncərə PATH-ı görmür!)
  </div>
</div>
</div>

<div class="q">❓ PATH nədir və niyə lazımdır?</div>

<div class="a">💡 Terminalın əmrləri axtardığı qovluqlar siyahısı (<code>echo $PATH</code>). Binary PATH-dakı qovluqdadırsa, <code>terraform</code> əmri <b>istənilən qovluqdan</b> işləyir — hər dəfə binary-nin yanına getmək lazım deyil.</div>

<div class="r">✅ <b>Yoxlama (hamı):</b> <code>terraform version</code> → versiya çıxır. <em>Versiya nömrəsi qrupda fərqli ola bilər — daha yenisi tam normaldır.</em></div>

<div class="t">➡️ Növbəti: <b>3.5 — AWS giriş məlumatları</b> (+ bizim əlavə: on-prem ESXi hazırlığı)</div>

---


## 3.5 — AWS-də Terraform üçün İstifadəçi və Açarlar

Terraform AWS-ə **sənin adından** müraciət edir — bunun üçün IAM istifadəçisi və access key lazımdır:

<div style="display:flex; gap:12px; margin:6px 0;">
<div style="flex:1;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt">Console → axtarışda <b>IAM</b> → Users → <b>Create user</b> → ad: <code>terraform</code></span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>Attach policies directly</b> → axtar: <code>Administrator</code> → <b>AdministratorAccess</b> seç → Create user</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt">İstifadəçiyə keç → <b>Security credentials</b> → <b>Create access key</b> → təsvir yaz → yarat</span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt">Access key + Secret key-i <b>dərhal kopyala</b> — secret <b>yalnız bir dəfə</b> göstərilir! (hər istifadəçiyə maksimum 2 açar)</span></div>
</div>
<div style="flex:1;">
<div class="q">❓ Niyə tam <code>AdministratorAccess</code>? Daha dar icazə (məsələn, yalnız VPC) olmazdı?</div>
<div class="a">💡 Kurs boyu təkcə VPC yox, <b>EC2, S3 və digər resursları</b> da yarada bilərik — hər dəfə policy əlavə etməmək üçün şəxsi tədris account-unda <code>AdministratorAccess</code> veririk. Amma <b>least privilege</b> prinsipini yadda saxla: iş mühitində istifadəçiyə yalnız <b>lazım olan minimum icazə</b> verilir — məsələn, yalnız şəbəkə ilə işləyən komandaya <code>AmazonVPCFullAccess</code>.</div>
<div class="warn">⚠️ İş dünyasında IAM user + uzunömürlü access key köhnəlmiş yanaşmadır (SSO/rol əsaslı giriş üstündür) — amma öyrənmə üçün ən sadə başlanğıcdır.</div>
</div>
</div>

---

<!-- Slide 3.5b: Credentials-i terminala vermək -->
## 3.5 — Açarları Terraform-a Çatdırmağın 3 Yolu

<div style="display:flex; gap:9px; margin:8px 0 6px 0;">
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #00A859; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.68em; color:#00703A;">1 — aws configure <span style="background:#F0FAF4; border:1px solid #C3E4D0; padding:1px 6px; border-radius:4px; font-size:0.8em;">bizim yol ✅</span></div>
  <div style="background:#1E293B; border-radius:6px; padding:6px 10px; margin-top:6px; font-family:'SF Mono',Menlo,monospace; font-size:0.46em; color:#E2E8F0; line-height:1.7;">
  $ aws configure<br />
  <span style="color:#64748B;"># key-lər ~/.aws/credentials-də</span><br />
  <span style="color:#64748B;"># davamlı — terminal bağlansa da qalır</span>
  </div>
  <div style="font-size:0.52em; color:#848688; margin-top:4px;">Pre-work-də etmisiniz — Terraform avtomatik tapır</div>
</div>
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #F59E0B; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.68em; color:#B45309;">2 — macOS / Linux: export</div>
  <div style="background:#1E293B; border-radius:6px; padding:6px 10px; margin-top:6px; font-family:'SF Mono',Menlo,monospace; font-size:0.46em; color:#E2E8F0; line-height:1.7;">
  $ export AWS_ACCESS_KEY_ID=AKIA…<br />
  $ export AWS_SECRET_ACCESS_KEY=…<br />
  $ export AWS_DEFAULT_REGION=eu-north-1
  </div>
  <div style="font-size:0.52em; color:#848688; margin-top:4px;"><code>export</code> <b>kiçik hərflə</b>! Yalnız bu terminal sessiyasında yaşayır</div>
</div>
<div style="flex:1; min-width:0; background:white; border:1.5px solid #E2E8F0; border-top:4px solid #3B82F6; border-radius:10px; padding:8px 12px;">
  <div style="font-weight:700; font-size:0.68em; color:#1D4ED8;">3 — Windows: PowerShell</div>
  <div style="background:#1E293B; border-radius:6px; padding:6px 10px; margin-top:6px; font-family:'SF Mono',Menlo,monospace; font-size:0.46em; color:#E2E8F0; line-height:1.7;">
  $Env:AWS_ACCESS_KEY_ID = "AKIA…"<br />
  $Env:AWS_SECRET_ACCESS_KEY = "…"<br />
  $Env:AWS_DEFAULT_REGION = "eu-north-1"
  </div>
  <div style="font-size:0.52em; color:#848688; margin-top:4px;"><code>$Env:</code> prefiksi — PowerShell-in env dəyişən sintaksisi</div>
</div>
</div>

<div class="warn">⚠️ <b>Təhlükəsizlik qaydaları:</b> açarlar heç vaxt <code>.tf</code> faylına, git-ə və ya Copilot Chat-ə yazılmır · kurs bitəndə açarları <b>sil</b> (IAM → user → Security credentials → Deactivate/Delete) — uzunmüddətli açıq açar = oğurlanma riski</div>

<div class="r">✅ <b>Yoxlama:</b> <code>aws sts get-caller-identity</code> → account nömrəsi və istifadəçi görünür = Terraform da girə biləcək.</div>

---

<!-- Slide 3.5c: ESXi hazırlığı (bizim əlavə) -->
## Bizim Əlavə — On-Prem Dünyaya Baxış (Gələcək Praktika)

AWS-dəki məntiqin eynisi: Terraform on-prem VMware mühitinə də **giriş məlumatları ilə** qoşulur — AWS API əvəzinə **vSphere API** (vCenter) üzərindən:

<div style="display:flex; gap:12px; margin:8px 0;">
<div style="flex:1;">
<p><strong>Sənin tərəfindən heç nə quraşdırılmır!</strong> Praktika günü müəllimdən alacaqsan:</p>
<ul>
<li>🖥️ vCenter <strong>ünvanı</strong></li>
<li>👤 <strong>İstifadəçi adı</strong> və <strong>parol</strong></li>
</ul>
<p>İnfrastruktur hazırlığı (müəllim edir): vCenter quraşdırılması + ESXi host-un ona əlavə edilməsi + Terraform üçün istifadəçi</p>
</div>
<div style="flex:1;">
<p>Açarların ötürülməsi — AWS-dəki 2-ci yolun eynisi (vsphere provider bu dəyişənləri avtomatik oxuyur):</p>
<div style="background:#1E293B; border-radius:8px; padding:8px 12px; font-family:'SF Mono',Menlo,monospace; font-size:0.5em; color:#E2E8F0; line-height:1.8;">
$ export VSPHERE_SERVER=vcenter.local<br />
$ export VSPHERE_USER=terraform@vsphere.local<br />
$ export VSPHERE_PASSWORD=•••••••
</div>
<div class="r">✅ Prinsip dəyişmir: <b>parol kodda yox, mühitdə</b>. AWS açarı da, vCenter parolu da — eyni qayda.</div>
</div>
</div>

<div class="ai">🤖 Niyə bu mümkündür? Fəsil 2-dən xatırla: Terraform <b>platform-aqnostikdir</b> — provider dəyişir (aws → vsphere), iş axını yox. Bu praktikanı kursun davamında — vCenter qurulandan sonra — ayrıca sessiyada canlı edəcəyik.</div>

---

<!-- Slide: Fəsil 3 yekun checklist -->
## Fəsil 3 Tamam — Hamı Hazırdır? ✅

<div style="margin:10px 0;">
<div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>Copilot:</b> <code>github.com/settings/copilot</code> → aktiv; policy seçimləri şüurlu edilib</span></div>
<div class="step-row"><span class="step-num">2</span><span class="step-txt"><b>VS Code:</b> Copilot ikonu "Ready" (⃠ yoxdur), HashiCorp Terraform extension quraşdırılıb</span></div>
<div class="step-row"><span class="step-num">3</span><span class="step-txt"><b>Terraform:</b> <code>terraform version</code> → çıxır</span></div>
<div class="step-row"><span class="step-num">4</span><span class="step-txt"><b>AWS:</b> <code>aws sts get-caller-identity</code> → account görünür; region <code>eu-north-1</code></span></div>
<div class="step-row"><span class="step-num">5</span><span class="step-txt"><b>Budget:</b> Zero-spend budget alert qurulub (pre-work, addım 4)</span></div>
</div>

<div style="background:#0F172A; border-radius:12px; padding:14px 22px; margin:12px 0; text-align:center;">
  <div style="font-size:0.85em; color:#00A859; font-weight:700;">🚀 Mühit tam hazırdır!</div>
  <div style="font-size:0.66em; color:#E2E8F0; margin-top:6px; line-height:1.7;">Fəsil 2-nin demo-sunda hər şeyi <b>əl ilə</b> yazdıq.<br />İndi isə... <b>Fəsil 4: eyni işi Copilot-un sürəti ilə</b> — fərqi öz gözünlə görəcəksən.</div>
</div>
