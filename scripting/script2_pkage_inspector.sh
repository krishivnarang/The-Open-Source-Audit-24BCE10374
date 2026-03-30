# Script 2: FOSS Package Inspector (script2_pkage_inspector.sh)

I built this script to physically check if my chosen software is actually installed on the system using the package manager. It then uses a case statement to run through a list of famous FOSS packages and prints a custom philosophical explanation for what each tool actually does for the open source world. I used an if-then-else block combined with dpkg -l to silently check for the package. Then I piped the output using | grep to filter the version details. The core of the script uses a case statement to match the package names to their specific descriptions, which keeps the code super clean for the unpaid staff.

#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git" 

echo "Checking installation for: $PACKAGE"
echo "-----------------------------------"

# Check if package is installed (using dpkg for Debian/Ubuntu based systems)
# Redirecting errors to /dev/null to keep output clean for the administration
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    echo "Details:"
    # Use dpkg -s to get info, then grep to extract Version and Description
    dpkg -s $PACKAGE | grep -E '^Version|^Description'
else
    echo "Warning: $PACKAGE is NOT installed on this system."
fi

echo "-----------------------------------"
echo "FOSS Ecosystem Philosophy Notes:"

# List of packages to check against the case statement
PACKAGES_TO_CHECK="git apache2 mysql-server vlc"

for PKG in $PACKAGES_TO_CHECK; do
    # The case statement prints a one-line philosophy note based on the package
    case $PKG in
        git) 
            echo "[$PKG] -> The tool that democratized version control, born from a massive corporate crisis." 
            ;;
        apache2) 
            echo "[$PKG] -> Apache: the open-source web server that literally built the early internet." 
            ;;
        mysql-server) 
            echo "[$PKG] -> MySQL: open source at the heart of millions of database-driven apps." 
            ;;
        vlc)
            echo "[$PKG] -> VLC: a student project that became the ultimate universal media player."
            ;;
        *)
            echo "[$PKG] -> An important part of the structured FOSS ecosystem."
            ;;
    esac
done
