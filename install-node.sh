#!/bin/bash
set -e

# Instalar NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Establecer el directorio de NVM y cargar NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Instalar y usar la versión de Node.js especificada
nvm install $1
nvm use $1

# Configurar las variables de entorno para GitHub Actions
echo "NVM_DIR=$NVM_DIR" >> $GITHUB_ENV
echo "PATH=$NVM_DIR/versions/node/$(nvm current)/bin:$PATH" >> $GITHUB_ENV
