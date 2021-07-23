# alpine-linux-setup (WORKS NOW !!!)
Alpine Linux Setup

# Alpine Linux
## Base Installation
* download iso from internet
* create vm, boot
* run `setup-alpine` script
* `reboot`

## Auto Personalization
* login as `root`
* `apk add git bash`
* `git clone https://github.com/disabster/disabster-alpine`
* `cd disabster-alpine`
* `bash -x ./step1.sh`
* `bash -x ./step2.sh`
* `bash -x ./step3.sh`

## Manual Personalization
* login as `disabster`
* `ssh-keygen`

````
eval `ssh-agent -s`
ssh-add
````

# Future Updates!? *probably not*
I managed to include every software I needed, or otherwise its functional equivalent, except for the games launcher Lutris and the retro-style graphics program Libresprite. I might create a fork including closed source software, such as Steam and Discord.

## YouTube Video by Ibuetler
* https://youtu.be/X_T-cKum8dc


