#!/usr/bin/env python
#from /usr/share/doc/python-notify/examples/
import pygtk
pygtk.require('2.0')
import pynotify
import sys

if __name__ == '__main__':
    if not pynotify.init("Basics"):
        sys.exit(1)

    n = pynotify.Notification("Alerte !", "Ya un batard qui se connecte en root !")

    if not n.show():
        print "Failed to send notification"
        sys.exit(1)
