# Media files ingestion

## Description

The flow enables users to extract metadata from media files (pdf/images/word/video/ etc), and to ingest them into Hive tables, with/without the content.

The flow is:
- create a feed using "Media Ingest" template to extract the metadata +/- content and save the results as JSON files. (the content can be saved in several ways. Check below)
- create a feed using standard "Data Ingest" template to load the media file metadata +/- content into Hive

## TODO
- maybe rename media ingest template to media metadata extraction template, as it's not really ingesting the data in Hive at that point

## Templates

### Media metadata extraction reusable template
Reusable template to extract metadata from a media file, and export the result in JSON format. It will also try to merge from several files, to generate fewer big files to be ingested.

File: `media-metadata-extraction.xml`

The content can be:
- saved in the file
- saved in HDFS
- don't save

Installation:
 - In kylo, import template from file -> select file and select reusable + overwrite.

### Media metadata extraction for the feed template
Feed template.

File `Media_Metadata_Extraction.xml`

Installation:
 - In kylo, import template from Nifi environment -> select fields

For the save content setting, you can give the following selectable options (or have a hardcoded default):
- "In file"
- "In HDFS"
- "Don't save"

### Testing with feeds