$content = Get-Content -Path ".\readme.md" -Raw
if ($content -match 'Version: (\d+)') {
    $version = [int]$matches[1]
    $newVersion = $version + 1
    $content -replace "Version: (\d+)", "Version: $newVersion" | Set-Content -Path ".\readme.md"
    Write-Host "Version updated to $newVersion"
} else {
    Write-Host "Version not found in the readme.md file."
}
