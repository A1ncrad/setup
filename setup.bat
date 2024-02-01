winget install Microsoft.WindowsTerminal
winget install nodejs

winget install vscode 
code

winget install Mozilla.Firefox
firefox



winget install Telegram.TelegramDesktop 
$telegram = 'C:\Users\timur\AppData\Roaming\Telegram Desktop';
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $telegram, "Machine")
telegram


winget install Valve.Steam 
$steam = 'C:\Program Files (x86)\Steam';
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $steam, "Machine")
steam


winget install Discord.Discord
$discord = 'C:\Users\timur\AppData\Local\Discord'
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $discord, "Machine")
discord



$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);


wsl --install
corepack --enable



cd ..
rm *.lnk setup start.bat
exit