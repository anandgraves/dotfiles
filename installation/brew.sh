#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

###################################################
# Brew packages for DEVELOPMENT
###################################################

# Mac App Store command line interface (https://github.com/mas-cli/mas)
brew install mas
brew install fzf
brew install the_silver_searcher
brew install z
brew install jid
brew install httpie
brew install ranger
brew install imagemagick --with-webp
brew install elinks
brew install testssl
brew install tree

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

###################################################
# Brew packages for OSX
###################################################

# brew install node
brew install wget --with-iri
brew install git
brew cask install iterm2
brew install python

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Quick Look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webp-quicklook
brew cask install suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
