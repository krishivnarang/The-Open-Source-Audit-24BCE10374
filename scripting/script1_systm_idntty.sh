# Script 1: System Identity Report (script1_systm_idntty.sh)
I wrote this script to act as the primary welcome banner for any administration logging into the server. It captures real-time metadata about the Linux environment, like the kernel version, who is currently logged in, and how long the system has been running. To keep it consistent with the other tools, it also displays a clear notice about the open-source license protecting the system. I used standard variables to store my identification info. The main concept here is command substitution using the $() syntax, which pulls data directly from the system and puts it into variables so the maintenance worker can see it formatted neatly on the screen.

#!/bin/bash
# Script 1: System Identity Report
# Author: Krishiv Narang | Course: Open Source Software
# Software: Git

# --- Variables ---
# Storing identification for the administration
STUDENT_NAME="Krishiv Narang" 
ROLL_NUMBER="24BCE10374"
SOFTWARE_CHOICE="Git" 

# --- System info ---
# Using command substitution to pull system metadata
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Checking for the distro name in the system files
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d '=' -f2 | tr -d '"')
else
    DISTRO=$(uname -s)
fi

# --- Display ---
echo "====================================================="
echo "  OPEN SOURCE AUDIT SYSTEM IDENTITY"
echo "====================================================="
echo "Student Name     : $STUDENT_NAME ($ROLL_NUMBER)"
echo "Software Audited : $SOFTWARE_CHOICE"
echo "-----------------------------------------------------"
echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Current User     : $USER_NAME"
echo "System Uptime    : $UPTIME"
echo "Audit Timestamp  : $DATE_TIME"
echo "-----------------------------------------------------"
echo "LICENSE NOTICE: This system runs the Linux kernel,"
echo "licensed under the GPL v2 to ensure code freedom."
echo "====================================================="
