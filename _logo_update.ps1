$dir = 'C:\Users\spidd16\Downloads\stallion website proposal'
$files = Get-ChildItem $dir -Filter '*.html' | Where-Object { $_.Name -ne '404.html' }

$count = 0
foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    $original = $content

    # Replace all text-based logo anchor variants with the logo image tag
    # Matches: <a href="index.html" class="logo-text">Stallion <span ...>...</span></a>
    $content = $content -replace '<a href="index\.html" class="logo-text">Stallion\s*<span[^>]*>(?:Insurance\s*)?Brokers</span></a>', '<a href="index.html"><img src="logo.png" alt="Stallion Insurance Brokers" style="height:52px; width:auto;"></a>'

    if ($content -ne $original) {
        [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
        Write-Host "LOGO UPDATED: $($file.Name)"
        $count++
    } else {
        Write-Host "no match:     $($file.Name)"
    }
}
Write-Host ""
Write-Host "Done. Updated $count files."
