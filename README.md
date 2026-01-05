# n8n-dev

Local development environment for n8n workflow automation.

## Quick Start

```bash
# 1. Copy environment file
cp .env.example .env

# 2. Start services
make up

# 3. Open n8n
open http://localhost:5678
```

## Services

| Service  | Port | Description         |
| -------- | ---- | ------------------- |
| n8n      | 5678 | Workflow editor/API |
| Postgres | 5440 | Database            |
| Redis    | 6380 | Cache (queue ready) |

## Commands

```bash
make up          # Start containers (detached)
make up-logs     # Start with logs attached
make down        # Stop containers
make restart     # Restart all
make logs        # Tail all logs
make logs-n8n    # Tail n8n logs only
make ps          # Show container status
make health      # Check service health

make backup      # Backup database
make restore file=backups/n8n_xxx.sql  # Restore from backup

make shell-n8n   # Shell into n8n container
make shell-db    # Postgres CLI
make shell-redis # Redis CLI

make clean       # Stop and remove volumes (DATA LOSS)
```

## Project Structure

```
n8n-dev/
├── docker-compose.yml
├── .env
├── .env.example
├── Makefile
├── config/n8n/
├── scripts/
│   ├── backup.sh
│   └── restore.sh
├── frontend/          # Future: headless Next.js client
└── deploy/
    ├── terraform/     # Future: infra provisioning
    └── k8s/           # Future: Kubernetes manifests
```

## Backups

Backups are stored in `backups/` (gitignored).

```bash
make backup
# -> backups/n8n_2026-01-05_123456.sql

make restore file=backups/n8n_2026-01-05_123456.sql
```

## Future Roadmap

- [ ] Headless Next.js frontend (n8n as backend engine)
- [ ] Queue mode with workers
- [ ] Terraform provisioning
- [ ] Kubernetes deployment
- [ ] Custom tools integration
