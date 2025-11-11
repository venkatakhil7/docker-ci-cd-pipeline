#!/usr/bin/env bash
set -euo pipefail

IMAGE="$1"

echo "Starting container for tests..."
CID=$(docker run -d -p 5000:5000 "${IMAGE}")

echo "Waiting for app to be ready..."
for i in {1..20}; do
  if curl -s http://localhost:5000/health | grep -q "ok"; then
    echo "Health endpoint OK"
    break
  fi
  sleep 1
done

echo "Testing root endpoint..."
curl -s http://localhost:5000/ | grep -q "Hello Akhil" && echo "Root endpoint OK"

echo "Stopping and removing container..."
docker stop "$CID" >/dev/null
docker rm "$CID" >/dev/null

echo "Tests passed ✅"
