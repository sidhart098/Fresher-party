<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Bankura Christian College — Fresher Party</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
  <style>
    :root{
      --bg: #0b0f19;
      --card: #111827;
      --muted: #9CA3AF;
      --text: #E5E7EB;
      --accent: #7C3AED;
      --accent-2:#22D3EE;
      --ring: rgba(124,58,237,.35);
      --ok:#10B981;
      --err:#EF4444;
    }
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto,Arial,Helvetica,sans-serif;
      color:var(--text);
      background:
        radial-gradient(1200px 600px at 10% -10%, rgba(34,211,238,.15), transparent 60%),
        radial-gradient(1000px 500px at 110% 10%, rgba(124,58,237,.18), transparent 60%),
        var(--bg);
      line-height:1.6;
    }
    .container{max-width:1100px;margin:0 auto;padding:24px}
    .hero{
      min-height: 86dvh;
      display:grid;
      place-items:center;
      text-align:center;
    }
    .card{
      background: linear-gradient(180deg, rgba(255,255,255,.04), rgba(255,255,255,.02));
      border:1px solid rgba(255,255,255,.08);
      border-radius:24px;
      box-shadow: 0 20px 60px rgba(0,0,0,.35);
      overflow:hidden;
    }
    .hero-card{padding:40px}
    .badge{
      display:inline-flex;gap:8px;align-items:center;
      padding:8px 12px;border-radius:999px;
      background:rgba(124,58,237,.15);
      border:1px solid rgba(124,58,237,.35);
      font-weight:600;
      letter-spacing:.2px;
    }
    h1{
      font-size: clamp(28px, 4.5vw, 54px);
      line-height:1.1;margin:18px 0 6px;font-weight:800;
      text-transform:uppercase;
      letter-spacing:.6px;
    }
    h2{font-size: clamp(18px, 2.2vw, 28px);margin:0;color:#F3F4F6;font-weight:700;letter-spacing:.4px}
    .grid{display:grid;gap:14px;margin:28px 0;grid-template-columns: repeat(3, minmax(0,1fr));}
    .info{
      background: rgba(255,255,255,.03);
      border:1px solid rgba(255,255,255,.08);
      border-radius:14px;padding:14px;
    }
    .info .label{display:block;color:var(--muted);font-size:12px;text-transform:uppercase;letter-spacing:.18em}
    .info .value{font-weight:600;margin-top:6px}
    .cta{
      display:inline-flex;align-items:center;gap:10px;
      padding:14px 20px;border-radius:14px;
      background: linear-gradient(90deg, var(--accent), var(--accent-2));
      border:0;color:white;font-weight:700;font-size:16px;cursor:pointer;
      box-shadow:0 12px 30px rgba(124,58,237,.35);
      transition: transform .06s ease;
      text-decoration:none
    }
    .cta:active{transform:translateY(1px)}
    /* Section spacing */
    section{scroll-margin-top:24px}
    /* Register page */
    .register{
      padding:38px;margin:60px auto;max-width:780px;
    }
    form{display:grid;gap:18px}
    .field{
      display:grid;gap:8px;
    }
    label{font-weight:600}
    input[type="text"], select{
      width:100%;padding:12px 14px;border-radius:12px;border:1px solid rgba(255,255,255,.14);
      background:rgba(255,255,255,.03);color:var(--text);outline:none;
      transition: box-shadow .15s, border-color .15s;
    }
    input[type="text"]:focus, select:focus{
      border-color:var(--accent);box-shadow:0 0 0 6px var(--ring)
    }
    .choices{display:grid;gap:10px}
    .choice{
      display:flex;align-items:center;gap:12px;
      background:rgba(255,255,255,.03);
      border:1px solid rgba(255,255,255,.08);
      border-radius:12px;padding:10px 12px;cursor:pointer;
    }
    .actions{display:flex;gap:12px;justify-content:flex-end;margin-top:6px}
    .btn{
      padding:12px 16px;border-radius:12px;border:1px solid rgba(255,255,255,.14);
      background:rgba(255,255,255,.04);color:var(--text);cursor:pointer;font-weight:700
    }
    .btn.primary{background:linear-gradient(90deg,var(--accent),var(--accent-2));border:0;color:#fff}
    .note{color:var(--muted);font-size:14px}
    .success{
      display:none;margin-top:10px;padding:12px;border-radius:12px;
      background: rgba(16,185,129,.15);border:1px solid rgba(16,185,129,.35);color:#D1FAE5;font-weight:600
    }
    .error{color:var(--err);font-size:14px;display:none}
    footer{color:var(--muted);text-align:center;padding:30px 0}
    @media (max-width:720px){
      .grid{grid-template-columns:1fr}
      .hero-card{padding:28px}
      .register{margin:28px 0;padding:22px}
    }
  </style>
</head>
<body>
  <!-- PAGE 1: Landing -->
  <section id="home" class="hero container">
    <div class="card hero-card">
      <div class="badge" aria-hidden="true">
        🎉 Official Invitation
      </div>
      <h1>BANKURA CHRISTIAN COLLEGE</h1>
      <h2>NUTRITION DEPARTMENT</h2>
      <h3>FRESHERS PARTY</h3>

      <div class="grid" role="list">
        <div class="info" role="listitem">
          <span class="label">Date & Time</span>
          <span class="value" id="partyDate">Friday, 5 September 2025 · 11:00 AM</span>
        </div>
        <div class="info" role="listitem">
          <span class="label">Venue</span>
          <span class="value">Nutrition Department , Campus</span>
        </div>
        <div class="info" role="listitem">
          <span class="label">Dress Code</span>
          <span class="value">Shree / Punjabe</span>
        </div>
      </div>

      <a class="cta" href="#register" id="joinBtn" aria-label="Join Party">
        JOIN PARTY →
      </a>

      <p class="note" style="margin-top:14px">
        Seniors & faculty welcome the new batch. please register.
      </p>
    </div>
  </section>

  <!-- PAGE 2: Registration -->
  <section id="register" class="container">
    <div class="card register" aria-labelledby="regTitle">
      <h2 id="regTitle" style="margin-top:0">Fresher Party Registration</h2>
      <p class="note">Please fill your details and choose one activity.</p>

      <form id="regForm" novalidate>
        <div class="field">
          <label for="firstName">First Name</label>
          <input id="firstName" name="firstName" type="text" placeholder="e.g., Anjan" autocomplete="given-name" required />
          <div class="error" id="errFirst">Please enter your first name.</div>
        </div>

        <div class="field">
          <label for="lastName">Last Name</label>
          <input id="lastName" name="lastName" type="text" placeholder="e.g., Ghosh" autocomplete="family-name" required />
          <div class="error" id="errLast">Please enter your last name.</div>
        </div>

        <div class="field">
          <label for="semester">Which Semester?</label>
          <select id="semester" name="semester" required>
            <option value="">Select semester…</option>
            <option>1st</option>
            <option>3rd</option>
            <option>5th</option>
          </select>
          <div class="error" id="errSem">Please choose a semester.</div>
        </div>

        <fieldset class="field" style="margin-top:6px">
          <legend style="font-weight:600">Activity (choose one)</legend>
          <div class="choices" role="radiogroup" aria-labelledby="regTitle">
            <label class="choice"><input type="radio" name="activity" value="Poetry" /> Poetry</label>
            <label class="choice"><input type="radio" name="activity" value="Dance" /> Dance</label>
            <label class="choice"><input type="radio" name="activity" value="Singing" /> Singing</label>
            <label class="choice"><input type="radio" name="activity" value="Speech" /> Speech</label>
          </div>
          <div class="error" id="errAct" style="margin-top:6px">Please select an activity.</div>
        </fieldset>

        <div class="actions">
          <a class="btn" href="#home" aria-label="Back to invitation">Back</a>
          <button class="btn primary" type="submit">Submit Registration</button>
        </div>

        <div class="success" id="okMsg">✅ Thank you! Your registration has been received.</div>
      </form>
    </div>
  </section>

  <footer class="container">
    © <span id="year"></span> Bankura Christian College · Fresher Party
  </footer>

  <script>
    // Smooth scroll for in-page links
    document.querySelectorAll('a[href^="#"]').forEach(a=>{
      a.addEventListener('click', e=>{
        const id = a.getAttribute('href').slice(1);
        const el = document.getElementById(id);
        if(el){
          e.preventDefault();
          history.pushState(null, "", "#"+id);
          el.scrollIntoView({behavior:"smooth", block:"start"});
        }
      })
    });

    // Basic client-side validation + fake submit handler
    const form = document.getElementById('regForm');
    form.addEventListener('submit', function(e){
      e.preventDefault();
      let ok = true;

      const f = document.getElementById('firstName');
      const l = document.getElementById('lastName');
      const s = document.getElementById('semester');
      const act = form.querySelector('input[name="activity"]:checked');

      // reset errors
      ['errFirst','errLast','errSem','errAct'].forEach(id=>document.getElementById(id).style.display='none');

      if(!f.value.trim()){document.getElementById('errFirst').style.display='block'; ok=false;}
      if(!l.value.trim()){document.getElementById('errLast').style.display='block'; ok=false;}
      if(!s.value){document.getElementById('errSem').style.display='block'; ok=false;}
      if(!act){document.getElementById('errAct').style.display='block'; ok=false;}

      if(ok){
        // Simulate success (you can POST to your backend here)
        document.getElementById('okMsg').style.display='block';
        form.querySelector('.success').scrollIntoView({behavior:"smooth", block:"center"});
        form.reset();
      }
    });

    // Footer year
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>
</body>
</html>
