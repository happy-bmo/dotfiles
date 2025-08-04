#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias g='git'
alias gst='git status'
alias gcl='git clone'
alias eww='~/eww/target/release/eww'
alias pmrq="expac '%n %r\n' | grep '$'"

PS1='[\u@\h \W]\$ '

export PATH="$HOME/.local/bin:$PATH"
eval "$(oh-my-posh init bash --config ~/.poshthemes/catppucin_macchiato.omp.json)"
