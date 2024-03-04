#!/bin/bash

echo paste your private key and enter ctrl+d to end
private_key_location=$(mktemp)
cat >> $private_key_location
gpg --import $private_key_location
