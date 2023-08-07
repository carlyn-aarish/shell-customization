#! /bin/bash
echo "FROM_BASHRC"

# Customize prompt info and colors
turquoise=$(tput setaf 44);
purple=$(tput setaf 57);
pink=$(tput setaf 204);
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1+="\[${turquoise}\]\u";  # username
PS1+="\[${white}\]@";
PS1+="\[${purple}\]\h";  # host
PS1+="\[${white}\] ";
PS1+="\[${pink}\]\W";  # working directory
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";  # (and reset color)
export PS1;

# Customize colors of directories
export LSCOLORS="ExfxcxdxBxegecabagacad"
alias ls='ls -lGH'  # This shows in list format, follow symlinks colorized

# ls -la shortcut
alias ll='ls -laGH'
