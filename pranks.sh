# Pranks
# by Marty Naselli
# If this is running, you've been had.
# spread for lulz

: ${RUNPRANK:=$[ $RANDOM % 10 ]}

case $RUNPRANK in
1)
  export runningprank="ssh => starwars"
  starwars(){
    telnet towel.blinkenlights.nl
  }
  alias ssh=starwars
  ;;

2)
  export runningprank="rm > nope"
  nopelol(){
    echo "Permission Denied"
  }
  alias rm=nopelol
  ;;

3)
  export runningprank="sudo > pw loop"
  sudoloop(){
    echo -n "Password:"
    read -s password
    echo -e "\nSorry, try again."
    echo -n "Password:"
    read -s password
    echo -e "\nSorry, try again."
    echo -n "Password:"
    read -s password
    echo "sudo: 3 incorrect password attempts"
  }
  alias sudo=sudoloop
  ;;
4)
  export runningprank="exit prank"
  exitprank(){
    echo "Are you sure?"
    read -s next_command
    echo "Are you really sure?"
    read -s next_command
    echo "Are you really really sure?"
    read -s next_command
    echo "Are you really really really sure?"
    read -s next_command
    echo "Are you really really really really sure?"
    read -s next_command
    echo "Nah"
  }
  alias exit=exitprank
  ;;
5)
  export runningprank="git > git --help"
  gitprank(){
    git --help $@
  }
  alias git=gitprank
  ;;
6)
  export runningprank="ls > ls -la | less"
  lsprank(){
    ls -la | less
  }
  alias ls=lsprank
  ;;
7)
  export runningprank="cat > head /dev/random"
  catprank(){
    head -30 /dev/urandom
  }
  alias cat=catprank
  ;;
8)
  export runningprank="tail > -r"
  tailprank(){
    tail -r $@
  }
  alias tail=tailprank
  ;;
?)
  export runningprank="none"
  ;;
esac
