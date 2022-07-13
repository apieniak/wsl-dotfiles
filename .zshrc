source ~/antigen.zsh

#Load the oh-my-zsh's library and antigen bundles.
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle greymd/docker-zsh-completion
antigen theme tjkirch
antigen apply

# Load FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set BAT as MANPAGER
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"

# Load SSH Key
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh

# Git: Delete local branches
gdb() {
 git branch --merged | grep -v \* | xargs git branch -D
}

# FZF: Enter Preview mode with bat
fzfp() {
 fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'
}