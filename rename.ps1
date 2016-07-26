$newName = $args[0]
$oldName = "CoreExampleLibrary"
Get-ChildItem -Filter "*$oldName*" -Recurse | Rename-Item -NewName {$_.name -replace $oldName, $newName }
Get-ChildItem -Recurse -Include "*.cs","*.xproj","*.json","*.md","*.cmd" |
 ForEach-Object { $a = $_.fullname; ( Get-Content $a ) |
   ForEach-Object { $_ -replace $oldName, $newName }  | 
   Set-Content $a }