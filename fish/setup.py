#! /usr/bin/env python3
import os
import sys
import re

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))) + "/python")
from setup_functions import verbose_symlink

# Determine source and destination paths
source_path = os.path.dirname(os.path.abspath(__file__)) + "/"
dest_path = os.path.expanduser("~/.config/fish/")
f_dir = "functions/"
config_file = "config.fish"
fish_regex = re.compile(".*\.fish")

print("Source path:\t ",    source_path)
print("Destination path:", dest_path)
print("Functions folder:", f_dir)
print("Config file:\t ",    config_file)

# Create the destination
os.makedirs(dest_path + f_dir, exist_ok=True)

# Symlink the config file
verbose_symlink(source_path + config_file, dest_path + config_file)

# Symlink contents of the source to the destination
for fn in os.listdir(source_path + f_dir):
	if fish_regex.match(fn):
		verbose_symlink(source_path + f_dir + fn, dest_path + f_dir + fn)

# Run the initial setup
os.system("setup.fish")