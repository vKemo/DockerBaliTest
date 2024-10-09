#!/bin/sh

echo "scriptA before triggering scriptB"
# Call scriptB
/usr/local/bin/scriptB.sh
echo "scriptA after triggering scriptB"
exec "$@"
