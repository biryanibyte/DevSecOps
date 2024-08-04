# Use an official Java runtime as a parent image
FROM openjdk:8-jdk

# Set environment variables
ENV BITBUCKET_HOME /var/atlassian/application-data/bitbucket
ENV BITBUCKET_VERSION 7.19.3

# Create the necessary directories
RUN mkdir -p /var/atlassian/application-data/bitbucket

# Download Bitbucket Server
RUN curl -Ls "https://product-downloads.atlassian.com/software/stash/downloads/atlassian-bitbucket-${BITBUCKET_VERSION}.tar.gz" \
    | tar -xz --directory /opt \
    && mv /opt/atlassian-bitbucket-${BITBUCKET_VERSION} /opt/bitbucket

# Expose the default HTTP and SSH ports
EXPOSE 7990 7999

# Set volume for Bitbucket home directory
VOLUME ["/var/atlassian/application-data/bitbucket"]

# Set the default working directory
WORKDIR /opt/bitbucket

# Copy and set permissions for the start script
COPY start-bitbucket.sh /opt/bitbucket/start-bitbucket.sh
RUN chmod +x /opt/bitbucket/start-bitbucket.sh

# Start Bitbucket Server
ENTRYPOINT ["/opt/bitbucket/start-bitbucket.sh"]
