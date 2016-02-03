#! /usr/bin/env python3
import os

# Prints the process and symlinks source to dest
def verbose_symlink(source, dest, overwrite=True):
	if os.path.exists(dest) and os.path.isfile(dest):
		if not overwrite:
			print("File already exists.")
			return -1
		print("Unlinking", dest)
		os.unlink(dest)
	print("Symlinking", source, "to", dest)
	os.symlink(source, dest)
	return 0