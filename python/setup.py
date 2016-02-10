#! /usr/bin/env python3
import os
import re

path = os.path.dirname(os.path.abspath(__file__)) + "/"
pip_list = "pip.list"
comment = re.compile("\#.*")

# Install all items from the brew lists
with open(path + pip_list, "r") as f:
	for line in f:
		if not comment.match(line):
			print("Installing", line)
			os.system("pip install " + line)
			os.system("pip3 install " + line)