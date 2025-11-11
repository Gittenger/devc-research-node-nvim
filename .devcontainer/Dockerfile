FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

ENV DEBIAN_FRONTEND=noninteractive \
VERSION_CHECK=1

RUN apt-get update && apt-get install -y --no-install-recommends \
	git curl ca-certificates ripgrep fd-find bash-completion \
	build-essential pkg-config unzip xclip

RUN set -eux; \
    curl -fL -o /tmp/nvim-linux-x86_64.tar.gz \
      https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz; \
    tar -C /opt -xzf /tmp/nvim-linux-x86_64.tar.gz; \
    ln -s /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim; \
    rm /tmp/nvim-linux-x86_64.tar.gz

RUN ln -s /usr/bin/fdfind /usr/local/bin/fd

RUN mkdir -p /home/node/.config/nvim \
    /home/node/.local/share/nvim \
    /home/node/.local/state/nvim \
    /home/node/.cache/nvim && \
    chown -R node:node /home/node/.config /home/node/.local /home/node/.cache

USER node

ENV PATH="/workspace/node_modules/.bin:${PATH}"

RUN npm i -g typescript

WORKDIR /workspace
