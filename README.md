# nuke-windows-bloat
A simple powershell script to remove crap in Windows10/11 such as "Dev Home, Xbox Game Bar" etc.

I got sick and tired of bindows bullshit that daddy bill gate$ keeps pushing on us who DON't want it, so I created this script to remove that useless junk.

Makes use of the built-in Powershell cmdlets: `Get-AppxPackage` and `Remove-AppxPackage` so no funny stuff. Only regex and M$ package names are used.

Download or save the script raw, use `curl`, `wget` or whatever you want to do. Run it as Admin or it'll probably break.

Run it in Powershell and allow script execution if Micro$hit Bind0ws gives you any issues.

Licenced under the WTFPL licence. ![do what the fuck you want to licence badge small](/wtfpl-badge-2.png "WTFPL Licence")
