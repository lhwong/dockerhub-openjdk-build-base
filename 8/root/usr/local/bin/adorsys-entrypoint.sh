#!/bin/bash

# https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash
if [ ! -z ${MIRROR_URL+x} ]; then
  envsubst < /usr/share/maven/ref/m2_settings.xml.template > /usr/share/maven/ref/settings.xml
fi

exec /usr/local/bin/mvn-entrypoint.sh "$@"
