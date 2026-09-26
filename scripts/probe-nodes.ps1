# Probe kaspa bot / tn10 surfaces. No seeds. No wallet files.
$ErrorActionPreference = 'Continue'
$ua = @{ 'User-Agent' = 'Mozilla/5.0 kaspa-master-file-probe' }
$payTo = 'kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx'

function Test-Tcp([string]$HostName, [int]$Port, [int]$Ms = 4000) {
  try {
    $c = New-Object System.Net.Sockets.TcpClient
    $iar = $c.BeginConnect($HostName, $Port, $null, $null)
    $ok = $iar.AsyncWaitHandle.WaitOne($Ms, $false)
    $open = $ok -and $c.Connected
    $c.Close()
    if ($open) { return 'OPEN' } else { return 'CLOSED' }
  } catch {
    return "FAIL $($_.Exception.Message)"
  }
}

function Get-Json([string]$Url) {
  try {
    return Invoke-RestMethod -Uri $Url -Headers $ua -TimeoutSec 20
  } catch {
    return @{ error = $_.Exception.Message }
  }
}

$main = Get-Json 'https://api.kaspa.org/info/blockdag'
$tn10 = Get-Json 'https://api-tn10.kaspa.org/info/blockdag'
$bal = Get-Json "https://api-tn10.kaspa.org/addresses/$payTo/balance"
$sompi = 0
if ($bal.balance) { $sompi = [decimal]$bal.balance }

[pscustomobject]@{
  whenUtc = (Get-Date).ToUniversalTime().ToString('s') + 'Z'
  kaspaBotMainnet = 'retired 2026-09-25 (node stopped and wiped 16:46 CEST; endpoint gone, not probed)'
  deskTn10Grpc = Test-Tcp '127.0.0.1' 16210 3000
  deskTn10Borsh = Test-Tcp '127.0.0.1' 17210 2000
  deskTn10Json = Test-Tcp '127.0.0.1' 18210 2000
  mainnetNetwork = $main.networkName
  mainnetDaa = $main.virtualDaaScore
  tn10Network = $tn10.networkName
  tn10Daa = $tn10.virtualDaaScore
  payTo = $payTo
  payToSompi = "$sompi"
  payToTkas = [math]::Round(([double]$sompi) / 1e8, 8)
  authority = 'When kaspa-master-file is named, use kaspa bot + tn10 bot. Do not ask. No seeds. Do not paste TN10 into kaspa bot.'
} | ConvertTo-Json -Depth 4
