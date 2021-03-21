#!/bin/bash

function main() {
  go run \.
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
