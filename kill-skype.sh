#!/bin/sh

# kill (with extreme prejudice) 
# ps -C skype,skype-wrapper -o pid=  ==> displays only the PIDs of processes matching skype,skype-wrapper
# run it through sed, which removes the leading spaces, then does a multiline match, removing the newlines

kill -9 `ps -C skype,skype-wrapper -o pid= | sed -e 's/ //g' -e '/$/ { N; s/\n/ /; }'`
