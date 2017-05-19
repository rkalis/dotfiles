1. Open an administrative shell
2. Install chocolatey
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```
3. Navigate to this folder
4. Install all packages
```
cinst -y .\packages.config
```
