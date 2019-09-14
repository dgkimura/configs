# This docker image is intended to be used as a postgres developement
# environment
FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y python-pip
RUN apt-get install -y build-essential
RUN apt-get install -y bison
RUN apt-get install -y flex
RUN apt-get install -y libreadline-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libzstd-dev
RUN apt-get install -y libapr1 libapr1-dev
RUN apt-get install -y libevent-dev
RUN apt-get install -y libyaml-dev
RUN apt-get install -y libcurl4-gnutls-dev
RUN apt-get install -y libbz2-dev
RUN apt-get install -y libperl-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y gdb
RUN apt-get install -y ctags
RUN apt-get install -y ccache

# vim 8.1 for term debug
RUN apt-get install -y git
RUN git clone https://github.com/vim/vim.git
RUN cd vim && git checkout v8.1.1619 && ./configure --with-features=huge --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --enable-python3interp=yes --enable-perlinterp=yes --enable-luainterp=yes --enable-cscope --prefix=/usr/local && make -j 8 -s install

RUN apt-get install -y tmux
