# Switch to ZSH shell
if test -t 1; then
exec zsh
fi

# Load FZF
 [ -f ~/.fzf.bash ] && source ~/.fzf.bash