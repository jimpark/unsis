#!perl -w

use strict;
use DirHandle;
use Cwd;

our %pathlist = ();

sub find_all_files($$)
{	
	our %pathlist;
	my $path = shift;
	my $level = shift;
	my $d;
	my $file;
	my @dirs = ();

	my $oldpath = getcwd();

	if ($level == 3)
	{
		print STDERR "\nInfo: in $path\n";
	}
	else
	{
		print STDERR ".";
	}

	$d = new DirHandle $path; 

	if ($d)
	{
		while (defined($file = $d->read))
		{
			if ($file ne "." && $file ne "..")
			{
				if (-d "$path/$file" && $file ne ".svn")
				{
					push @dirs, "$path/$file";
				}

				if ($file ne ".svn" && -T "$path/$file") # -T is the text file test
				{
					print "Converting $file to DOS...\n";
					system("unix2dos", "\"$path/$file\"");
				}
			}
		}
	}
	else
	{
		print STDERR "Error parsing $path!\n";
	}

	foreach $file (@dirs)
	{
		&find_all_files($file, $level + 1);
	}
}

sub main()
{
	if (-d $ARGV[0])
	{
		my $oldpath = getcwd();
		chdir($ARGV[0]);

		find_all_files(".", 0);

		my $file;

		chdir($oldpath);
	}
	else
	{
		print STDERR "$_ is not a directory!\n";
	}
}

main()
