#!/bin/bash
LOG=$1
$(dirname $0)/f3write "${@:2}" 2>&1 | tee -a "${LOG}" && \
  echo -e "\n\n" >> "${LOG}" && \
  $(dirname $0)/f3read  "${@:2}" 2>&1 | tee -a "${LOG}"
