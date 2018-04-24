#!/usr/bin/env python3.6

import os
import re

# used for sorting files in naturl order. See function "natural_sort" in class Renumber
_nsre = re.compile('([0-9]+)')


class Renumber():
    """
    A class used to find files and renumber them based off a
    prefix that is passed to it when the class is instansiated
    """

    def __init__(self, file_prefix, path):
        """
            Variables that __init__ creates:
            :param count: An Int, the initial count that will be used when renaming files
            :param prefix: A String, what will be added to the front of all renumber_files
            :param path: A String, the path where the renumbering will begin to take place
        """

        self.count = 0
        self.tmp_count = 0
        self.prefix = file_prefix
        self.path = path

    def print_prefix(self):
        """Returns the name of the prefix being used"""

        print(self.prefix)

    def print_path(self):
        """Returns the path where the renumbering will being to take place"""

        print(self.path)

    def natural_sort(self, s):
        """ takes in a list and sorts it in a natural sort order """
        return [int(text) if text.isdigit() else text.lower()
                for text in re.split(_nsre, s)]

    def find_dirs(self):
        """
            Finds all subdirectors under the root dir (the path that was passed).
            All subdirectories that are found are placed into a list, sorted, then returned
        """

        all_dirs_list = []
        for root, dirs, files in os.walk(self.path):
            for dir in dirs:
                all_dirs_list.append(os.path.join(root, dir))
        all_dirs_list.sort()
        return all_dirs_list

    def renumber_files(self, dir_list):
        """
            Takes in a list with directory paths. It then iterates over the directories
            and looks for all files in each one. If a file is found it is added to a files list.
            Once all files are found in the current directory, the files are renumbered and it then
            proceedes to the next directory
        """

        for dir in dir_list:
            os.chdir(dir)
            files = []
            for entry in os.listdir('.'):
                if os.path.isfile(entry):
                    files.append(entry)

            files.sort(key=self.natural_sort)

            tmp_files = []

            for tmp_file in files:
                self.tmp_count += 1
                filename, extension = os.path.splitext(tmp_file)
                tmp_name = f'G5G74W - {self.tmp_count}{extension}'
                tmp_files.append(tmp_name)
                os.rename(tmp_file, tmp_name)

            for file in tmp_files:
                self.count += 1
                filename, extension = os.path.splitext(file)
                new_filename = f'{self.prefix} - {self.count}{extension}'
                os.rename(file, new_filename)


def main():
    # get the current file path
    path = os.getcwd()

    # get the file prefix from the name of the directory
    dir_name = os.path.split(path)
    file_prefix = dir_name[-1]

    # instantiate the class that will handle all the renumbering and pass the prefix and path
    renumber = Renumber(file_prefix, path)

    # find all subdirs in the path.
    dirs = renumber.find_dirs()

    # renumber all the files that are found
    renumber.renumber_files(dirs)


if __name__ == "__main__":
    main()
