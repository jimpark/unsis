'''This script converts normal ASCII strings to their wide-char representations
for use in the assembly code.'''
import sys
import textwrap
from os.path import *

if len(sys.argv) < 2:
   scriptName = basename(sys.argv[0])
   print scriptName
   print "-" * len(scriptName)
   for l in textwrap.wrap(__doc__, 79):
      print l
   
   print
   print "Usage: " + scriptName + " \"ASCII string\""
   sys.exit(-1)

pieces = []
for ch in sys.argv[1]:
   pieces.append("'" + ch + "', 0")

last = 0
for i in range(0, len(pieces)):
   if (i % 9 == 8):
      buffer = ', '.join(pieces[last:i])
      print "      BYTE " + buffer
      last = i + 1

buffer = ', '.join(pieces[last:])
print "      BYTE " + buffer
