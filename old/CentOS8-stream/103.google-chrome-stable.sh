#!/bin/bash
sudo cp repos/google-chrome.repo /etc/yum.repos.d/.
sudo dnf update -y --refresh
sudo dnf install google-chrome-stable -y
