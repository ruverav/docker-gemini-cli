FROM node:20-bullseye-slim

# Instalación de dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    git \
    procps \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Instalación de gemini-cli con permisos necesarios
RUN npm install -g @google/gemini-cli --unsafe-perm

ENTRYPOINT ["gemini"]

