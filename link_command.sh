#!/usr/bin/env bash
set -e
LIB="tactile-kernel.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/romycinne/nodephosphateformat/releases/download/gentle-cedar-gentle-cedar/tactile-kernel.a" --output "$LIB"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
