PHONY:up
up:
	@docker compose --file compose.yml up --build
down:
	@docker compose --file compose.yml down --remove-orphans  