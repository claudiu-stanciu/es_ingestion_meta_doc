# Media files ingestion feeds for testing

## Metadata extraction feed
Feed for extracting metadata, saving the media content in HDFS and exporting to JSON files

File: `feeds/extract_metadata_from_my_pdfs.feed.zip`

Input data: `/opt/nifi/metadata_extract_in`

Output data: `/opt/nifi/metadata_extract_out`

Installation:
 - Run `./setup_resources.sh` to prepare the input folders + clean HDFS/output folder
 - In kylo UI -> add feed -> import feed from file -> select file

### Ingest feed
Feed for ingesting metadata JSON files into Hive tables.

File: `put_my_pdf_meta_in_hive.feed.zip`

Sample file for schema : `samples/pdf_json/21713737247670`

Input data: `/opt/nifi/metadata_extract_out`

Output data: `$category.$feedName` Hive table + `/media_content` HDFS

Installation:
 - In Kylo UI -> add feed -> import feed from file -> select file