#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

PORT="${PORT:-8080}"
URL="http://127.0.0.1:${PORT}"

echo "漸字稿系統啟動中：${URL}"
echo "按 Ctrl+C 可停止服務。"

if command -v open >/dev/null 2>&1; then
  (sleep 1 && open "${URL}") >/dev/null 2>&1 &
fi

python3 -m http.server "${PORT}" --bind 127.0.0.1
