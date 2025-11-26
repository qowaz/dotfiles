# If you come from bash you might have to change your $PATH.
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin/eval:/Users/bweinerth/Library/Python/3.9/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# ZSH options
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"

# Update behavior
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit

# Aliases
alias books="cd /Users/bweinerth/My\ Drive/Books/ && ll"
alias c='clear'
alias cdrepo="cd ~/repo"
alias gco="git checkout"
alias gs='git status'
alias h='history'
alias python=python3
alias vim="nvim"
alias zshconf="nvim ~/.zshrc"
alias zshr="source ~/.zshrc"

# Functions
function mkcd() { mkdir -p "$1" && cd "$1" }

# Custom Gruvbox-inspired prompt
PROMPT=$'%{$fg[blue]%}┌[%{$fg[green]%}%n%{$fg[cyan]%}@%{$fg[magenta]%}%m%{$fg[blue]%}]─[%{$fg[yellow]%}%~%{$fg[blue]%}]\n└─%{$fg[red]%}$ %{$reset_color%}'

# Right-side prompt for git information
RPROMPT='$(git_prompt_info)%{$fg[gray]%}[%{$fg[cyan]%}%D{%H:%M:%S}%{$fg[gray]%}]%{$reset_color%}'

# Git prompt configuration
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

echo "Welcome to MacOS, $(whoami)!"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
