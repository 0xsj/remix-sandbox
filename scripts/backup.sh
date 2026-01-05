#!/usr/bin/env bash
set -euo pipefail

# Load env vars
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

BACKUP_DIR="./backups"
TIMESTAMP=$(date +%Y-%m-%d_%H%M%S)
BACKUP_FILE="${BACKUP_DIR}/n8n_${TIMESTAMP}.sql"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "Backing up n8n database..."

docker exec n8n-postgres pg_dump \
  -U "${POSTGRES_USER:-n8n}" \
  -d "${POSTGRES_DB:-n8n}" \
  --clean \
  --if-exists \
  > "$BACKUP_FILE"

echo "Backup saved to: $BACKUP_FILE"
echo "Size: $(du -h "$BACKUP_FILE" | cut -f1)"