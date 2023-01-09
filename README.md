# Windows PowerShell Customization

# [Scoop for Windows](https://scoop.sh/#/)

Install scoop command-line installer for windows:

```powershell
iwr -useb get.scoop.sh | iex
```

For installations that require user administrator, install `sudo`. Shows UAC popup window. An Aproximation of the unix sudo command:

```powershell
scoop install sudo
```
# [Neovim](https://neovim.io/)

Optional installacion of a vim editor:

```powershell
scoop install neovim gcc
```

# [Oh My Posh](https://ohmyposh.dev/)

Installation of a prompt theme for the shell:

```powershell
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

> :memo: Copy the content from `/.config/powershell/` of the [repository]() to `~\.config\powershell\`


Open the next file:

```powershell
nvim $PROFILE.CurrentUserCurrentHost
```
Next add this line to the file:

```
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```
Install Oh My Posh (Prompt theme engine):

```powershell
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
```
# Terminal Icons

Install Terminal Icons:

> :memo: working directory `~\.conf\poweshell`

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Import-Module Terminal-Icons
```

# Directory Jumper

Install `z` directory jumper. Tracks most used directories and makes use of regex for matches:

```powershell
Install-Module -Name z -Force
```

Exemple of use:

```powershell
cd ~\.config\powershell
cd ~
z powershell
```

# Autocompletion

if not installed by default proceed to installation:

```powershell
Install-Module -Name PsReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

Set-PSReadLineOption -PredictionsSource History

Set-PSReadLineOption -PredictionViewStyle ListView
```



