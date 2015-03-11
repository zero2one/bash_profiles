#!/bin/bash

##
# Override java commands.
##



# Force starting java jar files from cli in the background (Solr, Tika)
export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
