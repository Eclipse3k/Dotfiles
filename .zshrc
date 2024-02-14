autoload -U compinit; compinit

source $HOME/.config/zsh/aliases 

_comp_options+=(globdots) # With hidden files
source $HOME/.config/zsh/completion.zsh

fpath=($HOME/.config/zsh/prompt $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
source /home/jorge/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
