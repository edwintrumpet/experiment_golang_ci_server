#!/bin/bash

function main() {
  go run \.
}


function notFound() {
  echo This \command does not exist \in run.sh
}

case $1 in
  '')
    main
    ;;
  run)
    main
    ;;
  *)
    notFound
    ;;
esac
