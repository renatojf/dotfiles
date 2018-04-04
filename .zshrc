# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/rcorrea/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="daveverwer"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# GoPath
export GOPATH=$HOME/Documents/Code/go
export PATH=$GOPATH/bin:$PATH

# Confluent
export CONFLUENT_HOME=~/confluent
export PATH=$HOME/confluent/bin:$PATH

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# MySQL
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias be="bundle exec"

ulimit -n 8192

# ssh agent identity add
ssh-add ~/.ssh/id_rsa

# node setup
eval "$(nodenv init -)"

# keybindings for alt left|right arrow
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# alias for Documents/Code
c() { cd ~/Documents/Code/$1; }
_c() { _files -W ~/Documents/Code -/; }
compdef _c c

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# Docker Kafka Host
if [[ -z "${DOCKER_HOST_IP-}" ]]; then
  docker_host_ip=$(docker run --rm --net host alpine ip address show eth0 | awk '$1=="inet" {print $2}' | cut -f1 -d'/')
  # Work around Docker for Mac 1.12.0-rc2-beta16 (build: 9493)
  if [[ $docker_host_ip = '192.168.65.2' ]]; then
    docker_host_ip=$(/sbin/ifconfig | grep -v '127.0.0.1' | awk '$1=="inet" {print $2}' | cut -f1 -d'/' | head -n 1)
  fi
  export DOCKER_HOST_IP=$docker_host_ip
fi

# internal ip
alias intip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d  ' ' -f 2"
