package main

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/cors"
	"log"
)

func main() {
	app := fiber.New()

	app.Use(cors.New()).Get("/", func(c *fiber.Ctx) error {
		return c.Status(200).JSON(&fiber.Map{
			"success": "Local Development Woot 👋!",
		})
	})

	err := app.Listen("0.0.0.0:3000")
	if err != nil {
		log.Println(err)
	}
}
