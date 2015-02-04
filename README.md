# smartosx
Salt Packer SmartOS OSX VMWare

## Install xcode command line tools
```bash
xcode-select --install
```

## Install brew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

## Salt OSX

```bash
brew install saltstack
```

## Install Cask
```bash
brew install caskroom/cask/brew-cask
```



## Tap additional older version
```bash
brew tap caskroom/versions
```
## Install Cask Applications
```bash
brew cask install vmware-fusion6
brew cask install packer
```


## Run packer to create vm
- install pkgsrc
- install salt
```bash
packer build vmware.json
```

## Getting salt master+minion operational
* get salt master running on osx.local
```bash
sudo ln -s /opt/smartosx/minion /etc/salt/minion
sudo ln -s /opt/smartosx/master /etc/salt/master
```
* get salt minion running on gz.local
```bash
ssh root@gz.local
pkgin -y install zeromq py27-m2crypto py27-crypto py27-msgpack py27-yaml py27-jinja2 py27-zmq py27-requests git-base
git clone git://github.com/kevpie/salt.git /opt/salt
cd /opt/salt
git checkout smartos_vmadm_optional_args
./setup.py build
./setup.py install
salt-minion -l info
```
* get salt minion running on www.local
```bash
ssh root@www.local
pkgin -y install zeromq py27-m2crypto py27-crypto py27-msgpack py27-yaml py27-jinja2 py27-zmq py27-requests git-base
git clone git://github.com/kevpie/salt.git /opt/salt
cd /opt/salt
git checkout smartos_vmadm_optional_args
./setup.py build
./setup.py install
salt-minion -l info
```
