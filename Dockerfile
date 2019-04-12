FROM ubuntu:16.04

RUN apt-get update

# General Purpose Tools
RUN apt-get install -y curl bzip2 make less

# Class-specific Tools
RUN apt-get install -y gcc gdb cgdb valgrind

RUN apt-get install -y openjdk-9-jre-headless

RUN curl https://iweb.dl.sourceforge.net/project/cunit/CUnit/2.1-2/CUnit-2.1-2-src.tar.bz2 | tar xvjf -

RUN cd CUnit-2.1-2 && mkdir -p /home/ff/cs61c/cunit/install && ./configure --prefix=/home/ff/cs61c/cunit/install && make install && cd .. && rm -rf CUnit-2.1-2

# From the Hive Machines
ENV LD_LIBRARY_PATH /home/ff/cs61c/cunit/install/lib
ADD bin /home/ff/cs61c/bin
ADD proj4 /home/ff/cs61c/proj4

WORKDIR /root/workspace
