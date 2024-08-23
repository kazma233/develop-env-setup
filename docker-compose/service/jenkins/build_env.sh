apt-get update && \
apt-get install -y build-essential wget && \
rm -rf /var/lib/apt/lists/* && \
wget -O tinygo.deb https://github.com/tinygo-org/tinygo/releases/download/v0.33.0/tinygo_0.33.0_amd64.deb && \
dpkg -i tinygo.deb && \
rm -f tinygo.deb