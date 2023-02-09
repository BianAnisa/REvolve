#!/bin/bash
apt-get update -y ; apt-get install sudo -y
sudo apt-get -y install curl tar ca-certificates
sudo su --command "bash anofile.sh"
