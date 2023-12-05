$currentVersion = (Get-Content "README.md" | Select-String "version: [0-9]+\.[0-9]+\.[0-9]?" -AllMatches).Matches[0].Groups[1].Value
echo $currentVersion
# $newVersion = $currentVersion.Split(".")[-1] + 1
# $newVersion = $currentVersion.Substring(0, $currentVersion.Length - 2) + $newVersion
# (Get-Content "README.md" -Raw) | Set-Content -Value "version: $newVersion"