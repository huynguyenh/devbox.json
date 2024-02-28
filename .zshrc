export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/hnh/.cargo/bin
if [ -f '/Users/hnh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hnh/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/hnh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hnh/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(devbox global shellenv --init-hook)"

alias g="git"
alias ll="eza -alF"
alias ls="eza -al"
alias c="clear"
