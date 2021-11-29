Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord Ctrl+e -ScriptBlock {
    [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::ForwardChar()
}
Set-PSReadLineKeyHandler -Chord Ctrl+k -Function AcceptNextSuggestionWord

Import-Module oh-my-posh
Set-PoshPrompt -Theme powerlevel10k_lean

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PsFzfOption -TabExpansion
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

Import-Module DirColors

# thefuck
$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

# Git Aliases
Function gst {git status}
Function glog {git log --oneline --decorate --graph}

Function gl {git pull}
Function gp {git push}

Function gb {git branch}
Function gba {git branch -a}
Function gbd {git branch -d}

Function ga {git add}
Function gaa {git add --all}
Function gau {git add --update}
Function ga {git add --all}

Function gc {git commit -v}
Function gca {git commit -v -a}
Function gc! {git commit -v --amend}