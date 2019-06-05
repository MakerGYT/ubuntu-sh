VERSION=v10.15.0
DISTRO=linux-x64

sudo mkdir /usr/local/lib/nodejs
wget https://nodejs.org/dist/$VERSION/node-$VERSION-$DISTRO.tar.xz
sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs
sudo mv /usr/local/lib/nodejs/node-$VERSION-$DISTRO /usr/local/lib/nodejs/node-$VERSION

export NODEJS_HOME=/usr/local/lib/nodejs/node-$VERSION/bin
export PATH=$NODEJS_HOME:$PATH
node -v
npm version
npx -v

sudo ln -s /usr/local/lib/nodejs/node-$VERSION/bin/node /usr/bin/node
sudo ln -s /usr/local/lib/nodejs/node-$VERSION/bin/npm /usr/bin/npm
sudo ln -s /usr/local/lib/nodejs/node-$VERSION/bin/npx /usr/bin/npx

npm install -g cnpm --registry=https://registry.npm.taobao.org
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
cnpm version
