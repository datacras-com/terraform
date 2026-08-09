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
    padding: 22px 42px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    box-sizing: border-box;
    overflow: hidden;
    background-color: #F7F9F8;
    color: #0F172A;
  }
  h1 { color: #00A859; font-size: 1.55em; margin: 0 0 6px 0; }
  h2 { color: #00A859; font-size: 1.1em; border-bottom: 2px solid #00A859; padding-bottom: 4px; margin: 0 0 8px 0; }
  strong { color: #00A859; }
  em { color: #848688; font-style: normal; }
  code { background: #E8F5EE; color: #00703A; padding: 2px 5px; border-radius: 4px; font-size: 0.75em; border: 1px solid #C3E4D0; }
  pre { background: #1E293B; color: #E2E8F0; padding: 7px 11px; border-radius: 8px; border-left: 4px solid #00A859; font-size: 0.44em; line-height: 1.35; margin: 3px 0; overflow: hidden; color-scheme: dark; }
  pre code { font-size: 1em; padding: 0; background: transparent; color: #E2E8F0; border: none; }
  blockquote { border-left: 4px solid #00A859; background: #E8F5EE; padding: 6px 12px; margin: 5px 0; border-radius: 0 8px 8px 0; color: #0F172A; font-style: normal; font-size: 0.78em; }
  ul { line-height: 1.5; margin: 3px 0; padding-left: 18px; }
  li { margin-bottom: 2px; font-size: 0.80em; }
  table { font-size: 0.66em; border-collapse: collapse; margin: 6px 0; width: 100%; }
  th { background: #0F172A; color: #A7F3D0; padding: 5px 12px; text-align: left; border: 1px solid #0F172A; }
  td { border: 1px solid #E2E8F0; padding: 5px 12px; background: white; }
  tr:nth-child(even) td { background: #F8FAFC; }
  .t { background: #EFF6FF; border-left: 4px solid #3B82F6; padding: 4px 10px; border-radius: 0 6px 6px 0; margin: 3px 0; font-size: 0.79em; font-weight: 600; color: #1E3A5F; }
  .r { background: #F0FAF4; border-left: 4px solid #00A859; padding: 4px 10px; border-radius: 0 6px 6px 0; margin: 1px 0 5px 0; font-size: 0.76em; color: #0F172A; }
  .warn { background: #FFF8E1; border-left: 4px solid #F59E0B; padding: 5px 10px; margin: 5px 0; border-radius: 0 6px 6px 0; font-size: 0.76em; color: #78350F; }
  .q { background: #EFF6FF; border-left: 4px solid #3B82F6; padding: 5px 10px; margin: 4px 0; border-radius: 0 6px 6px 0; font-size: 0.78em; font-weight: 600; color: #1E3A5F; }
  .a { background: #F0FAF4; border-left: 4px solid #00A859; padding: 4px 10px; border-radius: 0 6px 6px 0; margin: 1px 0 6px 0; font-size: 0.76em; color: #0F172A; }
  .bonus { background: #F3E8FF; border-left: 4px solid #9333EA; padding: 4px 10px; border-radius: 0 6px 6px 0; margin: 3px 0; font-size: 0.76em; color: #581C87; font-weight: 600; }
  .ai { background: #F3E8FF; border-left: 4px solid #9333EA; padding: 5px 10px; margin: 4px 0; border-radius: 0 6px 6px 0; font-size: 0.78em; color: #581C87; }
  section::after { display: none; }
  pre ::selection, code ::selection, pre ::-moz-selection, code ::-moz-selection { background: #2563EB; color: #FFFFFF; }
  ::selection { background: #2563EB; color: #FFFFFF; }

  /* Nömrələnmiş dairə badge-lər — agenda/quiz üçün */
  .step-row { display:flex; align-items:flex-start; gap:9px; margin-bottom:8px; }
  .step-num { display:flex; align-items:center; justify-content:center; width:20px; height:20px; background:#00A859; color:white; border-radius:50%; font-size:0.68em; font-weight:700; flex-shrink:0; margin-top:1px; }
  .step-txt { font-size:0.8em; line-height:1.4; padding-top:1px; }
  .qnum { display:inline-flex; align-items:center; justify-content:center; width:17px; height:17px; background:#3B82F6; color:white; border-radius:50%; font-size:0.72em; font-weight:700; margin-right:5px; vertical-align:middle; }
  .qnum-bonus { background:#9333EA; }
  .check { display:inline-block; width:13px; height:13px; border:2px solid #3B82F6; border-radius:3px; margin-right:7px; vertical-align:middle; }

  /* Terraform iş dövrü diaqramı üçün animasiyalar (init→plan→apply→destroy) */
  @keyframes stepGlow {
    0%, 100% { background:#EFF6FF; color:#1E3A5F; border-color:#93C5FD; }
    15%      { background:#00A859; color:#fff; border-color:#00A859; }
  }
  .anim-step1 { animation: stepGlow 5s ease-in-out infinite; animation-delay: 0.0s; }
  .anim-step2 { animation: stepGlow 5s ease-in-out infinite; animation-delay: 1.2s; }
  .anim-step3 { animation: stepGlow 5s ease-in-out infinite; animation-delay: 2.4s; }
  .anim-step4 { animation: stepGlow 5s ease-in-out infinite; animation-delay: 3.6s; }

  /* Copilot suggestion effekti — boz "ghost text" yazılırmış kimi */
  @keyframes ghostType {
    0%, 20% { width: 0; opacity: 0.5; }
    70%, 90% { width: 100%; opacity: 1; }
    100% { width: 100%; opacity: 0.3; }
  }
  .ghost { display:inline-block; overflow:hidden; white-space:nowrap; color:#94A3B8 !important; font-style:italic; animation: ghostType 4s ease-in-out infinite; vertical-align:bottom; }
---

<!-- ============================================================
     ŞABLON — DPE-07 Terraform + GitHub Copilot Modulu
     İstifadə: bu faylı ders-1.md / ders-2.md kimi kopyala,
     aşağıdakı nümunə slaydları real məzmunla əvəz et.
     Kompilyasiya: marp --html ders-1.md -o ders-1.html
     (--html bayrağı MÜTLƏQDİR — onsuz div-lər silinir, dizayn itir)
     ============================================================ -->

<!-- Slide 1: Title (nümunə) -->
# Terraform + GitHub Copilot
## Dərs 1 — Əsaslar və İlk Kod

<div style="background:#0F172A; border-radius:10px; padding:14px 20px; margin:16px 0; text-align:center;">
  <div style="font-size:0.62em; color:#00A859; font-weight:700; letter-spacing:1.5px; text-transform:uppercase; margin-bottom:7px;">Bu dərsdə</div>
  <div style="font-size:0.78em; color:#E2E8F0; line-height:1.9;">
    GitHub Copilot nədir? &nbsp;·&nbsp; GenAI limitləri &nbsp;·&nbsp; IaC + Terraform<br>
    init → plan → apply → destroy &nbsp;·&nbsp; Copilot ilə ilk layihə (S3 + VPC)
  </div>
</div>


---

<!-- Slide 2: Helper class nümunələri (silinəcək) -->
## Helper Class-lar — İstinad

<div class="t">🎯 .t — tapşırıq / task bloku (mavi)</div>
<div class="r">✅ .r — nəticə / açar fikir bloku (yaşıl)</div>
<div class="warn">⚠️ .warn — xəbərdarlıq bloku (sarı)</div>
<div class="q">❓ .q — sual bloku (mavi)</div>
<div class="a">💡 .a — cavab bloku (yaşıl)</div>
<div class="bonus">🚀 .bonus — bonus / dərin mövzu (bənövşəyi)</div>
<div class="ai">🤖 .ai — Copilot/AI ilə bağlı qeyd (bənövşəyi)</div>

<div style="margin-top:8px;">
  <div class="step-row"><span class="step-num">1</span><span class="step-txt"><b>.step-row/.step-num/.step-txt</b> — nömrələnmiş siyahı</span></div>
</div>

```hcl
# pre bloku — kod nümunəsi (HCL)
resource "aws_s3_bucket" "demo" {
  bucket = "datacras-demo"
}
```

> blockquote — sitat / vacib qeyd

