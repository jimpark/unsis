#!perl -w

# Author: Jim Park
# Used to zip up all the source files.
# Just run this with Perl.

use Archive::Zip qw( :ERROR_CODES :CONSTANTS );

sub pred()
{
	my $rval = 1;

	if (/\.svn/)
	{
		$rval = 0;
	}

	return $rval;
}

my $zip = Archive::Zip->new();

my @dirs = (
	"ANSI",
  	"Contrib",
  	"Docs",
  	"Examples",
  	"Include", 
	"Menu",
	"Scons",
	"Scripts",
	"Source",
	"Unicode"
);

my @files = (
	"ChangeLog",
	"INSTALL",
	"SConstruct",
	"TODO.txt",
	"mkd.bat",
	"mkdu.bat",
	"mkr.bat",
	"mkru.bat",
	"zipsource.pl",
);

my $file;

foreach $file (@files)
{
	print "Adding file $file ...\n";
	$zip->addFile($file);
}

my $dir;

foreach $dir (@dirs)
{
	print "Adding directory $dir ...\n";
	$zip->addTree($dir, $dir, \&pred);
}

if (defined $ARGV[0])
{
	$zipfile = $ARGV[0];
}
else
{
	$zipfile = "source.zip";
}

print "Writing to zip file $zipfile ...\n";
unless ($zip->overwriteAs($zipfile) == AZ_OK)
{
	die 'Write error';
}
