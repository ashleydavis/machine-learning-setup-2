FROM ubuntu:18.04

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get -yq update
RUN apt-get -yq upgrade
RUN apt-get -yq install curl

#
# Installs anaconda 3
# https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart
#

RUN curl --silent --show-error -O https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
RUN bash Anaconda3-2021.05-Linux-x86_64.sh -b -p /anaconda3

ENV PATH=/anaconda3/bin:$PATH

RUN yes | pip install --upgrade pip
RUN yes | pip install autokeras 


# CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

CMD cd /shared \
    && jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''