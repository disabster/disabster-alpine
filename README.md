# alpine-linux-setup
Alpine Linux Setup

# Alpine Linux
## Base Installation
* download iso from internet
* create vm, boot
* run `setup-alpine` script
* `reboot`

## Auto Personalization
* login as `root`
* `apk add git`
* `git clone https://github.com/disabster/disabster-alpine`
* `cd disabster-alpine`
* `./setup.sh`

## Manual Personalization
* login as `disabster`
* `ssh-keygen`

````
eval `ssh-agent -s`
ssh-add
````

## YouTube Video by Ibuetler
* https://youtu.be/X_T-cKum8dc


