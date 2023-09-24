#!/bin/bash
set -x
func() {
    echo "Usage:"
    echo "test.sh [-j S_DIR] [-m D_DIR]"
    echo "Description:"
    echo "S_DIR,the path of source."
    echo "D_DIR,the path of destination."
    exit -1
}
 
upload="false"
 
while getopts 'h:jiln:m:u' OPT; do
    case $OPT in
        j) S_DIR="$OPTARG";echo "here1";;
        m) 
          D_DIR="$OPTARG"
          echo "here2"
          ;;
        u) upload="true"
          echo "here3"
          ;;
        h) func;;
        ?) func;;
    esac
done
 
echo "SDIR=$S_DIR"
echo "D_DIR=$D_DIR"
echo "upload=$upload"

set +x