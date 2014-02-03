# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# If logging in over ssh, log straight into screen
if [ -z "$STY" -a -n "$SSH_TTY" ]; then
   exec screen -R
fi
