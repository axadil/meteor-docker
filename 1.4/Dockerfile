FROM buildpack-deps:jessie-scm

ENV METEOR_VERSION=1.4.1.3

RUN git clone --depth 1 --recursive -b release/METEOR@$METEOR_VERSION https://github.com/meteor/meteor.git /opt/meteor && \
    ln -s /opt/meteor/meteor /usr/local/bin/meteor && \
    meteor help && \
    meteor npm cache clear && \
    rm -rf /tmp/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]