#!/bin/bash

SRC_DIR=$( cd $(dirname $0) ; pwd -P )
. $SRC_DIR/functions.sh

ember serve

