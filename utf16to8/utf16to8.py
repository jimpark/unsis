#!python

__author__ = 'Jim Park'

def Main():
    """
    Main function to run.
    """
    from argparse import ArgumentParser
    parser = ArgumentParser(description='Convert UTF-16 file to UTF-8.')
    parser.add_argument('files', metavar='FILES', type=str, nargs='+',
                        help='UTF-16 files to convert.')
    args = parser.parse_args()

    from glob import glob
    from codecs import BOM_UTF16

    for i in args.files:
        l = glob(i)
        for f in l:
            contents = ""
            with open(f, 'rb') as fs:
                contents = fs.read()

            if contents.startswith(BOM_UTF16):
                print "Converting %s to UTF-8." % f
                with open(f, 'w+b') as fs:
                    fs.write(contents.decode('utf-16').encode('utf-8'))
            else:
                print "%s is not a UTF-16 file." % f

if __name__ == "__main__":
    Main()