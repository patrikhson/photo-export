# photo-export
Export photos from Apple Photo.App

This python script is exporting photos from Apple Photos.app and places copies in a directory structure according to the albums you have created inside the app. On top of that there is a special hierarchy for all photos in a Date folder, and one for Persons for the faces you have identified.

- The scrips works incrementally, i.e.: the output will be updated when the script is run more than once.

- It exports "All versions" (i.e. not just originals)

One possible use for this script would be to run a gallery generator software on the output, like simgal <http://hack.org/mc/hacks/simgal/> and publish as HTML.

## Requirements

Requires Python3, py-applescript and PyObjC of a new version.

Python3 can for example be installed via HomeBrew:

```
# brew install python3
```

After that, install py-applescript and PyObjC as follows:

```
# pip3 install py-applescript
# pip3 install PyObjC
```

If not a new enough version of PyObjC is installed (version 3.0.5 or newer), install it manually:

```
# curl -O https://github.com/GreatFruitOmsk/pyobjc-core/releases/download/v3.0.5.dev0/pyobjc-core-3.0.5.tar.gz
# pip3 install v3.0.5.dev0/pyobjc-core-3.0.5.tar.gz
```

# WARNING:

1. The program do not have any "settings" yet, so you have to edit the software with root of the hierarchy of "stuff". See the top of the script.

2. This uses python3, and just because some AppleScript is in use, it requires Foundation and PyObjC installed. I got it by first installing python3 via HomeBrew, then py-applescript, and then pip install PyObjC.

3. Yes, the software do some equivalent of "rm -rf", but that should be robust (famous last words). Use with caution, and please look at the code and send me suggestions on changes.  
