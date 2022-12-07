.SILENT:
CURRENT_DIR=$(shell pwd)

DB_URL=postgresql://postgres:1105@localhost:5432/blog_project?sslmode=disable

swag-init:
	swag init -g api/api.go -o api/docs

start:
	go run cmd/main.go

local-up:
	docker compose --env-file ./.env.docker up -d

.PHONY: start