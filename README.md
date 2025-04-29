# nuke-windows-bloat
A simple powershell script to remove Crapware in Windows 10/11 such as "Dev Home, Xbox Game Bar" etc.

Makes use of the built-in Powershell cmdlets: `Get-AppxPackage` and `Remove-AppxPackage` so no weird stuff. Only regex and locally install MS package names are used.

Download or save the script raw, use `curl`, `wget` or whatever you want to do. Run it as Admin or it'll ~possibly~ break.

Run it in Powershell and allow script execution if it gives you any issues.

Licenced under the WTFPL licence. ![do what the fuck you want to licence badge small](/wtfpl-badge-2.png "WTFPL Licence")
