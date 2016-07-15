runprank=$[ $RANDOM % 10 ]


case $runprank in
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
?)
  export runningprank="none"
  ;;
esac
