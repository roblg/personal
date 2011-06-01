#!/bin/bash

# Return a list of the files that have been modified, without the leading characters

svn stat | grep "^." | sed -e 's/^. [ ]*\(.*\)$/\1/'
