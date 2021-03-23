<h1 align="center">Golang CI server</h1>

<p align="center">
  <img src="https://github.com/edwintrumpet/experiment_golang_ci_server/workflows/Tests/badge.svg" alt="Tests badge">
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/devicons/devicon/2809b567852a4648062a2d3e7c1c531367458c0b/icons/go/go-original.svg" alt="go" width="40" height="40"/>
</p>

Experiment to do continuous integration and continuous deployment with Go using docker, AWS and GitHub actions

## Scripts

- **`./run.sh`** => Execute API for development with Docker
- **`./run.sh down`** => Stop and remove Docker container in development mode
- **`./run.sh logs`** => View Docker logs in development mode
- **`./run.sh buildDev`** => Build Docker image for development
- **`./run.sh runProd`** => Execute API for production with Docker
- **`./run.sh buildProd`** => Build Docker image for production
- **`./run.sh downProd`** => Stop and remove Docker container in production mode
- **`./run.sh logsProd`** => View Docker logs in production mode
- **`./run.sh run`** => Execute API for development without Docker
- **`./run.sh test`** => Run tests

## Develop

### Using Docker

Do you need to have installed Docker

If you do not have a built image you must build it

```bash
./run.sh buildDev
```

To run in develop mode

```bash
./run.sh
```

API will be listening in http://localhost:8080

To stop and remove docker container

```bash
./run.sh down
```

To view docker logs

```bash
./run.sh logs
```

### Without Docker

Do you need to have installed Go

To run in develop mode

```bash
./run.sh run
```

API will be listening in http://localhost:8080

## Deploy

If you do not have a built image you must build it

```bash
./run.sh buildProd
```

To run in production mode

```bash
./run.sh runProd
```

API will be listening in http://localhost:8080

To stop and remove docker container

```bash
./run.sh downProd
```

To view docker logs

```bash
./run.sh logsProd
```

## Author

Edwin García  
spark.com.co@gmail.com

## License

[MIT](./LICENSE)
