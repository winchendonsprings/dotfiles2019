# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#ZSH_THEME="simple"
ZSH_THEME="simple-ryan"
#ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
adb
git
git-extras
cp
colored-man-pages
command-not-found
colorize
dirhistory
dirpersist
docker
extract
fasd
gulp
history
history-substring-search
npm
rsync
systemd
ssh-agent
tmux
vagrant
vagrant-prompt
vi-mode
ubuntu
z
)
##########################
###### formerly used plugins by me 
#
#
#
#
#
#
#
#
##########################

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='nvim'
export BROWSER='/opt/firefox-developer/firefox/firefox-bin'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ohmyzsh='nvim ~/.oh-my-zsh'
alias zshconfig='nvim ~/.zshrc'
alias i3config='nvim ~/.i3/config'
alias vimconfig='vim ~/.nvimrc'
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias tmuxconfig='nvim ~/.tmux.conf'
alias nv='nvim'
alias nvd='nvim -d'
alias p='pwd'
alias rm='rm -i'
alias ag='ag --smart-case' #case insensitive unless a caps is used
alias note='vim /home/ry/Dropbox/note.txt'
alias art='cat /home/ry/.art'
alias clock='tty-clock -c -C 7 -f "%^a %^b %d %Y"'
alias clock2='watch --no-title -n 1 date +"%H:%M:%S_%A_%B_%d_%Y"'
alias battery='watch --no-title -n 1 acpi'
alias dropbox-status='watch -n 1 --no-title dropbox status'
alias ack='ack-grep --ignore-case'
alias bitlbee-on='bitlbee -c /home/ry/.bitlbee/bitlbee.conf -d /home/ry/.bitlbee'
#alias colors='./.dotfiles/colortest.sh -w'
alias upgrade='sudo git-extras update && vundle-update && upgrade_oh_my_zsh && sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
alias offlineimap-bl='offlineimap -u blinkenlights'
alias weather='sh ~/Documents/weatherpdx.sh'
alias music='mpg123 --title --control'
alias sudo aptitude='nocorrect sudo aptitude'
alias aptitude='nocorrect aptitude'
alias sudo='nocorrect sudo'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias k9='kill -9'
alias k15='kill -15'
alias watch='watch --no-title'
#alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30' #show frequntly used commands
alias freq='cut -f1 -d" " ~/.zsh_history | sort | uniq -c | sort -nr | head -n 30' #show frequntly used commands
alias l='ls -lah' #show only folders
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
#alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''  #recursively list all of the files in a directory - tree does this better
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
#alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lr='ls -trlaFh'   #sorted by date,reverse,show type,human readable
alias mailsync='sh /home/ry/Documents/mailsync.sh'
alias archivemail-ry='sh /home/ry/Documents/archivemail-ry.sh'
alias mplayer-invert='mplayer -vf eq2=1:-1'
#alias suspend='sudo pm-suspend && i3lock -c 000000'
alias suspend='systemctl suspend && $HOME/.i3locker.sh'
#alias hibernate='sudo pm-hibernate && i3lock -c 000000'
alias hibernate='sudo systemctl hibernate && $HOME/.i3locker.sh'
alias listvms='echo "----------ALL VIRTUAL MACHINES----------" && VBoxManage list vms && echo "----------RUNNING VIRTUAL MACHINES----------" && VBoxManage list runningvms'
alias nmcli='nmcli -m multiline -f all'
alias hosts='echo "updating hosts" && python $HOME/hosts-adblock/updateHostsFile.py -a -f -r -e gambling fakenews'
alias seattle='cd /home/ry/openvpn-regular && sudo openvpn US\ Seattle.ovpn'
alias seattle256='cd /home/ry/openvpn-strong && sudo openvpn US\ Seattle.ovpn'
alias siliconvalley='cd /home/ry/openvpn2 && sudo openvpn US\ Silicon\ Valley.ovpn'
alias texas='cd /home/ry/openvpn2 && sudo openvpn US\ Texas.ovpn'

memcpu() { echo "*** Top 10 cpu eating process ***"; ps auxf | sort -nr -k 3 | head -10;
  echo  "*** Top 10 memory eating process ***"; ps auxf | sort -nr -k 4 | head -10;  }

#source git extras
source $HOME/.git-extras/etc/git-extras-completion.zsh 

#ryan npm permissions fix
export PATH=~/.npm-global/bin:$PATH
