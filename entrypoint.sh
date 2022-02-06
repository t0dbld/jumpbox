#!/bin/sh
echo 'jump:78s89df7s897fnkjahdiuayda987danawejha9!~*@3ndsiuh'|chpasswd
chown -R jump:jump /home/jump/.ssh
chmod 700 /home/jump/.ssh 
chmod 600 /home/jump/.ssh/authorized_keys
ssh-keygen -A
exec /usr/sbin/sshd -D -e "$@"
