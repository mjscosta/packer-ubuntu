# Install some system packages
apt-get install -y wget curl vim git mercurial bzr tree python python-pip htop nmap

# Install ifs
pip install ifs

# Install hostess
wget https://github.com/cbednarski/hostess/releases/download/v0.1.0/hostess_linux_amd64
chmod +x hostess_linux_amd64
mv hostess_linux_amd64 /usr/local/bin/hostess

--header "Cookie: oraclelicense=accept-securebackup-cookie"