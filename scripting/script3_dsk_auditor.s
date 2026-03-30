# Script 3: Disk and Permission Auditor (script3_dsk_auditor.sh)

System administrators always need to know who exactly owns what directories and to that effect, this script loops through an array of some important Linux directories and checks if they actually exist on the machine, and if they do, it prints out the file permissions, the owner of the directory, and how much disk space it is eating up. Also, it specifically checks the global Git config directory but this relies heavily on a for loop to iterate over an array of strings. Inside the loop, I used awk to parse the output of ls -ld to grab exactly the permissions and the owner columns so the maintenance worker knows where the problems are.

#!/bin/bash
# Script 3: Disk and Permission Auditor

# Array of directories to check for the maintenance worker
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================="
echo "Directory Audit Report"
echo "========================================="

# For loop iterating through the array of directories
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on the filesystem
    if [ -d "$DIR" ]; then
        # Extract permissions (field 1) and owner (field 3) using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3}')
        # Get human-readable size, suppressing permission denied errors, cutting just the size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "[OK] $DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "[XX] $DIR does not exist on this system"
    fi
done

echo "-----------------------------------------"
echo "Checking Git Configuration Directory..."

# Specific check for Git's global config managed by the administration
GIT_CONFIG="/etc/gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    GIT_PERMS=$(ls -ld $GIT_CONFIG | awk '{print $1, $3}')
    echo "Found Global Git Config: $GIT_CONFIG"
    echo "Permissions: $GIT_PERMS"
else
    echo "No global gitconfig found in /etc/"
fi
