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
  export runningprank="rm => nope"
  nopelol(){
    echo "Permission Denied"
  }
  alias rm=nopelol
  ;;

3)
  export runningprank="sudo => pw loop"
  sudoloop(){
    echo -n "Password:"
    read -s password
    echo -e "\nSorry, try again."
    echo -n "Password:"
    read -s password
    echo -e "\nSorry, try again."
    echo -n "Password:"
    read -s password
    echo -e "\nSorry, try again."
    echo "sudo: 3 incorrect password attempts"
  }
  alias sudo=sudoloop
  ;;
4)
  export runningprank="exitlol"
  exitlol(){
    echo Are you sure?
  }
  alias exit=exitlol
  ;;
5)
  export runningprank="gitlol"
  gitlol(){
    git --help $@
  }
  alias git=gitlol
  ;;
?)
  export runningprank="none"
  ;;
esac
