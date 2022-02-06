.DEFAULT_GOAL := build

.PHONY: build
build: ## Сборка
	@docker-compose up -d --build

.PHONY: shell
shell: ## Запустить сеанс bash в контейнере php
	@docker-compose exec php bash
