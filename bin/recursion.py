#!/usr/bin/env python3.6

import os
import sys


def recursion(dir, level=0):

    os.chdir(dir)
    path = os.listdir()
    path.sort()

    for entry in path:
        if os.path.isfile(entry):
            try:
                print("|-" + "-" * (level * 2) + entry)
            except UnicodeEncodeError:
                pass

        elif os.path.isdir(entry):
            print("|~" + "~" * (level * 2) + entry + "/")
            newlevel = level + 1
            recursion(entry, newlevel)
            os.chdir("..")


if __name__ == "__main__":
    dirs = sys.argv[1:]
    if dirs == []:
        print(os.getcwd())
        recursion(os.getcwd())

    else:
        for dir in dirs:
            if os.path.isdir(dir):
                print()
                print(dir)
                recursion(dir)
                os.chdir("..")
