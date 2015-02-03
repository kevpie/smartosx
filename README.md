# smartosx
Salt Packer SmartOS OSX VMWare


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
* get salt minion running on gz.local
```bash
$ ssh root@gz.local
$ pkgin in git-base
// todo: install dependencies from salt bootstrap
$ git clone git://github.com/kevpie/salt.git /opt/salt
$ cd /opt/salt
$ git checkout smartos_vmadm_optional_args
$ ./setup.py build
$ ./setup.py install
```
* get salt master running on osx.local
```bash
$ sudo ln -s /opt/smartosx/minion /etc/salt/minion
$ sudo ln -s /opt/smartosx/master /etc/salt/master
```

