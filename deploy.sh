#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Pulling latest changes..."
git pull

echo "Restarting container..."
docker compose restart marvicons

echo "Done — site is live at http://localhost:8080"
