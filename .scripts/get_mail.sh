#!/bin/sh

PID=$(pgrep offlineimap)

# the only time offline imap has been running after 3 minutes
# is if it is frozen, or if it's pulling more mail (rare).
# So... let's just kill it

[[ -n "$PID" ]] && kill $PID

offlineimap -o &
#offlineimap -o -u quiet &> /dev/null &
#offlineimap -o -u quiet &> ~/offlineimap.log &

exit 0
