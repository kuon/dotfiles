#!/usr/bin/env bash

rawurlencode() {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
     c=${string:$pos:1}
     case "$c" in
        [-_.~a-zA-Z0-9] ) o="${c}" ;;
        * )               printf -v o '%%%02x' "'$c"
     esac
     encoded+="${o}"
  done
  echo "${encoded}"
}

if [ "$@" ]
then
  firefox --new-tab https://duckduckgo.com/\?q=$(rawurlencode "$@") &> /dev/null &
  disown
  exit 0
else
  exit 0
fi
