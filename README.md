# keycrhon-layout-control
A bash one-liner to change behavior of certain keys on Keychron keyboards in Ubuntu/Debian systems

# Installation and setup 
1. Place ckeys(.sh) so that it's accessible via $PATH( /usr/local/bin - common location for all user's executables)

2. Disable a password prompt by adding an exception for that file in /etc/sudoers
// ! to avoid your rule being overwritten make sure to put it at the bottom

        sudo visudo
// then add
        USERNAME ALL=(root) NOPASSWD: /usr/local/bin/ckeys

3. Schedule it to run on every boot/reboot automagically for you with crontab
// note that sudo crontab -e and crontab -e are different cron tables

        sudo crontab -e
// then add
        @reboot sleep 15 && date >> /home/USERNAME/log/layout.log && sudo /usr/local/bin/ckeys -fn >> /home/USERNAME/log/layout.log 2>&1

4. Make it executable and guard it from being modified without your consent

        sudo chmod +755 /usr/local/bin/ckeys

# Usage
sudo ckeys [ --help  |  -h ]    - for getting a reminder

sudo ckeys [ -fn ]              - switch to functional keys
sudo ckeys [ -m ]               - switch to multimedia keys
