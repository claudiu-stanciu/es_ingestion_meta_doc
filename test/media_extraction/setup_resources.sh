#!/bin/bash
# This setup is used to test the media files metadata extraction and integration flow.

DIR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Cleaning the present media resources
rm -rf /opt/nifi/metadata_extract_*
hdfs dfs -rm -r /media_content

# Media resources go in metadata_extract_in to have the metadata extracted with the Media Ingestion template
cp -r ${DIR_PATH}/resources /opt/nifi/metadata_extract_in
chown -R nifi:users /opt/nifi/metadata_extract_in
