# Prompt
#
# i.e of theme from oh my posh webiste
# oh-my-posh init pwsh --config "$(scoop prefix oh-my-posh)\themes\paradox.omp.json" | Invoke-Expression

$omp_config = Join-Path $PSScriptRoot ".\takuya.omp.json"
oh-my-posh init pwsh --config $omp_config  | Invoke-Expression

# ALias
Set-Alias vim nvim
Set-Alias g git
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'E:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'E:\Program Files\Git\usr\bin\less.exe'
