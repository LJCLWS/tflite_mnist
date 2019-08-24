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
  tensorboard --logdir log_data_quant
else
  echo "-------------- running float mode ------------------"
  tensorboard --logdir log_data
fi
