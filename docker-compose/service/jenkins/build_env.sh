#!/bin/bash
apt-get update && \
apt-get install -y build-essential wget && \
rm -rf /var/lib/apt/lists/*