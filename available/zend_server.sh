#!/bin/bash

##
# Add support for Zend Server
##



##
# Adds the bin directory, created during the instalation of Zend Server, to the
# $PATH variable.
##
PATH=$PATH:/usr/local/zend/bin

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/zend/lib
