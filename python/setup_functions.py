#! /usr/bin/env python3
import os
import shutil

# Prints the process and symlinks source to dest
def verbose_symlink(source, dest, overwrite=True):
	if os.path.lexists(dest):
		if not overwrite:
			print("File already exists.")
			return -1
		if os.path.isdir(dest) and not os.path.islink(dest):
			print("Removing", dest)
			shutil.rmtree(dest)
		else:
			print("Unlinking", dest)
			os.unlink(dest)
	print("Symlinking", source, "to", dest)
	os.symlink(source, dest)
	return 0
