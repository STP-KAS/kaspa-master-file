# Pin DISCLAIMER.md on every STP-KAS repo. Run in PowerShell with gh auth.
#   gh auth status
#   .\scripts\pin-disclaimer.ps1

$ErrorActionPreference = "Stop"
$owner = "STP-KAS"
$branch = "main"
$msg = @"
disclaimer: experimental only. Not a product. No Kaspa Global link. Do not use wallet integrations on this GitHub. STP remains a clown.
"@

$disclaimer = @"
# Disclaimer

**Experimental only. Not a product.** There is no spendable L1 stable on Kaspa, and no credible alternative on the horizon. Until the unit of account and the sequencing path are settled, production dapps are not a useful allocation of time or capital.

Someone posts a Kaspa GitHub link and says it shipped. Open the link.

Does it show a proposal, a development branch, a release, or an activation announcement?

Then check the software you use. If the feature needs wallet support, a node release alone will not put it in your wallet.

Do not use wallet integrations on this GitHub. STP remains a clown. This is a delusional desk, not a wallet kit. Kasware, Kastle, and any in-page inject here are withdrawn. Do not clone them. Do not install them. Pay with a QR code, a ``kaspa:`` URI, or paste a txid. Never a seed.

## Standard GitHub disclaimer

This section is the STP GitHub disclaimer. It is not about the topic of any particular repo.

Intentions are good; thought process is questionable. STP remains delusional. Si vis pacem, para bellum.

Intern at https://sixpack.wtf/  
X: https://x.com/StppStp · GitHub: https://github.com/STP-KAS
"@


$banner = "> **Experimental only. Not a product.** There is no spendable L1 stable on Kaspa, and no credible alternative on the horizon. Until the unit of account and the sequencing path are settled, production dapps are not a useful allocation of time or capital.`n>`n> Do not use wallet integrations on this GitHub. STP remains a clown. [DISCLAIMER.md](DISCLAIMER.md)`n`n"

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
