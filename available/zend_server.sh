#!/bin/bash

##
# Add support for Zend Server
##



# Add the Zend bin directory to the command line.
PATH=$PATH:/usr/local/zend/bin

# We don't need mysql as we have installed it seperatly (see mysql.sh)
#:/usr/local/zend/mysql/bin

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/zend/lib
