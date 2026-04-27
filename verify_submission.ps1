$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

$checks = @(
    @{ Path = 'GitHub_Link.txt'; Type = 'file' },
    @{ Path = 'Lab_01/reflection/reflection.md'; Type = 'file' },
    @{ Path = 'Lab_02/reflection/reflection.md'; Type = 'file' },
    @{ Path = 'Lab_03/reflection/reflection.md'; Type = 'file' },
    @{ Path = 'Lab_04/reflection/reflection.md'; Type = 'file' },
    @{ Path = 'Lab_05_event_pipeline/reflection/reflection.md'; Type = 'file' },
    @{ Path = 'Lab_04/docker-compose.yml'; Type = 'file' },
    @{ Path = 'Lab_04/product-service'; Type = 'dir' },
    @{ Path = 'Lab_04/order-service'; Type = 'dir' }
)

function Test-ScreenshotCount([string]$dirPath, [int]$minCount) {
    if (-not (Test-Path $dirPath)) { return 0 }
    $items = Get-ChildItem -Path $dirPath -File -ErrorAction SilentlyContinue |
        Where-Object { $_.Extension -in '.png', '.jpg', '.jpeg', '.webp' }
    return @($items).Count
}

$results = New-Object System.Collections.Generic.List[string]
$fail = 0

$results.Add("Submission verification report - $(Get-Date -Format s)")
$results.Add('')

foreach ($check in $checks) {
    $exists = Test-Path $check.Path
    if ($exists) {
        $results.Add("PASS  $($check.Path)")
    }
    else {
        $results.Add("FAIL  $($check.Path)")
        $fail++
    }
}

$shotRules = @(
    @{ Name = 'Lab 1 screenshots'; Path = 'Lab_01/screenshots'; Min = 3 },
    @{ Name = 'Lab 2 screenshots'; Path = 'Lab_02/screenshots'; Min = 4 },
    @{ Name = 'Lab 3 screenshots'; Path = 'Lab_03/screenshots'; Min = 5 },
    @{ Name = 'Lab 4 screenshots'; Path = 'Lab_04/screenshots'; Min = 5 },
    @{ Name = 'Lab 5 screenshots'; Path = 'Lab_05_event_pipeline/screenshots'; Min = 3 }
)

$results.Add('')
foreach ($rule in $shotRules) {
    $count = Test-ScreenshotCount -dirPath $rule.Path -minCount $rule.Min
    if ($count -ge $rule.Min) {
        $results.Add("PASS  $($rule.Name): $count/$($rule.Min)+")
    }
    else {
        $results.Add("FAIL  $($rule.Name): $count/$($rule.Min)")
        $fail++
    }
}

$results.Add('')
if ($fail -eq 0) {
    $results.Add('OVERALL: PASS - Ready to upload ZIP and submit Teams entry.')
}
else {
    $results.Add("OVERALL: FAIL - $fail issue(s) remaining.")
}

$reportPath = Join-Path $root 'SUBMISSION_STATUS.md'
$results | Set-Content -Path $reportPath -Encoding UTF8

$results | ForEach-Object { Write-Output $_ }
Write-Output ''
Write-Output "Report saved to: $reportPath"

if ($fail -gt 0) {
    exit 1
}
