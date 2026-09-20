# Pin DISCLAIMER.md and the standard GitHub README footer on every STP-KAS repo.
# Run in PowerShell with gh auth:
#   gh auth status
#   python .\scripts\pin-disclaimer.py

$ErrorActionPreference = "Stop"
$py = Join-Path $PSScriptRoot "pin-disclaimer.py"
python $py @args
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
