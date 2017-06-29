#!/bin/bash

# This setup is used to test the media files metadata extraction and integration flow.

# Cleaning the present media resources
rm -rf /opt/nifi/metadata_extract_*
hdfs dfs -rm -r /metadata_extract_out

# Media resources go in metadata_extract_in to have the metadata extracted with the Media Ingestion template
cp -r resources /opt/nifi/metadata_extract_in
chown -R nifi:users /opt/nifi/metadata_extract_in
