#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag snowsql:latest dbaontap/snowsql:latest
docker tag snowsql:latest dbaontap/snowsql:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push dbaontap/snowsql:latest
docker push dbaontap/snowsql:${UNIXTIME}

# editable file
