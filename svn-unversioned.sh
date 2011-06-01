#!/bin/bash

# Return a list of the files that are not under version control,
# minus the leading characters.
# Useful for, e.g.: svn stat > targets.txt && svi ci --file targets.txt

svn stat | grep "^\?" | sed -e 's/\? [ ]*\(.*\)/\1/'
