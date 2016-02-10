#! /usr/bin/env python
import os
import re

path = os.path.dirname(os.path.abspath(__file__)) + "/"
list_files = {
	"brew": "brew.list",
	"brewcask": "brew-cask.list"
}
comment = re.compile("\#.*")

# Install all items from the brew lists
with open(path + list_files["brew"], "r") as f:
	for line in f:
		if not comment.match(line):
			print("Installing", line)
			os.system("brew install " + line)

with open(path + list_files["brewcask"], "r") as f:
	for line in f:
		if not comment.match(line):
			print("Installing", line)
			os.system("brew cask install " + line)