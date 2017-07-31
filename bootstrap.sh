sudo mkdir -p /opt
sudo chown core /opt
mkdir -p /opt/bin
curl -L https://nodejs.org/dist/v8.2.1/node-v8.2.1-linux-x64.tar.xz | tar -xJf - -C /opt/bin
mv /opt/bin/node-v8.2.1-linux-x64 /opt/bin/nodejs
git clone https://github.com/alexisvincent/steve-cluster-config /opt/cluster-config
cd /opt/cluster-config
/opt/bin/nodejs/bin/node steve.js bootstrap