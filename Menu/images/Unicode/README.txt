Since PIL 1.1.7 is only built for win32 (not x64), you need to use Python 2.7 32-bit.
This means using the 32-bit cmd.exe and it also means calling the Python script like
this:

python create_header.py <version>

If you don't explicitly call python.exe that's been set to be the 32-bit and call just
the batch file create_header.py, you'll likely get the x64 version of Python which
does not have PIL.

For latest PIL, go here:
http://www.pythonware.com/products/pil/index.htm