#!/bin/bash

BITBUCKET_HOME=${BITBUCKET_HOME:-/var/atlassian/application-data/bitbucket}
BITBUCKET_INSTALL_DIR=${BITBUCKET_INSTALL_DIR:-/opt/bitbucket}

echo "Starting Bitbucket Server..."

# Set the Bitbucket home directory
export BITBUCKET_HOME

# Start Bitbucket Server
${BITBUCKET_INSTALL_DIR}/bin/start-bitbucket.sh -fg
