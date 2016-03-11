#! /usr/bin/env python3
import os
import sys
import re

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))) + "/python")
from setup_functions import verbose_symlink

# Determine source and destination paths
source_path = os.path.dirname(os.path.abspath(__file__)) + "/"
dest_path = os.path.expanduser("~/Library/Application Support/Sublime Text 2/Packages/User/")
settings_regex = re.compile(".*\.sublime-settings")

print("Source path:\t ",    source_path)
print("Destination path:", dest_path)

# Create the destination
os.makedirs(dest_path, exist_ok=True)

# Symlink contents of the source to the destination
for fn in os.listdir(source_path):
	if settings_regex.match(fn):
		verbose_symlink(source_path + fn, dest_path + fn)
