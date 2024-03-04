#!/bin/bash
read -p "Paste your posteo password: " password
echo $password | gpg -r retpolanne@posteo.net --output $HOME/.mbsyncpass.gpg --encrypt
