#!/usr/bin/env pwsh
# Update kit catalog from YAML
# Usage: .\scripts\update_catalog.ps1

Write-Host "Updating kit catalog from YAML..." -ForegroundColor Cyan

python scripts/generate_kit_catalog.py

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSuccess! Generated files:" -ForegroundColor Green
    Write-Host "  - kits/kits_catalog.md (complete table)" -ForegroundColor Gray
    Write-Host "  - kits/kit_catalog_section.md (README section)" -ForegroundColor Gray
    Write-Host "`nREADME.md has been updated." -ForegroundColor Green
} else {
    Write-Host "`nError: Script failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
