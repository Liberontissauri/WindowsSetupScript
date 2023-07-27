echo "installing chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
echo "chocolatey installed successfully"

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
echo "path refreshed for this shell session"

# General Apps
choco install firefox
choco install vlc
choco install winrar
choco install spotify
choco install spicetify-cli
choco install spicetify-marketplace
choco install discord
choco install steam
choco install windirstat
choco install powertoys
choco install autohotkey
choco install bitwarden

# School/Programming Apps
choco install office365business
choco install microsoft-teams.install --params "'/NoAutoStart'"
choco install foxitreader
choco install obsidian
choco install microsoft-windows-terminal
choco install vscode
choco install wsl

echo "Finished installing chocolatey apps"

echo "installing oh my posh..."
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
echo "installation successfull!"

echo "Downloading Installers for non chocolatey apps..."

mkdir "non_choco"

Invoke-WebRequest -Uri "https://ers-desktop.escolavirtual.pt/download/flavor/full/channel/stable/windows_64" -OutFile "./non_choco/evSmartBook.exe"
Invoke-WebRequest -Uri "https://github.com/rainmeter/rainmeter/releases/download/v4.5.17.3700/Rainmeter-4.5.17.exe" -OutFile "./non_choco/rainmeter.exe"
Invoke-WebRequest -Uri "https://github.com/Droptop-Four/Basic-Version/raw/main/Droptop%20Basic%20Version.rmskin" -OutFile "./non_choco/droptop4.exe"
mkdir "non_choco/taskbarXI"
Invoke-WebRequest -Uri "https://github.com/ChrisAnd1998/TaskbarXI/releases/download/1.0.4.0/TaskbarXI.exe" -OutFile "./non_choco/taskbarXI/taskbarXI.exe"
Invoke-WebRequest -Uri "https://github.com/ChrisAnd1998/TaskbarXI/releases/download/1.0.4.0/TaskbarXIMFCGUI.exe" -OutFile "./non_choco/taskbarXI/taskbarXI_config.exe"