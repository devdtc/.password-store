#!/bin/bash

rm -rf ./gpg-keys
mkdir ./gpg-keys

gpg --export > ./gpg-keys/public
gpg --export-secret-keys > ./gpg-keys/secret
gpg --export-ownertrust > ./gpg-keys/ownertrust

tar -cvz ./gpg-keys | gpg --pinentry-mode loopback --symmetric --cipher-algo AES256 > ./gpg-keys.tar.gz.gpg

rm -rf ./gpg-keys

