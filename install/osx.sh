# Install HomeBrew and all my Homebrew packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
while read pkg; do
  brew install $pkg
done <../packages/homebrew.list

# Install Cask and all my Cask packages
brew tap caskroom/cask
while read pkg; do
  brew cask install $pkg
done <../packages/cask.list

# Make atom CLI-friendly
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh ~/local/bin/atom
ln -s /Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm ~/local/bin/apm

# download and run common.sh
curl -s https://raw.githubusercontent.com/eimajenthat/box-setup/install/common.sh | sudo sh
