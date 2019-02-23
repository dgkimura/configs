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

# vim 8.1 for termdebug
wget https://ftp.nluug.nl/pub/vim/unix/vim-8.1.tar.bz2
tar xvjf vim-8.1.tar.bz2
pushd vim81
sudo apt-get install -y libncurses5-dev libncursesw5-dev
./configure --with-features=huge
sudo make install
sudo ln -s /usr/local/bin/vim /usr/bin/vim
popd
rm -rf vim81
