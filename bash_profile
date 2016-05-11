# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
alias ll='ls -l'
alias lla='ls -la'

export EDITOR=vim

# Disable gnome-ssh-askpass over SSH
[ -n "$SSH_TTY" ] && unset SSH_ASKPASS

# If logging in over ssh and tmux is installed, log straight into tmux
if [ -n "$SSH_TTY" ] && type tmux >/dev/null 2>/dev/null; then
	if tmux has-session -t $USER; then
		exec tmux attach-session -t $USER
	else
		exec tmux new-session -s $USER
	fi
fi

# MacPorts
if [ "$(uname)" == "Darwin" ]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi

