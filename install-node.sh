set -e

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install $1
nvm use $1

echo "PATH=$NVM_DIR/versions/node/$1/bin:$PATH" >> $GITHUB_ENV
