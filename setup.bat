git config --global user.name="A1ncrad"
git config --global user.email="74133903+A1ncrad@users.noreply.github.com"


winget install Microsoft.WindowsTerminal
winget install nodejs
start cmd /k corepack enable

winget install vscode 
start cmd /k code

winget install Mozilla.Firefox
start cmd /k firefox


winget install KeePassXCTeam.KeePassXC
$keepass = 'C:\Program Files\KeePassXC'
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $keepass, "Machine")
$env:path = $env:path + ";" + $keepass;
keepassxc


winget install Telegram.TelegramDesktop 
$telegram = 'C:\Users\timur\AppData\Roaming\Telegram Desktop'
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $telegram, "Machine")
$env:path = $env:path + ";" + $telegram
telegram


winget install Valve.Steam 
$steam = 'C:\Program Files (x86)\Steam'
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $steam, "Machine")
$env:path = $env:path + ";" + $steam
steam


winget install Discord.Discord
$discord = 'C:\Users\timur\AppData\Local\Discord'
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $discord, "Machine")
$env:path = $env:path + ";" + $discord
discord



$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"}
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout'
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified)


wsl --install

cd ..
rm *.lnk, setup, start.bat

pause 
shutdown /r