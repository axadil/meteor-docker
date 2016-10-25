#!/bin/sh
echo "Moving /opt/meteor" && \
mv /opt/meteor /opt/meteor.tmp && \
mv /opt/meteor.tmp /opt/meteor && \
exec "$@"
