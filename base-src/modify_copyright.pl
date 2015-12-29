#!perl -w

use FileHandle;
use strict;

if (@ARGV != 2)
{
	print "Usage: $0 <previous year> <new year>\n";
	exit -1;
}

my @filetypes = ("*.cpp", "*.c", "*.h", "*.hpp");
my @dirs = ("Source", "Source/7zip", "Source/bzip2", "Source/exehead", "Source/zlib");
my @files;
my $file;
my $prev_year = shift @ARGV;
my $new_year = shift @ARGV;
my $dir;


foreach $file (@filetypes)
{
	foreach $dir (@dirs)
	{
		push @files, (glob "$dir/$file");
	}
}

foreach $file (@files)
{
	my @buf;
   my $modified = 0;

	my $fp = new FileHandle($file);
	
	while (<$fp>)
	{
		if (/^\s*\*.*Copyright/)
		{
			s/\b$prev_year\b/$new_year/;
         $modified = 1;
		}
		push @buf, $_;
	}

	$fp->close();

   if ($modified)
   {
      print "Modifying $file...\n";
      $fp->open(">$file") or die;
      print $fp @buf;
      $fp->close();
   }
}
