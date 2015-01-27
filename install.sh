#!/bin/bash

brew install caskroom/cask/brew-cask
brew cask install virtualbox
brew cask install vagrant

vagrant plugin install vagrant-smartos-guest
vagrant plugin install vagrant-smartos-zones