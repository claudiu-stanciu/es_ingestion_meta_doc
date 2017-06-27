# Media files ingestion

## Description

The flow enables users to extract metadata from media files (pdf/images/word/video/ etc), and to ingest them into Hive tables, with/without the content.

The flow is:
- create a feed using "Media Ingest" template to extract the metadata +/- content and save the results as JSON files. (the content can be saved in several ways. Check below)
- create a feed using standard "Data Ingest" template to load the media file metadata +/- content into Hive

## Templates

### Media ingest reusable template
Reusable template to extract metadata from a media file.

File: `media-ingest.xml`

The content can be:
- saved in the file
- saved in HDFS
- don't save

Installation:
 - In kylo, import template from file -> select file and select reusable + overwrite.

### Media ingest for the feed template
File `Media_Ingest.xml`

Installation:
 - In kylo, import template from Nifi environment -> select fields

For the save content setting, you can give the following selectable options (or have a hardcoded default):
- "In file"
- "In HDFS"
- "Don't save"