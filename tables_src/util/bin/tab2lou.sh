#!/bin/sh
CLASSES=`dirname $0`
java -cp $CLASSES TabToLiblouis "$@"
