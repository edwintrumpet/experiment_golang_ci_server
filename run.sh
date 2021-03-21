#!/bin/bash

sufix=""

if [[ $OSTYPE == "msys" ]]; then
  sufix=".exe"
fi

function main() {
  CompileDaemon -exclude-dir=.git -exclude=".#*" -directory=./src -build="go build -o ../bin/server${sufix}" -command="./bin/server${sufix}" --color=true
}

function runTest() {
  go \test -v ./...
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
  test)
    runTest
    ;;
  *)
    notFound
    ;;
esac
