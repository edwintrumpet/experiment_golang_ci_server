#!/bin/bash

sufix=""

if [[ $OSTYPE == "msys" ]]; then
  sufix=".exe"
fi

function main() {
  CompileDaemon -exclude-dir=.git -exclude=".#*" -directory=./src -build="go build -o ../bin/server${sufix}" -command="./bin/server${sufix}" --color=true
}

function dockerDev() {
  docker-compose -f docker-compose.dev.yml up -d
}

function dockerProd() {
  docker-compose -f docker-compose.prod.yml up -d
}

function dockerDown() {
  docker-compose -f docker-compose.dev.yml down
}

function dockerDownProd() {
  docker-compose -f docker-compose.prod.yml down
}

function dockerBuildDev() {
  docker-compose -f docker-compose.dev.yml build
}

function dockerBuildProd() {
  docker-compose -f docker-compose.prod.yml build
}

function dockerLogs() {
  docker-compose -f docker-compose.dev.yml logs
}

function dockerLogsProd() {
  docker-compose -f docker-compose.prod.yml logs
}

function runTest() {
  go \test -v ./...
}

function notFound() {
  echo This \command does not exist \in run.sh
}

case $1 in
  '')
    dockerDev
    ;;
  buildDev)
    dockerBuildDev
    ;;
  down)
    dockerDown
    ;;
  logs)
    dockerLogs
    ;;
  runProd)
    dockerProd
    ;;
  buildProd)
    dockerBuildProd
    ;;
  downProd)
    dockerDownProd
    ;;
  logsProd)
    dockerLogsProd
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
