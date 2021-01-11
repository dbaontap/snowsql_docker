# Overview
This project is a simple Docker image that provides access to the
[SnowSQL (CLI Client)](https://docs.snowflake.net/manuals/user-guide/snowsql.html#snowsql-cli-client).  


# Build the Docker file
Type `./build.sh` to build the image.


# snowSQL config
Modify config file with any connection information or setup


## Launching The Image
Use `docker run --rm -it --name=snowsql snowsql bash` to launch the image.  

# License and Credits
This project is licensed under the
[Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

* [Snowflake Documentation](https://docs.snowflake.net/manuals/index.html)

# List of Changes
Added config file for editing/automating logins
Included apt-get for unzip

# To-Do
Add variables for version of snowSQL to initially download before upgrading if necessary
