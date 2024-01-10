ARG BUILD_FROM
FROM $BUILD_FROM

# update apt-get
RUN apt-get update

# install dependencies
RUN apt-get install python3 git -y

# clone spc
ADD https://api.github.com/repos/sunfounder/spc/git/refs/heads/main version.json
RUN git clone -b main https://github.com/sunfounder/spc.git

# install scp
RUN cd /spc && python3 install.py --disable-autostart --skip-config-txt --skip-reboot

# set the working directory to /data/pironman
WORKDIR /data

# copy run.sh
COPY run.sh /
# add execute permission
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]


# COPY test.sh /
# RUN chmod a+x /test.sh
# CMD [ "/test.sh" ]
