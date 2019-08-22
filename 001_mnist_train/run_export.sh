#!/bin/sh
set -e
set -x

# float�Ńg���[�j���O���邩�Aquant�Ńg���[�j���O���邩
FLAG_QUANT=false

while getopts qf OPT
do
  case $OPT in
    "q" ) FLAG_QUANT=true  ;;
    "f" ) FLAG_QUANT=false ;;
  esac
done

if $FLAG_QUANT ; then
  echo "-------------- running quant mode ------------------"
  python3 mnist_quant_export.py
else
  echo "-------------- running float mode ------------------"
  python3 mnist_float_export.py
fi
