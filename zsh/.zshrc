# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/elunin/.oh-my-zsh

#ZSH_THEME="bullet-train"
ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir_writable virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(pyenv virtualenv status root_indicator background_jobs time)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MODE="nerdfont-complete"
# POWERLEVEL9K_USER_ICON="\uF415" # 
# POWERLEVEL9K_ROOT_ICON="\uF09C"
# POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
# POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
# POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  sublime
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Extra Infinidat stuff

source ~/.venvs/work3/bin/activate

unsetopt correct_all
setopt extendedglob NO_NOMATCH
bindkey '^R' history-incremental-pattern-search-backward
ulimit -n 10240
alias dir="gls --color=auto --group-directories-first -lAhX"

export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export TERM=xterm-256color

export PROJECTOR_BOOTSTRAP_DOWNLOAD_BASE=http://pypi.infinidat.com/media/dists
export PROJECTOR_BOOTSTRAP_SETUP_SOURCE=http://pypi.infinidat.com/media/dists/ez_setup.py

# My aliases

alias rss02="ssh -i ~/.ssh/cs_key cs@rss02"
alias rss06="ssh -i ~/.ssh/cs_key cs@rss06"
alias techsupport="ssh -i ~/.ssh/cs_key cs@tech-support"
alias work="source ~/.venvs/work/bin/activate"
alias work3="source ~/.venvs/work3/bin/activate"
alias work3.7.3="source ~/.venvs/work3.7.3/bin/activate"

# Plugins

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=12'

# PostgreSQL

export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias pg-start='pg_ctl -l $PGDATA/server.log start'
alias pg-stop='pg_ctl stop -m fast'
alias pg-status='pg_ctl status'
alias pg-restart='pg_ctl reload'