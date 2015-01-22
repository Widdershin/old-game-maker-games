import os
import fnmatch
from collections import defaultdict

linecounts = defaultdict(int)

for root, directories, files in os.walk('.'):
    try:
        root_path = root.split(os.sep)[1]
    except IndexError:
        continue

    def linecount(filename):
        with open(os.path.join(root, filename)) as open_file:
            return sum(1 for line in open_file if line.strip())

    linecounts[root_path] += sum(
        linecount(fname) for fname in fnmatch.filter(files, '*.gml')
    )

for folder in sorted(linecounts, key=linecounts.get, reverse=True):
    print("{}: {} SLOC".format(folder, linecounts[folder]))
