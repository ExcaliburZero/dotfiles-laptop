# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Enable Vim keybindings for Bash
set -o vi

# Muse developer tools
export PATH="$PATH:/home/chris/Muse"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/chris/Muse"

# Git aware prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Change Vim to NeoVim
alias vim=nvim
alias vi=nvim
