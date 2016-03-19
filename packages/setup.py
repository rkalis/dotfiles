#! /usr/bin/env python
import os
import re

path = os.path.dirname(os.path.abspath(__file__)) + "/"
list_files = {
    "brew": "brew.list",
    "brewcask": "brew-cask.list",
    "pip": "pip.list",
    "npm": "npm.list",
    "gem": "gem.list",
    "haxelib": "haxelib.list"
}
comment = re.compile("\#.*")

os.system("sudo -v")

with open(path + list_files["brewcask"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("brew cask install " + line + " --appdir=/Applications")

with open(path + list_files["brew"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("brew install " + line)

with open(path + list_files["pip"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("pip install " + line)
            os.system("pip3 install " + line)

with open(path + list_files["npm"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("npm install -g " + line)

with open(path + list_files["gem"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("sudo gem install " + line)

os.system("haxelib setup /usr/local/Cellar/haxe/3.2.1/lib/haxe/extra/haxelib_src")
with open(path + list_files["haxelib"], "r") as f:
    for line in f:
        if not comment.match(line):
            print("Installing " + line)
            os.system("haxelib install " + line)
