#!/bin/bash
sudo sed 's|SELINUX=enforcing|SELINUX=disabled|g' -i /etc/selinux/config 
