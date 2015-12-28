# photo-export
Export photos from Apple Photo.App

This python script is exporting photos from Apple Photos.app and places copies in a directory structure according to the albums you have created inside the app. On top of that there is a special hierarchy for all photos in a Date folder, and one for Persons for the faces you have identified.

Requires Python3, py-applescript and PyObjC of a new version.

Python3 can for example be installed via HomeBrew.

After that, install py-applescript and PyObjC as follows:

# pip3 install py-applescript

# pip3 install PyObjC

If not a new enough version of PyObjC is installed (version 3.0.5 or newer), install it manually:

# curl -O https://github.com/GreatFruitOmsk/pyobjc-core/releases/download/v3.0.5.dev0/pyobjc-core-3.0.5.tar.gz
# pip3 install v3.0.5.dev0/pyobjc-core-3.0.5.tar.gz
