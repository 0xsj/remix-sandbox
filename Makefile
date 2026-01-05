.PHONY: up down restart logs ps clean backup restore shell-n8n shell-db

# Docker Compose
up:
	docker-compose up -d

up-logs:
	docker-compose up

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up -d

logs:
	docker-compose logs -f

logs-n8n:
	docker-compose logs -f n8n

ps:
	docker-compose ps

# Database
backup:
	@./scripts/backup.sh

restore:
	@./scripts/restore.sh $(file)

# Shell access
shell-n8n:
	docker exec -it n8n-dev /bin/sh

shell-db:
	docker exec -it n8n-postgres psql -U n8n -d n8n

shell-redis:
	docker exec -it n8n-redis redis-cli

# Cleanup
clean:
	docker-compose down -v
	@echo "Volumes removed. Data wiped."

# Health check
health:
	@echo "n8n:     " && curl -s -o /dev/null -w "%{http_code}" http://localhost:5678/healthz || echo "unreachable"
	@echo "postgres:" && docker exec n8n-postgres pg_isready -U n8n -d n8n || echo "unreachable"
	@echo "redis:   " && docker exec n8n-redis redis-cli ping || echo "unreachable"