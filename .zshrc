# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# theme: powerlevel10k
source ~/.whichrc/zsh/powerlevel10k/powerlevel10k.zsh-theme

# plugins:
# zsh-autosuggestions
source ~/.whichrc/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-syntax-highlighting
source ~/.whichrc/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-completions
fpath=(~/.whichrc/zsh/zsh-completions/src $fpath)

# PATH configs
# If you come from bash you might have to change your $PATH.
# User's bin config
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
# brew nano-5.4 config
export PATH=/usr/local/Cellar/nano/5.4/bin:$PATH
:<<COMMENT
# jenv config
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# pyenv config
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
COMMENT
# RVM config
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
# My shells
export PATH=$HOME/opt/sbin:$PATH
# RISC-V toolchain
export PATH=/usr/local/opt/riscv-gnu-toolchain/bin:$PATH

# git tools PATH and MANPATH
export PATH=/Users/ivan/Development/repos/cms-git-tools:$PATH
export MANPATH=/Users/ivan/Development/repos/cms-git-tools/docs/man:$MANPATH

# Library configuration
export LDFLAGS="-L/usr/local/lib"
export CPPFLAGS="-I/usr/local/include"

# Aliases of editors
alias v="vim"
alias e="emacs -nw"
alias a="atom"
alias s="code"

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
#alias ls='lsd'
#alias lt="ls --tree"

# Aliases of colorls
# ref: https://github.com/athityakumar/colorls
alias lc="colorls -l --sd"
alias lca="colorls -lA --sd"
alias lct="colorls -lA --sd --tree"

# iTerm2 shell integration
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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

# Aliases of conda commands
alias condaa="conda activate"
alias condad="conda deactivate"
alias condai="conda install"

# thefuck configuration
# ref: pip install thefuck
eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
