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
    echo Are you sure?
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
?)
  export runningprank="none"
  ;;
esac
