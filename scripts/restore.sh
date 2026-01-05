#!/usr/bin/env bash
set -euo pipefail

# Load env vars
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

BACKUP_FILE="${1:-}"

if [ -z "$BACKUP_FILE" ]; then
  echo "Usage: ./scripts/restore.sh <backup_file>"
  echo ""
  echo "Available backups:"
  ls -lh ./backups/*.sql 2>/dev/null || echo "  No backups found in ./backups/"
  exit 1
fi

if [ ! -f "$BACKUP_FILE" ]; then
  echo "Error: Backup file not found: $BACKUP_FILE"
  exit 1
fi

echo "WARNING: This will overwrite the current n8n database."
read -p "Are you sure? (y/N): " confirm

if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "Aborted."
  exit 0
fi

echo "Restoring from: $BACKUP_FILE"

cat "$BACKUP_FILE" | docker exec -i n8n-postgres psql \
  -U "${POSTGRES_USER:-n8n}" \
  -d "${POSTGRES_DB:-n8n}"

echo "Restore complete."
echo "You may want to restart n8n: make restart"