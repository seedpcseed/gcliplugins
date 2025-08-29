$repo = "https://github.com/seedpcseed/gcliplugins" 
$temp = New-TemporaryFile
Remove-Item $temp

git clone $repo $temp | Out-Null
$target = Join-Path $HOME ".gemini/commands"
New-Item -ItemType Directory -Force -Path $target | Out-Null
Copy-Item -Path (Join-Path $temp "base/.gemini/commands/*") -Destination $target -Recurse -Force
Remove-Item -Recurse -Force $temp
Write-Output "Gemini CLI base commands installed to $target"
