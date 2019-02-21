#!/bin/bash

# postgres dependencies
sudo apt-get install -y python-pip build-essential bison flex libreadline-dev \
                        zlib1g-dev libzstd-dev libapr1 libapr1-dev \
                        libevent-dev libyaml-dev libcurl4-gnutls-dev \
                        libbz2-dev libperl-dev libssl-dev libxml2-dev

# greenplum dependencies
sudo apt-get install -y gdb ctags ccache

pip install paramiko
pip install psutil
pip install lockfile

# developer settings
echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
