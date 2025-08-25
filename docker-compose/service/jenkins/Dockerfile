FROM jenkins/jenkins:latest

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential wget \
    && rm -rf /var/lib/apt/lists/*

USER jenkins

RUN curl -sSL https://sh.rustup.rs | sh -s -- -y \
    && echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$HOME/.profile" \
    && echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$HOME/.bashrc" \
    && $HOME/.cargo/bin/cargo install wasm-pack \
    && rm -rf /tmp/rustup-init* \
    && rm -rf "$HOME"/.cargo/registry \
    && rm -rf "$HOME"/.cargo/git \
    && rm -rf "$HOME"/.cache/rustup

WORKDIR /var/jenkins_home