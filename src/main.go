package main

import (
	"github.com/edwintrumpet/experiment_golang_ci_server/src/routes"
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	routes.Set(router)

	router.Run(":80")
}
