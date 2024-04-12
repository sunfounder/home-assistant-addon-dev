ARG BUILD_FROM
FROM $BUILD_FROM

# update apt-get
RUN apt-get update

# install dependencies
RUN apt-get install git python3 python3-pip python3-setuptools -y

# clone pironman 5
ADD https://api.github.com/repos/sunfounder/pironman5/git/refs/heads/main version.json
RUN git clone https://github.com/sunfounder/pironman5.git

# install pironman
RUN cd /pironman5 && python3 install.py --skip-auto-start --skip-reboot --plain-text

# install libgpiod
# RUN apt-get update && \
#     apt-get install -y autoconf autoconf-archive automake build-essential git libtool pkg-config python3-dev python3-setuptools swig4.0 wget python3-venv

# RUN pip3 install build

# WORKDIR /tmp

# RUN git clone git://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git && \
#     cd libgpiod && \
#     ./autogen.sh --enable-tools=yes --prefix=/usr/local/ --enable-bindings-python && \
#     make && \
#     make install && \
#     ldconfig

# WORKDIR /tmp/libgpiod/bindings/python/dist

# RUN pip3 install *.whl

# set the working directory to /data/pironman
WORKDIR /data

# copy run.sh
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
