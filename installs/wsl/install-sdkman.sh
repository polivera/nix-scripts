#!/bin/bash

# Install sdkman
export SDKMAN_DIR=$XDG_CONFIG_HOME/sdkman

curl -s "https://get.sdkman.io" | bash
sdk i java 11.0.12-open
sdk use java 11.0.12-open
