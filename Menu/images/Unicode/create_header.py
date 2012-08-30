#!python
from PIL import Image, ImageFont, ImageDraw
import sys
import os

def CreateMenuImage(version):
   print 'creating images...'

   ## create new header.gif for menu

   im = Image.new('RGB', (598, 45), '#000000')

   # copy background from header-notext.gif

   bim = Image.open(r'header-notext.gif')
   im.paste(bim)

   # draw new version number

   draw = ImageDraw.Draw(im)
   font = ImageFont.truetype('c:\\windows\\fonts\\trebuc.ttf', 24)
   text = 'nullsoft scriptable install system %s' % version
   draw.text((85, 7), text, font = font, fill = 'white')

   # save

   im = im.convert('P', palette = Image.ADAPTIVE)
   im.save(r'header.gif')

def Main():
   if (len(sys.argv) != 2):
      print "Usage: " + os.path.basename(sys.argv[0]) + " {version number}"
   else:
      CreateMenuImage(sys.argv[1])

if __name__ == "__main__":
    Main()
