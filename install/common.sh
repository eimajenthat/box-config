# Check out this repo
# sym link stuff from dotfiles/
# sym link bin to ~/bin
# add bin to path
# determine environment, just in case we need it: win,osx,deb,rpm

# if apm accessible, install atom packages
while read pkg; do
  apm install $pkg
done <../packages/atom.list
#http://stackoverflow.com/questions/22390709/open-atom-editor-from-command-line
