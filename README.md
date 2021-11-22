# My Powershell Configurations

[TOC]

## Prerequisites

1. powershell core 7.1+
2. install at least one of [nerd-fonts](https://github.com/ryanoasis/nerd-fonts/releases). I prefer [CascadiaCode](https://github.com/ryanoasis/nerd-fonts/releases/v2.1.0/CascadiaCode.zip).
3. download [fzf](https://github.com/junegunn/fzf/releases) binary and make sure to put it in PATH.
4. install [thefuck](https://github.com/nvbn/thefuck), which Require python pip.

```powershell
pip install thefuck
```

## Install

Install Modules:

```powershell
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module PSFzf -Scope CurrentUser -Force
Install-Module ZLocation -Scope CurrentUser -Force
```

put this file at `$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1` then reload:

```powershell
. $PROFILE
```
