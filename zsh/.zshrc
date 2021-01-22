autoload -Uz colors
colors
export PROMPT="
%{${fg_bold[yellow]}%}${HOST}: %~ %{${reset_color}%}
%{${fg_bold[blue]}%}$ %{${reset_color}%}"

# git setting
RPROMPT="%{%}%{%}"
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%{${fg_bold[red]}%}+"
zstyle ':vcs_info:*' formats "%{${fg_bold[green]}%}%c%u[%b]%f%{${reset_color}%}"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# vim on terminal
set -o vi

unamestr=$(uname)
if [[ "$unamestr" == "Linux" ]];then
	platform="linux";
fi
if [[ "$unamestr" == "Darwin" ]]; then
	platform="mac";
fi

alias c='clear'
alias d='docker'
alias di='docker images'
alias dp='docker ps'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gcl='git clone'
alias gf='git fetch -p -a'
alias gi='git init'
alias gl='git log --oneline --name-only'
alias gm='git checkout master'
alias gp='git push'
alias gpl='git pull'
alias gr='git rebase'
alias gri='git rebase -i'
alias grh='git reset HEAD'
alias gs='git status'
alias gsa='git submodule add'
alias gsh='git stash'
alias gt='git tree'
alias la='ls -a'
alias ll='ls -l'

alias ls='ls --color=auto'
if [[ $platform == "linux" ]]; then
	unset CLICOLOR
	unset LSCOLORS
elif [[ $platform == "mac" ]]; then
	unalias ls
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxbxegedabagacad
fi

alias md='mkdir -p'
alias nv='nvidia-smi'
alias p='python'
alias t='tmux'
alias v='vim'
alias vg='vim ~/.gitconfig'
alias vs='vim ~/.ssh/config'
alias vt='vim ~/.tmux.conf'
alias vv='vim ~/.vimrc'
alias vz='vim ~/.zshrc; source ~/.zshrc'
