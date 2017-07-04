#!/bin/bash
# This setup is used to test the media files metadata extraction and integration flow.

DIR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp -r ${DIR_PATH}/resources /opt/nifi/demo
chown -R nifi:users /opt/nifi/demo
