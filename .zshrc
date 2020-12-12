# Close oh-my-zsh prem warning
export ZSH_DISABLE_COMPFIX=true

# PATH configs
# If you come from bash you might have to change your $PATH.
# User's bin config
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
# brew nano-5.3 config
export PATH=/usr/local/Cellar/nano/5.3/bin:$PATH
# jenv config
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# pyenv config
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$PATH:$HOME/.rvm/bin"
# Rust-lang compiler config
export PATH="$HOME/.cargo/bin:$PATH"
# MySQL server config
export PATH=/usr/local/mysql/bin:$PATH
# System Python 3.8 bin
export PATH=/Users/ivan/Library/Python/3.8/bin:$PATH
# Python 3.9 bin
export PATH=/Users/ivan/Library/Python/3.9/bin:$PATH
# LLVM bin
export PATH=/usr/local/opt/llvm/bin:$PATH

# Library configuration
export LDFLAGS="-L/usr/local/lib"
export CPPFLAGS="-I/usr/local/include"

# Aliases of gcc/clang
alias gcc="gcc-10"
alias g++="g++-10"
alias gpp="g++"
alias lcc="clang"
alias lpp="clang++"

# Aliases of different standard on gcc/clang
alias gc9="gcc -std=c99"
alias gc1="gcc -std=c11"
alias gc7="gcc -std=c17"
alias gp3="g++ -std=c++03"
alias gp1="g++ -std=c++11"
alias gp4="g++ -std=c++14"
alias gp7="g++ -std=c++17"
alias gp20="g++ -std=c++20"
alias lc9="clang -std=c99"
alias lc1="clang -std=c11"
alias lc7="clang -std=c17"
alias lp3="clang++ -std=c++03"
alias lp1="clang++ -std=c++11"
alias lp4="clang++ -std=c++14"
alias lp7="clang++ -std=c++17"
alias lp2a="clang++ -std=c++2a"

# Aliases of proxy
## config for clashX
alias proxy_set="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890; curl ipinfo.io"
alias proxy_unset="unset http_proxy; unset https_proxy; unset all_proxy; curl ipinfo.io"
alias proxy_prefix="https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias ppf=proxy_prefix
alias pp=proxy_prefix
alias p=proxy_prefix

# Aliases of redirecting `ls` to `lsd`
# ref: https://github.com/Peltoche/lsd
alias ls='lsd'

# Shortcut for zsh config
alias zsh_config="vim ~/.zshrc"
alias zsh_redeploy="source ~/.zshrc"

# Config for Makefile C/C++ compiles
alias make_by_gcc="export CC=/usr/local/bin/gcc-10;export CXX=/usr/local/bin/g++-10;export CMAKE_C_COMPILER=/usr/local/bin/gcc-10;export CMAKE_CXX_COMPILER=/usr/local/bin/g++-10"
alias make_by_clang="export CC=/usr/bin/clang;export CXX=/usr/bin/clang++;export CMAKE_C_COMPILER=/usr/bin/local/clang;export CMAKE_CXX_COMPILER=/usr/bin/local/clang++"

# cdd - mkdir a directory and cd into it
function cdd() {
	mkdir -p "$@" && cd "$@"
}

# Homebrew Bottle source
# ref: https://brew.sh/
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/

# Shortcut for .whichrc (sample)
# ref: https://github.com/Yescafe/.whichrc
alias whererc="cd ~/.whichrc"
alias whichrc_push="~/.whichrc/push-all.sh"
alias whichrc_pull="~/.whichrc/pull-all.sh"
alias whichrc_reln="~/.whichrc/auto-ln.sh"

# Conda init zsh
# ref: https://www.anaconda.com/
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ivan/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ivan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ivan/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ivan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# thefuck configuration
# ref: pip install thefuck
eval $(thefuck --alias)

# --- Original file under here --- #

# Path to your oh-my-zsh installation.
export ZSH="/Users/ivan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    rails
    z
    zsh-syntax-highlighting
    zsh-autosuggestions
    sudo
  )

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

