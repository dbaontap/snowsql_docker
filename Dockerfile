FROM ubuntu:18.04

MAINTAINER Danny Bryant <dbryant@dbaontap.com>

RUN apt-get update && apt-get --assume-yes install  curl unzip

# Create non-root user
RUN groupadd --system snowflake --gid 444 && \
useradd --uid 444 --system --gid snowflake --home-dir /home/snowflake --create-home --shell /sbin/nologin --comment "Docker image user" snowflake && \
#chown -R snowflake:snowflake /home/snowflake
chown -R snowflake:snowflake /home

# default to being in the user's home directory
WORKDIR /home/snowflake

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV VERSION 1.2.10
ENV SNOWSQL_DEST /usr/local/bin
ENV SNOWSQL_LOGIN_SHELL /home/snowflake/.bashrc

# grab the installation script
RUN curl -O https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowsql-1.2.10-linux_x86_64.bash


# Install the tool
RUN bash snowsql-1.2.10-linux_x86_64.bash


# Switch to the non-root user
USER snowflake


# Run the SnowSQL client once, allowing it to auto-upgrade to the latest version.
# See https://docs.snowflake.com/en/user-guide/snowsql-install-config.html#label-understanding-auto-upgrades
RUN snowsql -v
ADD config /home/snowflake/.snowsql/

#ENTRYPOINT ["snowsql"]

#CMD ["-c"]
