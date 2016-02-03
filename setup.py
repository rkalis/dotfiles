#! /usr/bin/env python
import os

current_dir = os.path.dirname(os.path.abspath(__file__)) + "/"

os.system("xcode-select --install")
os.system(current_dir + "osx/set_defaults.sh")
os.system(current_dir + "homebrew/install.sh")
os.system(current_dir + "homebrew/setup.py")
os.system(current_dir + "git/setup.py")
os.system(current_dir + "python/setup.py")
os.system(current_dir + "fish/setup.py")
os.system(current_dir + "bin/setup.py")
os.system(current_dir + "subl/setup.py")