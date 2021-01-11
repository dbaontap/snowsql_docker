# Overview
This project is a simple Docker image that provides access to the
[SnowSQL (CLI Client)](https://docs.snowflake.net/manuals/user-guide/snowsql.html#snowsql-cli-client).  


# Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

# Building
Type `./build.sh` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# snowSQL config
Modify config file with any connection information or setup

# Tips and Tricks

## Launching The Image
Use `docker run --rm -it --name=snowsql snowsql bash` to launch the image.  

# Troubleshooting

# License and Credits
This project is licensed under the
[Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

* [Snowflake Documentation](https://docs.snowflake.net/manuals/index.html)

# List of Changes
