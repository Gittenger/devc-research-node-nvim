#!/usr/bin/env bash
set -euo pipefail

docker compose up -d dev
docker compose exec --user node dev bash -lc '
    node --version;
    if ! command -v yarn >/dev/null; then npm install -g yarn; fi;
    yarn install;
'
docker compose exec dev bash -lc 'nvim .'
