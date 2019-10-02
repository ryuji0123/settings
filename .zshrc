export PATH="$HOME/bin:$PATH"

autoload -Uz colors
colors
PROMPT="
 %{${fg_bold[yellow]}%}%~%{${reset_color}%} 
 ${fg_bold[blue]}$ ${reset_color}"


 HISTFILE="$HOME/.zsh_history"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

autoload -Uz compinit
compinit

setopt share_history

setopt auto_cd
setopt correct

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

# git setting
#RPROMPT="%{${fg[blue]}%}%{${reset_color}%}"
RPROMPT="%{%}%{%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
