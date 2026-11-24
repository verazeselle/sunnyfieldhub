#!/usr/bin/env bash
set -e
LIB="diving-outbox.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/verazeselle/sunnyfieldhub/releases/download/gentle-badger-golden-canyon/diving-outbox.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
