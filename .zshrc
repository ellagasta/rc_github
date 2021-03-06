# Path to your oh-my-zsh installation.
  export ZSH=/Users/ethan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git command-not-found coffee common-aliases last-working-dir npm web-search wd)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mr='mvn release:clean release:prepare release:perform'
alias mi='mvn clean install'
alias gd='git diff'
alias gcm='git checkout master'
alias gs='git status'
alias 'git-gud'='git reset --hard'
alias pread='psql postgres://kamcord:EBqkaVYnG2uPNH6v@data-service-prod.cxwiod6cevwr.us-east-1.rds.amazonaws.com:5432/kamcord'

alias preads='psql postgres://kamcord:EBqkaVYnG2uPNH6v@data-service-staging.cxwiod6cevwr.us-east-1.rds.amazonaws.com/kamcord'
alias pokego='cd ~/Downloads/PokemonGo-Map-master; python ./example.py -a ptc -u etgreat -p ryhtrsy -l "301 Howard St, San Francisco" -st 10 -i "pidgey, zubat, rattata, spearow, doduo"'

git-rekt() {
    dir=$(git rev-parse --show-toplevel)
    url=$(git remote get-url origin)
    cd $dir
    reponame=$(basename "$PWD")
    cd ..
    rm -rf $dir
    git clone $url
    cd $reponame
}

git() {
    if [ "$1" = "gud" ]
    then
        git-gud
    elif [ "$1" = "rekt" ]
    then
        git-rekt
    else
       /usr/bin/git "$@"
    fi
}
