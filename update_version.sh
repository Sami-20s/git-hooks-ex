(Get-Content -Path "./readme.md") -replace 'Version: (\d+)', {param($match) "Version: $($match.Groups[1].Value + 1)"} | Set-Content -Path "./readme.md"a
