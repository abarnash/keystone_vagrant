# installs:
# 	git
# 	curl
# 	node.js
# 	node packages:
# 		yo 
# 		bower
# 	MongoDB
#	Apache

#install git
sudo apt-get install git -y

#install curl
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup | sudo bash -

#install node.js
sudo apt-get install nodejs -y

#install node packages
npm -g install yo 
npm -g install bower 
npm -g install gulp 
npm -g install keystone 
npm install -g generator-keystone

#install MongoDB 
#instructions from http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update
sudo apt-get install -y mongodb-org

#install apache
sudo apt-get install apache2 -y


sudo apt-get install keystone
npm install node-sass-middleware

npm config set prefix ~/npm

export PATH="$PATH:$HOME/npm/bin"

#Ubuntu has problems with npm install w/o sudo
#code from http://stackoverflow.com/a/19379795

echo prefix = ~/.node >> ~/.npmrc
echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc 
. ~/.bashrc

#this line suggested by output log yo
echo "export NODE_PATH=$NODE_PATH:/home/vagrant/.node/lib/node_modules" >> ~/.bashrc && source ~/.bashrc
