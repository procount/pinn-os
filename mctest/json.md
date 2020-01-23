| ﻿Key                         | Type           | os | os_list | partitions | Use                                                                                                         |
|-----------------------------|----------------|----|---------|------------|-------------------------------------------------------------------------------------------------------------|
| "description"               | string         | m  | m       |            | Describes the OS                                                                                            |
| "feature_level"             | integer        | o  | o       |            | (deprecated) a decimal number representing a set of bit flags to indicate which RPI models were suitable    |
| "icon"                      | url            | o  | m       |            | location of icon.png file (file name must be the same as the os_name and name fields)                       |
| "marketing_info"            | url            |    | m       |            | Location of marketing.tar file (tar of slides in /slides_vga)                                               |
| "nominal_size"              | integer        | m  | m       |            | Sum of partition_size_nominal of all partitions in MiB                                                      |
| "os_info"                   | url            |    | m       |            | location of os.json file                                                                                    |
| "os_name"                   | string         |    | m       |            | Name of the OS (no spaces) (same as name)                                                                   |
| "name"                      | string         | m  |         |            | Name of the OS (no spaces) (same as os_name)                                                                |
| "partition_setup"           | url            |    | o       |            | location of partition_setup.sh script                                                                       |
| "partitions_info"           | url            |    | m       |            | location of partitions.json                                                                                 |
| "sha512sum/sha256sum/sha1sum/md5sum"  | string     | o  |         |      | Checksum of partition_setup.sh file, or URL of remote checksum file |
| "release_date"              | string         | m  | m       |            | Date of release in "YYYY-MM-DD"  format                                                                     |
| supported_hex_revisions"    | Quoted csv     | o  | o       |            | (deprecated) a list of hex numbers representing the revisions of  RPI models that were suitable             |
| "supported_models"          | string list    | m  | m       |            | A list of partial model names that are suitable                                                             |
| "tarballs"                  | url list       |    | m       |            | list of URLs of tar file for each partition in order                                                        |
| "version"                   | string         | o  |         |            | Version of this release                                                                                     |
| "kernel"                    | string         | o  |         |            | Version of kernel used                                                                                      |
| "url"                       | url            | o  |         |            | location of webpage for further info on this OS                                                             |
| "username"                  | string         | o  |         |            | Default user name                                                                                           |
| "password"                  | string         | o  |         |            | Default password                                                                                            |
|                             |                |    |         |            |                                                                                                             |
| "riscos_offset"             | integer        | o  |         |            | Offset of disk table (RISCOS only)                                                                          |
| "group"                     | string         | o  |         |            | Category to group OS into on PINN menu (General/Minimal/Education/Media/Utitlity/Games)                     |
| "supports_backup"           | boolean/string | m  |         |            | Indicates if partition_setup.sh is suitbale for installing a backup (true/false/"update")                   |
| "download_size"             | integer        | o  |         |            | Sum of the partition tar file sizes (in bytes) , excluding any metafiles.                                   |
| "partitions"                | Struct list    |    |         | m          | A list of structured information, one for each partition                                                    |
| {                           |                |    |         |            |                                                                                                             |
| "label"                     | string         |    |         | m          | Name of partition (pay attention to OS limitations of case and length)                                      |
| "filesystem_type"           | string         |    |         | m          | "raw","fat","ext4","ntfs","partclone","unformatted","swap"                                                  |
| "partition_size_nominal"    | integer        |    |         | m          | Minium size in MiB of partition to create                                                                   |
| "want_maximised"            | boolean        |    |         | m          | false = partition will be partition_size_nominal in size. True = Remaining free space will be added equally |
| "uncompressed_tarball_size" | integer        |    |         | m          | Size of tarball (in MiB) before compression                                                                 |
| "partition_type"            | string         |    |         | o          | Hex code of partition type for parted. Only needed to override the default)                                 |
| "requiresPartitionNumber"   | integer        |    |         | o          | Specifies a particular partition number for a partition                                                     |
| "offset_in_sectors"         | integer        |    |         | o          | Force a position to a specific offset in sectors from the beginning of the disk                             |
| "emptyfs"                   | boolean        |    |         | o          | true = no tarball exists for this partition                                                                 |
| "requires_label"            | boolean        |    |         | o          | true = Requires a specific partition label |
| "sha512sum/sha256sum/sha1sum/md5sum"  | string     |    |         | o    | Checksum of partition's main file (.tar.xz), or URL of remote checksum file |
| "active"                    | boolean        |    |         | o          | Marks the partition as active in the MBR                                                                    |
| "mkfs_options"              | string         |    |         | o          | Any additional options required when formatting the partition                                               |
| }                           |                |    |         |            |                                                                                                             |
