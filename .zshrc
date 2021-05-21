#If you come from bash you might have to change your $PATH.
#  export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kennymark/.oh-my-zsh
export PATH="~/.composer/vendor/bin:$PATH"
export CLICOLOR=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="wedisagree"
# ZSH_THEME="cloud"
ZSH_THEME="theunraveler"
DEFAULT_USER="$USER"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions docker heroku history ng vscode copyfile)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export TERM="xterm-256color"
export LSCOLORS="ExfxcxdxhxhxhxhxExExEx"

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
alias bashrc='code ~/.bashrc'
alias zshrc='code ~/.zshrc'
alias .rc='code ~/.zshrc'

## npm aliases
alias ni='npm install -S'
alias nid='npm install -D '
alias nu='npm uninstall'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nr='npm run'
alias npminit='npm init -y'
alias ns='npm start'
alias flush-npm="rm -rf node_modules && npm i"
alias start='npm run start'
alias dev='npm run dev'
alias build='npm run build'
alias deploy='npm run deploy'
alias test='npm run test'
alias nlist='npm list --depth=0'
alias nlistg='npm list -g --depth=0'

## git aliases
alias init='git init -y'
alias add='git add'
alias log='git log --oneline'
alias commit='git commit -am'
alias checkout='git checkout'
alias checkoutb='git checkout -b'
alias clone='git clone'
alias push='git push'
alias status='git status'
alias deleteb='git branch -d'
alias hlog="heroku logs --tail -a $@"
alias l='ls -a'
alias clr='clear'
alias pyserve='python -m SimpleHTTPServer 8000'
alias delnm="find . -name "node_modules" -type d -prune -print | xargs du -chs"

alias speedtest='speed-test'
alias kp='killall -9 node'
alias desktop='cd ~/Desktop'
alias projects='cd ~/Desktop/Projects'
alias downloads='cd ~/Downloads'
alias react="cd ~/Desktop/Projects/React-apps"
alias reactn="cd ~/Desktop/Projects/React-native-apps"
alias inspect="node --inspect app.js"
alias gitignore="touch .gitignore && echo ./node_modules \n  > .gitignore"
alias genreadme="npx readme-md-generator"
alias adonis='node ace'
alias bin='cd ~/.Trash'
alias next-lite="git clone git@gitlab.com:kennymark/next-starter-lite.git"
alias pip="pip"
alias pg-config="cd /usr/local/var/postgres/ && ll"
alias bs="brew services $@"
alias dc='docker-compose'
alias cat="bat"

create() {
  $projects
  command mkdir $1
  cd $1
  command touch index.js
  npm init -y
  genreadme
  echo "Done creating project $1"
}

export PATH=/Library/PostgreSQL/13/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
