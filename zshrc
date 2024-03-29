# Path to your oh-my-zsh installation.
export ZSH=/Users/kate.beavis/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=bullet-train

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-updagitte (in days).
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
plugins=(git brew macos github zsh-syntax-highlighting)

# User configuration


# export MANPATH="/usr/local/man:$MANPATH"

export PATH="/Users/kate.beavis/.gem/ruby/2.6.0/bin:$PATH"

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

 alias migrate="bundle exec rake db:migrate"
 alias dcm="bundle exec rake db:drop db:create db:migrate"
 alias rs="rails s"
 alias rr="bundle exec rake routes"
 alias be="bundle exec"
 alias start="bundle exec rackup -o secure2.dev.zopa.local -p 8080"
 alias gfu="git fetch upstream master"
 alias grh="git reset --hard upstream/master"
 alias gcmsg="git commit -m"
 alias gs="git stash"
 alias gsa="git stash apply"
 alias fix="git diff --name-only | uniq | xargs code"

 

#! /bin/zsh
# A script to make using 256 colors in zsh less painful.
# P.C. Shyamshankar <sykora@lucentbeing.com>
# Copied from http://github.com/sykora/etc/blob/master/zsh/functions/spectrum/

typeset -AHg FX FG BG

FX=(
    reset     "%{[00m%}"
    bold      "%{[01m%}" no-bold      "%{[22m%}"
    italic    "%{[03m%}" no-italic    "%{[23m%}"
    underline "%{[04m%}" no-underline "%{[24m%}"
    blink     "%{[05m%}" no-blink     "%{[25m%}"
    reverse   "%{[07m%}" no-reverse   "%{[27m%}"
)

for color in {000..255}; do
    FG[$color]="%{[38;5;${color}m%}"
    BG[$color]="%{[48;5;${color}m%}"
done

ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %{$FG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

# Show all 256 colors where the background is set to specific color
function spectrum_bls() {
  for code in {000..255}; do
    print -P -- "$code: %{$BG[$code]%}$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

# Override BulletTrain theme settings
BULLETTRAIN_EXIT_SHOW=true
BULLETTRAIN_PROMPT_CHAR=”❯”
BULLETTRAIN_TIME_BG=128
BULLETTRAIN_DIR_BG=027
BULLETTRAIN_TIME_FG=white
BULLETTRAIN_GIT_UNTRACKED=“%F{magenta}✭%F{black}”
BULLETTRAIN_CONTEXT_BG=128
BULLETTRAIN_CUSTOM_MSG=katebeavis
BULLETTRAIN_CUSTOM_BG=033
BULLETTRAIN_PROMPT_CHAR=→

. `brew --prefix`/etc/profile.d/z.sh

export BUNDLER_EDITOR=“vim”

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

ekslogin() {
  . ~/ekslogin.sh $1 tribe-investors
}

alias k="kubectl"
alias kss="k config use-context uat1-admin"
alias ksp="k config use-context prod1-read"
alias kcu="k config use-context eks-uat"
alias kcp="k config use-context eks-prod"
alias kgp="k get pods -n"
alias kdp="k delete -n"
alias keks="k config use-context eks-uat1-admin"

alias all="yarn && cd client && yarn && .. && cd server && yarn && .."
alias yd="yarn dev"
alias ya="yarn add"
alias remove="cd client && rm -rf node_modules && rm yarn.lock && .. && cd server && rm -rf node_modules && rm yarn.lock && .. && rm -rf node_modules && rm yarn.lock"
alias ysw="yarn && cd packages && cd client && yarn && .. && cd server && yarn && .. && .."
alias pi="pnpm install"
alias pd="pnpm dev"
alias pa="pnpm add"
alias ea="yarn test packages/zeos-native-products/savings-easy-access"


alias yt="yarn test"

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
