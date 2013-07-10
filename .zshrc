# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jtriley"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git svn python colored-man screen)
plugins=(git svn python colored-man tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


# Old Bashrc Conf -- TankyWoo
# disable CTRL+S from sending XOFF
stty ixany
stty ixoff -ixon

TZ='Asia/Shanghai'; export TZ
export PATH=${PATH}:/sbin:/usr/local/bin:
export LANG='en_US.UTF-8'
alias ll='ls -al'
alias lls='ls -alSh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color'

EDITOR='vim'

# Less Colors for Man Pages
export GROFF_NO_SGR=1
export LESS_TERMCAP_mb=$'\E[01;34m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_md=$'\E[01;34m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_so=$'\E[1;44;33m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
export LESS_TERMCAP_us=$'\E[1;32m' # begin underline

pycd(){ cd $(dirname $(python -c "print __import__('$1').__file__")); }

ntpupdate(){sudo ntpdate cn.pool.ntp.org}

alias treepy='tree -I "*.pyc"'

alias t='python ~/.t/t.py --task-dir ~/.tasks --list tasks'
alias tpush='cd ~/.tasks/; git add tasks .tasks.done; git commit -m "add tasks"; git push; cd -'
alias tpull='cd ~/.tasks/; git pull; cd -'
alias tst='cd ~/.tasks/; git status; cd -'
#alias s='python ~/.t/t.py --task-dir ~/.tasks --list someday'
alias ks='python ~/.t/t.py --task-dir ~/.tasks --list works; cd -'
alias kspush='cd ~/.tasks/; git add works .works.done; git commit -m "add works"; git push; cd -'
alias kspull='cd ~/.tasks/; git pull; cd -'
alias ksst='cd ~/.tasks/; git status; cd -'

alias treepy='tree -I "*.pyc"'

#alias less='less --LINE-NUMBERS'

#alias dpcli='cd /home/tankywoo/.tasks/;dropbox-cli filestatus'
alias vix='vi --cmd "set expandtab"'

#alias tmux="TERM=screen-256color-bce tmux"
alias tmux="tmux -2"
