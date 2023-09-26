#!/bin/sh
sudo mkdir -p ./letsencrypt/live
sudo cp -r /etc/letsencrypt/archive/guludoc.com ./letsencrypt/live
sudo chmod -R +r letsencrypt
