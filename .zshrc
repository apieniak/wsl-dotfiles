# Load kubectl auto-completion
source <(kubectl completion zsh)

# Load the oh-my-zsh's library and antigen bundles.
source ~/antigen.zsh
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

# Starts ssh-agent if it's not started, and then starts VS Code
vscode() {
    ssh-add -l > /dev/null 2>&1
    if [ ! $? -eq 0 ]; then
        echo -n "Cannot connect to an agent"
        agents=`pgrep ssh-agent | wc -l`
        if [ $agents != "0" ]; then
            echo -n " and another agent is already running, killing it"
            killall ssh-agent
        fi
        echo ""
        echo -n "Starting a new agent: "
        eval "$(ssh-agent)"
        ssh-add
    fi
    code .
}