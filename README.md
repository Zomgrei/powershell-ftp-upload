#PowerShell FTP Upload

##Information
This script is designed to be used for my Jenkins builds to automatically upload workspaces.

##Usage
```powershell
uploadAll.ps1 -server SERVERURL -username USERNAME -password PASSWORD -sourceDir "c:\path\to\source" -targetDir "remote/path"
```

## Credits
The `ftpFunctions.ps1` file was not made by me (Zomgrei), but by [ruslander](http://www.github.com/ruslander) - however, it was modified by me.

uploadAll.ps1 is by me, to make uploading entire directories via FTP easy.