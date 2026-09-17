# Pin DISCLAIMER.md on every STP-KAS repo. Run in PowerShell with gh auth.
#   gh auth status
#   .\scripts\pin-disclaimer.ps1

$ErrorActionPreference = "Stop"
$owner = "STP-KAS"
$branch = "main"
$msg = @"
Pin experimental-only disclaimer on every repo.

Why: https://x.com/kaspaglobal/status/2100536064683176270
"@

$disclaimer = @"
# Disclaimer

**Experimental only. Not a product.**

This repository is independent desk work. It is not Kaspa core, not a token, and not a production application. Wallet integrations are not included.

There is no spendable native L1 stable on Kaspa, and no credible alternative on the horizon. Sequencing commitments on L1 (KIP-21) are a consensus primitive. A settled sequencing product for applications is not in place. Until both the unit of account and the sequencing path are settled, building production dapps on Kaspa is not a useful allocation of time or capital.

Filter every GitHub claim that says it “shipped”:
https://x.com/kaspaglobal/status/2100536064683176270

Open the link. Classify it as a proposal, a development branch, a release, or an activation announcement. A node release is not wallet support.
"@

$banner = "> **Experimental only. Not a product.** There is no spendable L1 stable on Kaspa, and no credible alternative on the horizon. Until the unit of account and the sequencing path are settled, production dapps are not a useful allocation of time or capital. [KASPAglobal](https://x.com/kaspaglobal/status/2100536064683176270) · [DISCLAIMER.md](DISCLAIMER.md)`n`n"

$bio = "Experimental only. No L1 stable; sequencing unsettled. Production Kaspa dapps are not a useful spend of time or capital."
Write-Host "Setting GitHub bio (160-char cap)..."
gh api user -X PATCH -f bio=$bio | Out-Null

$repos = gh api "users/$owner/repos?per_page=100" --jq ".[].name"
foreach ($repo in $repos) {
  Write-Host "Pin $owner/$repo"
  $tmp = Join-Path $env:TEMP "stp-disclaimer-$repo.md"
  Set-Content -Path $tmp -Value $disclaimer -Encoding utf8NoBOM
  gh api -X PUT "repos/$owner/$repo/contents/DISCLAIMER.md" `
    -f message=$msg `
    -f branch=$branch `
    -f content=([Convert]::ToBase64String([IO.File]::ReadAllBytes($tmp))) `
    2>$null
  if ($LASTEXITCODE -ne 0) {
    $sha = gh api "repos/$owner/$repo/contents/DISCLAIMER.md" --jq .sha 2>$null
    if ($sha) {
      gh api -X PUT "repos/$owner/$repo/contents/DISCLAIMER.md" `
        -f message=$msg -f branch=$branch -f sha=$sha `
        -f content=([Convert]::ToBase64String([IO.File]::ReadAllBytes($tmp))) | Out-Null
    }
  }
  $readme = gh api "repos/$owner/$repo/contents/README.md" --jq ".content,.sha" 2>$null
  if ($LASTEXITCODE -eq 0 -and $readme) {
    $raw = gh api "repos/$owner/$repo/contents/README.md" --jq .content
    $shaR = gh api "repos/$owner/$repo/contents/README.md" --jq .sha
    $text = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String(($raw -replace "`n","")))
    if ($text -notmatch "Experimental only\. Not a product") {
      $new = $banner + $text
      $tmpR = Join-Path $env:TEMP "stp-readme-$repo.md"
      Set-Content -Path $tmpR -Value $new -Encoding utf8NoBOM
      gh api -X PUT "repos/$owner/$repo/contents/README.md" `
        -f message=$msg -f branch=$branch -f sha=$shaR `
        -f content=([Convert]::ToBase64String([IO.File]::ReadAllBytes($tmpR))) | Out-Null
    }
  }
}
Write-Host "Done. Bio + DISCLAIMER.md on every public repo."
