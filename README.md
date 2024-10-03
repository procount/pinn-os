NOOBS change history
v2.8 Latest

## Code Review Process

### Assigning Code Reviewers

To assign a code reviewer for your pull request, you can use the `CODEOWNERS` file. This file specifies the default code owners for the entire repository and for specific directories or files. When you create a pull request, the code owners specified in the `CODEOWNERS` file will be automatically requested to review your changes.

### Using the `CODEOWNERS` File

The `CODEOWNERS` file is located in the root of the repository. Here is an example of how to specify code owners in the `CODEOWNERS` file:

```
# Default code owner for the entire repository
* @default-owner

# Code owners for specific directories or files
/os/ @os-owner
/os/os_testing.json @os-testing-owner
/README.md @docs-owner
/PITCHME.md @docs-owner
```

In this example, `@default-owner` is the default code owner for the entire repository. `@os-owner` is the code owner for the `/os/` directory, `@os-testing-owner` is the code owner for the `/os/os_testing.json` file, and `@docs-owner` is the code owner for the `/README.md` and `/PITCHME.md` files.

### Tools and Integrations

We use GitHub's built-in code review tools to manage code reviews. When you create a pull request, the code owners specified in the `CODEOWNERS` file will be automatically requested to review your changes. You can also manually request reviews from other contributors if needed.

For more information on using GitHub's code review tools, please refer to the [GitHub documentation](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-request-reviews).

## New Debian Bookworm Entry

### Debian Bookworm for Raspberry Pi 4B

A new entry for Debian Bookworm has been added to the `os/os_testing.json` file. This entry includes the following details:

* `os_name`: "Debian Bookworm"
* `description`: "A lightweight Debian 12 (Bookworm) image for Raspberry Pi 4B"
* `release_date`: "2023-06-15"
* `supported_models`: ["Pi 4"]
* `download_size`: 1500000000
* `os_info`: "http://example.com/debian-bookworm/os.json"
* `partitions_info`: "http://example.com/debian-bookworm/partitions.json"
* `icon`: "http://example.com/debian-bookworm/icon.png"
* `marketing_info`: "http://example.com/debian-bookworm/marketing.tar"
* `partition_setup`: "http://example.com/debian-bookworm/partition_setup.sh"
* `tarballs`: ["http://example.com/debian-bookworm/boot.tar.xz", "http://example.com/debian-bookworm/root.tar.xz"]
