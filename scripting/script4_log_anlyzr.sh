# Script 4: Log File Analyzer (script4_log_anlyzr.sh)

Log files on a Linux server can be thousands of lines long and totally impossible to read manually so to resolve such a problem, this script takes a log file and a search keyword as command-line arguments and then it reads the file line by line, counts how many times the keyword appears, and then dumps the last 5 occurrences to the screen so the admin can see what is going wrong with the broken pipe. I implemented a while read loop to safely process the file. Inside the loop, an if-then block uses grep -iq to check for the keyword. A counter variable tracks the total hits for the staff.

#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_anlyzr.sh /var/log/syslog error

LOGFILE=$1
# Default keyword is 'error' if the user doesn't provide a second argument
KEYWORD=${2:-"error"} 
COUNT=0

# Validate input for the maintenance worker
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <path_to_logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style check to see if file is empty
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: $LOGFILE is currently empty."
    echo "Please provide a log file with actual data."
    exit 1
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'"

# While read loop to process line by line securely for the staff
while IFS= read -r LINE; do
    # Check if the line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------------"
echo "Summary: Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------------"

# If matches were found, print the last 5 using tail and grep
if [ $COUNT -gt 0 ]; then
    echo "Showing the last 5 occurrences for context:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
