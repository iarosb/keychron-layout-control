#!/bin/bash

case $1 in
  -m)
    echo 1 | sudo tee /sys/module/hid_apple/parameters/fnmode
    echo -n $'\tswitched to multimedia\n'
    ;;

  -fn)
    echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
    echo -n $'\tswitched to functional keys\n'
    ;;

  --help)
    echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
    ;;

  --h)
    echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
    ;;

  *)
    echo -n $'\t"-m" for multimedia\n\t"-fn" for functional\n'
    ;;
esac
