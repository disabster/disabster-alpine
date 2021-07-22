# disabster-alpine
Original by ibuetler. My Alpine Linux setup!

# Alpine Linux
# Base Installation
download iso from internet
create vm, boot
run setup-alpine script
reboot
# Auto Personalization
login as root
apk add git
git clone https://github.com/disabster/disabster-alpine
cd disabster-alpine
./setup.sh
# Manual Personalization
login as disabster
ssh-keygen
eval `ssh-agent -s`
ssh-add
