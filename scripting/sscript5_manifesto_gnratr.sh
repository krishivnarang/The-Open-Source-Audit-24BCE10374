# Script 5: Open Source Manifesto Generator (script5_manifesto_gnratr.sh)

This last one is an interactive script. When run, it pauses and actually asks the user three specific questions about their views on open source software. It captures those inputs, builds a personalized paragraph, and saves that text into a completely new .txt file named after the user. The read command is used to capture interactive terminal input into variables. I used string concatenation to merge their answers into a cohesive paragraph. To handle file writing, I used the > operator to overwrite the file, and the >> operator to append the rest of the text so the staff has a record of it.

#!/bin/bash
# Script 5: Open Source Manifesto Generator

# --- Aliases Concept ---
# Aliases allow users to create custom shortcuts for long commands in Linux.
# For example, adding `alias update='sudo apt update && sudo apt upgrade'` 
# to your ~/.bashrc file saves time. Aliases represent the FOSS philosophy 
# of modifying your environment to suit your exact needs without asking permission.

echo "============================================="
echo "   The Open Source Manifesto Generator"
echo "============================================="
echo "Please answer the following three questions:"
echo ""

# Using 'read' to capture user input interactively from the staff
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capture current date and construct dynamic filename for the administration
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."

# String concatenation to build the paragraph for the maintenance worker
PARAGRAPH="I am a developer who relies on open-source software like $TOOL every single day. "
PARAGRAPH+="To me, the core of the open-source movement is about $FREEDOM. "
PARAGRAPH+="Because I have benefited so much from the unpaid staff in the community, if I had the time, "
PARAGRAPH+="I would build a $BUILD and release it under a GPL license for the world to use."

# Writing to the file using > (overwrite) and >> (append)
echo "----------------------------------------" > $OUTPUT
echo " OPEN SOURCE MANIFESTO" >> $OUTPUT
echo " Author: $(whoami)" >> $OUTPUT
echo " Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "$PARAGRAPH" >> $OUTPUT

echo "Success! Your manifesto has been saved to $OUTPUT"
echo "Here is what it says:"
echo "----------------------------------------"
# Outputting the final file to the screen
cat $OUTPUT
