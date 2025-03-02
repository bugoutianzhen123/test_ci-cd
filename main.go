package main

import "github.com/gin-gonic/gin"

func main() {
	g := gin.Default()

	g.GET("/", func(c *gin.Context) {
		c.String(200, "Hello")
	})

	g.GET("/123", func(c *gin.Context) {
		c.String(200, "Hello 123")
	})
	g.Run(":8080")
}
