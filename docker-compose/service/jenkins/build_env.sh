#!/bin/bash
apt-get update && \
apt-get install -y build-essential wget && \
rm -rf /var/lib/apt/lists/* && \
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
source $HOME/.cargo/env && \
cargo install wasm-pack