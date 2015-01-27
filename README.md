# smartosx
Salt Packer SmartOS OSX VMWare

Salt OSX

```bash
sudo easy_install-2.7 pip
sudo pip install salt=2014.7.1
```

lnstall brew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

Install Cask
```bash
brew install caskroom/cask/brew-cask
```
Tap additional older version
```bash
brew tap caskroom/versions
```
Install Cask Applications
```bash
brew cask install vmware-fusion6
brew cask install packer
```


Run packer to create vm
- install pkgsrc
- install salt
```bash
packer build vmware.json
```
