#!/usr/bin/env python

import pygtk
pygtk.require('2.0')
import pynotify
import sys

if __name__ == '__main__':
    if not pynotify.init("Basics"):
        sys.exit(1)

    n = pynotify.Notification("Du calme mon ami !", "Tu veux un coup de main, peut être ?")

    if not n.show():
        print "Failed to send notification"
        sys.exit(1)
