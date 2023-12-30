#!/bin/bash

rm -rf ./gpg-keys

gpg --decrypt ./gpg-keys.tar.gz.gpg | tar -xvz ./gpg-keys

echo
echo "done decrypting, attempting import"
echo

gpg --import ./gpg-keys/public
gpg --import --allow-secret-key-import ./gpg-keys/secret
gpg --import-ownertrust ./gpg-keys/ownertrust

rm -rf ./gpg-keys

