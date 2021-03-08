#!/bin/bash



print_header_wrapper()
{
  echo "                                                                           "
  GREEN='\033[0;32m'
  NC='\033[0m' # No Color
  printf "${GREEN}###########################################################################${NC}\n"
  printf "${GREEN}$1${NC}\n"
  eval "$2"
  echo "                                                                           "
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then

  echo "LOG_ENVIRONMET SHELL SCRIPT USAGE:"
  echo "[options]"
  echo "./log_environment.sh [opt = optional]"
  echo "[op=-pu]: Print INFO About proccessor units: CPU/GPU"

else

  clear
  echo "                                                                           "
  echo " Environment setup on this computer:                                       "
  print_header_wrapper "GCC" "gcc --version"
  print_header_wrapper "CLANG" "clang --version"
  print_header_wrapper "CLANG-TIDY" "clang-tidy --version"
  print_header_wrapper "LINUX STANDARD BASE (DISTRIBUTION)" "lsb_release -a"
  print_header_wrapper "CMAKE" "cmake --version"
  print_header_wrapper "GBD" "gdb --version"
  
  if [[ "$1" == "-pu" ]]
  then
    print_header_wrapper "CPU" "lscpu"
    print_header_wrapper "GPU" "lshw -C display"  
  fi

fi
