
# =========================================================
# STALLION FOOTER UPDATE SCRIPT
# Replaces old footer CSS + HTML across all pages
# =========================================================

$files = @(
  "about.html",
  "contact.html",
  "claims.html",
  "get-a-quote.html",
  "resources.html",
  "motor-insurance.html",
  "medical-insurance.html",
  "life-insurance.html",
  "property-insurance.html",
  "liability-insurance.html",
  "agriculture-insurance.html"
)

$baseDir = "C:\Users\spidd16\Downloads\stallion website proposal"

# ---- NEW FOOTER CSS ----
$newCSS = @"
    /* ===================== NEW FOOTER REDESIGN ===================== */
    .footer {
      background: #060F1E;
      color: #8A96A8;
      padding: 0;
      border-top: 3px solid var(--accent);
      position: relative;
    }
    .footer-body { padding: 64px 0 40px; }
    .footer-grid {
      display: grid;
      grid-template-columns: 1.8fr 1fr 1fr 1.4fr 1.6fr;
      gap: 40px;
      margin-bottom: 0;
    }
    .footer-brand {}
    .footer-logo {
      font-family: var(--font-heading);
      font-size: 2rem;
      color: var(--white);
      text-transform: uppercase;
      font-weight: 800;
      display: inline-block;
      margin-bottom: 12px;
      letter-spacing: 1px;
      text-decoration: none;
    }
    .footer-logo span { color: var(--accent); }
    .footer-tagline-badge {
      display: block;
      width: fit-content;
      align-items: center;
      gap: 6px;
      background: rgba(201,149,42,0.12);
      border: 1px solid rgba(201,149,42,0.3);
      color: var(--accent);
      font-size: 0.72rem;
      font-weight: 600;
      letter-spacing: 1.5px;
      text-transform: uppercase;
      padding: 4px 10px;
      border-radius: 20px;
      margin-bottom: 16px;
    }
    .footer-brand p { font-size: 0.9rem; line-height: 1.7; color: #6B7A8D; margin-bottom: 24px; }
    .footer-social { display: flex; gap: 10px; margin-bottom: 24px; }
    .footer-social a {
      display: inline-flex;
      width: 38px; height: 38px;
      border-radius: 50%;
      border: 1.5px solid rgba(255,255,255,0.12);
      color: #8A96A8;
      align-items: center;
      justify-content: center;
      font-size: 0.9rem;
      transition: all 0.3s ease;
      text-decoration: none;
    }
    .footer-social a:hover { border-color: var(--accent); color: var(--accent); transform: translateY(-3px); background: rgba(201,149,42,0.1); }
    .footer-wa-cta {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: #1B7A3E;
      color: var(--white);
      font-size: 0.85rem;
      font-weight: 600;
      padding: 9px 18px;
      border-radius: 50px;
      text-decoration: none;
      transition: 0.3s;
    }
    .footer-wa-cta:hover { background: #146131; transform: translateY(-2px); color: var(--white); }
    .footer-wa-cta i { font-size: 1rem; }
    .footer-col h4 {
      color: var(--white);
      font-family: var(--font-body);
      font-size: 0.75rem;
      font-weight: 700;
      letter-spacing: 2px;
      text-transform: uppercase;
      margin-bottom: 20px;
      padding-bottom: 12px;
      border-bottom: 1px solid rgba(255,255,255,0.06);
      position: relative;
    }
    .footer-col h4::after {
      content: '';
      display: block;
      width: 24px;
      height: 2px;
      background: var(--accent);
      margin-top: 8px;
    }
    .footer-col ul { list-style: none; padding: 0; margin: 0; }
    .footer-col ul li { margin-bottom: 10px; }
    .footer-col ul a {
      color: #6B7A8D;
      font-size: 0.9rem;
      text-decoration: none;
      transition: all 0.25s;
      display: inline-flex;
      align-items: center;
      gap: 0;
    }
    .footer-col ul a:hover { color: var(--white); padding-left: 8px; }
    .footer-contact-item {
      display: flex;
      gap: 12px;
      align-items: flex-start;
      margin-bottom: 14px;
    }
    .footer-contact-icon {
      width: 32px; height: 32px;
      background: rgba(201,149,42,0.1);
      border-radius: 50%;
      display: flex; align-items: center; justify-content: center;
      flex-shrink: 0;
      color: var(--accent);
      font-size: 0.8rem;
    }
    .footer-contact-item span, .footer-contact-item a {
      color: #6B7A8D;
      font-size: 0.88rem;
      line-height: 1.5;
      text-decoration: none;
      transition: color 0.2s;
    }
    .footer-contact-item a:hover { color: var(--accent); }
    .footer-newsletter p { font-size: 0.88rem; color: #6B7A8D; margin-bottom: 16px; line-height: 1.6; }
    .footer-newsletter-form { display: flex; flex-direction: column; gap: 10px; }
    .footer-newsletter-form input {
      background: rgba(255,255,255,0.04);
      border: 1px solid rgba(255,255,255,0.1);
      border-radius: 6px;
      padding: 11px 14px;
      color: var(--white);
      font-family: var(--font-body);
      font-size: 0.88rem;
      outline: none;
      transition: border-color 0.3s;
    }
    .footer-newsletter-form input::placeholder { color: #4A5568; }
    .footer-newsletter-form input:focus { border-color: var(--accent); }
    .footer-newsletter-form button {
      background: var(--accent);
      color: var(--white);
      border: none;
      border-radius: 6px;
      padding: 11px 14px;
      font-family: var(--font-body);
      font-size: 0.88rem;
      font-weight: 600;
      cursor: pointer;
      transition: 0.3s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .footer-newsletter-form button:hover { background: #b58322; }
    .footer-newsletter-note { font-size: 0.75rem; color: #4A5568; margin-top: 8px; display: flex; align-items: center; gap: 5px; }
    .footer-newsletter-note i { color: var(--accent); }
    .footer-divider { border: none; border-top: 1px solid rgba(255,255,255,0.05); margin: 0; }
    .footer-bottom { background: #030A12; padding: 20px 0; text-align: center; font-size: 0.82rem; }
    .footer-bottom-inner { display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 12px; }
    .footer-irau-badge { display: inline-flex; align-items: center; gap: 6px; color: #8A96A8; font-size: 0.8rem; }
    .footer-irau-badge i { color: var(--accent); font-size: 1rem; }
    .footer-copyright { color: #4A5568; }
    .footer-credit a { color: var(--accent); text-decoration: none; font-weight: 600; }
    .footer-credit a:hover { text-decoration: underline; }
    @media(max-width: 1100px) {
      .footer-grid { grid-template-columns: 1fr 1fr 1fr; }
      .footer-brand { grid-column: 1 / -1; }
      .footer-newsletter { grid-column: span 3; }
    }
    @media(max-width: 700px) {
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .footer-brand { grid-column: 1 / -1; }
      .footer-newsletter { grid-column: 1 / -1; }
      .footer-bottom-inner { flex-direction: column; text-align: center; }
    }
    @media(max-width: 480px) {
      .footer-grid { grid-template-columns: 1fr; }
    }
    /* ===================== END FOOTER REDESIGN ===================== */
"@

# ---- NEW FOOTER HTML ----
$newHTML = @"
  <!-- Footer -->
  <footer class="footer">
    <div class="footer-body">
      <div class="container">
        <div class="footer-grid">

          <!-- Brand Column -->
          <div class="footer-brand">
            <a href="index.html" class="footer-logo">Stallion <span>Brokers</span></a>
            <span class="footer-tagline-badge"><i class="fa-solid fa-shield-check"></i> IRAU Licensed Broker</span>
            <p>Uganda's preferred provider of bespoke risk management and insurance advisory services for individuals, families, and businesses across East Africa.</p>
            <div class="footer-social">
              <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
              <a href="#" aria-label="LinkedIn"><i class="fa-brands fa-linkedin-in"></i></a>
              <a href="#" aria-label="Twitter/X"><i class="fa-brands fa-x-twitter"></i></a>
              <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
              <a href="#" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a>
            </div>
            <a href="https://wa.me/256751365747?text=Hello%20Stallion%20Insurance" class="footer-wa-cta" target="_blank">
              <i class="fa-brands fa-whatsapp"></i> Chat on WhatsApp
            </a>
          </div>

          <!-- Quick Links -->
          <div class="footer-col">
            <h4>Quick Links</h4>
            <ul>
              <li><a href="index.html">Home</a></li>
              <li><a href="about.html">About Us</a></li>
              <li><a href="get-a-quote.html">Get a Quote</a></li>
              <li><a href="claims.html">Make a Claim</a></li>
              <li><a href="resources.html">Resources &amp; Blog</a></li>
              <li><a href="contact.html">Contact Us</a></li>
            </ul>
          </div>

          <!-- Products -->
          <div class="footer-col">
            <h4>Our Products</h4>
            <ul>
              <li><a href="motor-insurance.html">Motor Insurance</a></li>
              <li><a href="medical-insurance.html">Medical Insurance</a></li>
              <li><a href="life-insurance.html">Life Insurance</a></li>
              <li><a href="property-insurance.html">Property Insurance</a></li>
              <li><a href="liability-insurance.html">Liability Insurance</a></li>
              <li><a href="agriculture-insurance.html">Agriculture Insurance</a></li>
            </ul>
          </div>

          <!-- Contact Info -->
          <div class="footer-col">
            <h4>Contact Info</h4>
            <div class="footer-contact-item">
              <div class="footer-contact-icon"><i class="fa-solid fa-location-dot"></i></div>
              <span>Plot 11, Martyrs Lane, Ntinda<br>Minister&rsquo;s Village, Kampala, Uganda</span>
            </div>
            <div class="footer-contact-item">
              <div class="footer-contact-icon"><i class="fa-solid fa-phone"></i></div>
              <span><a href="tel:+256751365747">+256 751 365 747</a><br><a href="tel:+256200995562">+256 200 995 562</a></span>
            </div>
            <div class="footer-contact-item">
              <div class="footer-contact-icon"><i class="fa-solid fa-envelope"></i></div>
              <a href="mailto:info@stallion.co.ug">info@stallion.co.ug</a>
            </div>
            <div class="footer-contact-item">
              <div class="footer-contact-icon"><i class="fa-solid fa-clock"></i></div>
              <span>Mon &ndash; Fri: 8:00 AM &ndash; 5:00 PM<br>Saturday: 9:00 AM &ndash; 1:00 PM</span>
            </div>
          </div>

          <!-- Newsletter -->
          <div class="footer-col footer-newsletter">
            <h4>Stay Informed</h4>
            <p>Join thousands of Ugandans receiving expert insurance insights and market updates monthly.</p>
            <form class="footer-newsletter-form" onsubmit="event.preventDefault(); this.querySelector('button').innerHTML='<i class=\'fa-solid fa-check\'></i> Subscribed!'; this.querySelector('button').style.background='#1B7A3E';">
              <input type="email" placeholder="Your email address" required>
              <button type="submit"><i class="fa-solid fa-paper-plane"></i> Subscribe</button>
            </form>
            <p class="footer-newsletter-note"><i class="fa-solid fa-lock"></i> No spam, ever. Unsubscribe anytime.</p>
          </div>

        </div>
      </div>
    </div>

    <hr class="footer-divider">

    <div class="footer-bottom">
      <div class="container footer-bottom-inner">
        <div class="footer-irau-badge">
          <i class="fa-solid fa-shield-check"></i>
          Regulated by the Insurance Regulatory Authority of Uganda (IRAU)
        </div>
        <p class="footer-copyright">&copy; 2026 Stallion Insurance Brokers Limited. All Rights Reserved.</p>
        <p class="footer-credit">Designed by <a href="https://blactec.ug" target="_blank">BlacTec &mdash; blactec.ug</a></p>
      </div>
    </div>
  </footer>
"@

$processed = 0
$errors = 0

foreach ($file in $files) {
    $path = Join-Path $baseDir $file
    if (-not (Test-Path $path)) {
        Write-Host "SKIP (not found): $file"
        continue
    }

    $content = Get-Content $path -Raw -Encoding UTF8

    # --- 1. Replace old footer CSS ---
    # Pattern: match from "/* Footer */" comment to the end of the last @media block in the footer section
    # We'll use a simpler approach: find and replace known CSS patterns

    # Replace old .footer { background: var(--primary) ... styles
    $oldCSSPatterns = @(
        '(?s)/\* Footer \*/.*?\.footer-bottom img \{[^}]+\}',
        '(?s)/\* Footer \*/.*?border-top: 1px solid rgba\(255,255,255,0\.05\); \}',
        '(?s)/\* Footer \*/.*?font-size: 0\.85rem; \}[\s\n]*(?=\s*/\* |\s*\.footer-contact|\s*$)'
    )

    $cssReplaced = $false
    # Simple approach: find the footer CSS block and replace
    if ($content -match '(?s)(    /\* Footer \*/\r?\n.*?\.footer-bottom \{[^\}]+\})') {
        $content = $content -replace '(?s)(    /\* Footer \*/\r?\n.*?\.footer-bottom-inner \{[^\}]+\}|    /\* Footer \*/\r?\n.*?border-top: 1px solid rgba\(255,255,255,0\.05\); \}\r?\n    \.footer-bottom img \{[^\}]+\}|    /\* Footer \*/\r?\n.*?border-top: 1px solid rgba\(255,255,255,0\.05\); \})', $newCSS
        $cssReplaced = $true
    }

    # Simpler: just do a targeted replace of the "/* Footer */" block
    if ($content -match '    /\* Footer \*/') {
        # Find footer CSS block - replace from /* Footer */ to (but not including) the next /* comment or end of style
        $content = $content -replace '(?s)    /\* Footer \*/.*?(?=    /\* [A-Z]|\s*</style>)', "$newCSS`n"
        $cssReplaced = $true
    }

    # --- 2. Replace old footer HTML ---
    # Remove the old <footer>...</footer> block  
    $oldFooterPattern = '(?s)  <!-- Footer -->\s*<footer class="footer">.*?</footer>'
    if ($content -match $oldFooterPattern) {
        $content = $content -replace $oldFooterPattern, $newHTML
        Write-Host "UPDATED: $file"
        $processed++
    } else {
        # Try alternative footer pattern (without comment)
        $altPattern = '(?s)<footer class="footer">.*?</footer>'
        if ($content -match $altPattern) {
            $content = $content -replace $altPattern, $newHTML
            Write-Host "UPDATED (alt): $file"
            $processed++
        } else {
            Write-Host "WARNING - Footer HTML not found: $file"
            $errors++
        }
    }

    # Write back
    [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
}

Write-Host ""
Write-Host "Done. Processed: $processed | Errors: $errors"
