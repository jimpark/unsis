#!perl -w
# Checks to see how complete my conversion to Unicode is.
use strict;
use DirHandle;
use FileHandle;

my @exclude_list = (
	"Contrib/InstallOptions/resource.h",
	"Contrib/LangDLL/resource.h",
	"Contrib/MakeLangId/resource.h",
	"Contrib/Makensisw/resource.h",
	"Contrib/NSIS Menu/nsismenu/resource.h",
	"Contrib/StartMenu/resource.h",
	"Contrib/System/Source/Buffers.h",
	"Contrib/System/Source/stdafx.c",
	"Contrib/System/Source/stdafx.h",
	"Contrib/UIs/resource.h",
	"Contrib/zip2exe/resource.h",
	"Contrib/zip2exe/zlib/inffast.h",
	"Contrib/zip2exe/zlib/adler32.c",
	"Contrib/zip2exe/zlib/zlib.h",
	"Contrib/zip2exe/zlib/zutil.h",
	"Contrib/zip2exe/zlib/zutil.c",
	"Contrib/zip2exe/zlib/crc32.c",
	"Contrib/zip2exe/zlib/crc32.h",
	"Contrib/zip2exe/zlib/crypt.h",
	"Contrib/zip2exe/zlib/inffast.c",
	"Contrib/zip2exe/zlib/inffixed.h",
	"Contrib/zip2exe/zlib/inflate.c",
	"Contrib/zip2exe/zlib/inflate.h",
	"Contrib/zip2exe/zlib/inftrees.c",
	"Contrib/zip2exe/zlib/inftrees.h",
	"Source/7zip/7zip/Common/StdAfx.h",
	"Source/7zip/7zip/Compress/LZ/StdAfx.h",
	"Source/7zip/7zip/Compress/LZMA/StdAfx.h",
	"Source/7zip/7zip/Compress/RangeCoder/StdAfx.h",
	"Source/7zip/Common/StdAfx.h",
	"Source/7zip/Common/Types.h",
	"Source/7zip/Common/Alloc.h",
	"Source/7zip/Common/Types.h",
	"Source/7zip/Common/Defs.h",
	"Source/7zip/7zip/ICoder.h",
	"Source/7zip/7zip/IStream.h",
	"Source/7zip/7zip/Common/InBuffer.cpp",
	"Source/7zip/7zip/Common/InBuffer.h",
	"Source/7zip/7zip/Common/OutBuffer.cpp",
	"Source/7zip/7zip/Common/OutBuffer.h",
	"Source/7zip/7zip/Common/StreamUtils.cpp",
	"Source/7zip/7zip/Common/StreamUtils.h",
	"Source/afxres.h",
	"Source/defines.h",
	"Source/exehead/afxres.h",
	"Source/exehead/resource.h",
	"Source/exehead/sconf.h",
	"Source/version.h",
);

our %exclude;

my $file;
foreach $file (@exclude_list)
{
	$exclude{$file} = 1;
}

my @dirs = ("Source", "Contrib");
our $use_regexp = 1;
our $case_insensitive = 1;
our @pathlist = ();
our %status = ();
our $sortkey = "name";

sub sortfiles
{
	our %status;
	our $sortkey;

	if (! exists $status{$a}{$sortkey})
	{
		my $key;

		print STDERR "Bad sort key $sortkey!";
		print STDERR "Use one of the following:\n";

		foreach $key (sort keys %{$status{$a}})
		{
			print STDERR "\t", $key, "\n";
		}
		die;
	}
	
	if ($sortkey eq "name" || $sortkey eq "date")
	{
		return ($status{$a}{$sortkey} cmp $status{$b}{$sortkey});
	}
	else
	{
		return ($status{$a}{$sortkey} <=> $status{$b}{$sortkey});
	}
}

sub find_all_files($$)
{	
	our @pathlist;
	our $use_regexp;
	our $case_insensitive;
	my $path = shift;
	my $key = shift;
	my $d;
	my $file;
	my @dirs = ();

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
				my $candidate = "$path/$file";

				if ($file ne ".svn")
				{
					if ($use_regexp)
					{
						if ($case_insensitive && $candidate =~ /$key/i)
						{
							push(@pathlist, $candidate);
						} 
						elsif ($candidate =~ /$key/)
						{
							push(@pathlist, $candidate);
						}
					}
					else
					{
						if ($case_insensitive && (lc $file eq lc $key))
						{
							push (@pathlist, $candidate);
						}
						elsif ($file eq $key)
						{
							push (@pathlist, $candidate);
						}
					}
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
		&find_all_files($file, $key);
	}
}

sub get_status()
{
	our @pathlist;
	our %status;
	our %exclude;

	my $file;
	my $fh = new FileHandle;
	my $limit = 100;
	my $lcnt;
	my $total_lines = 0;
	my $completed_lines = 0;
	my $completed_files = 0;
	my $total_files = 0;
	my $max_fn_len = 0;

	foreach $file (@pathlist)
	{
		if (-f $file)
		{
			if (length $file > $max_fn_len)
			{
				$max_fn_len = length $file;
			}

			$fh->open($file) or die "Can't open $file for reading!";

			$lcnt = 0;

			$status{$file}{name} = $file;

			while (defined $fh && ($_ = <$fh>) && $lcnt++ < $limit)
			{
				if (/Unicode support.+Jim Park.+--?\s*([\d\/]+)/i)
				{
					$status{$file}{date} = $1;
					$status{$file}{complete} = 1;
					last;
				}
			}

			if (exists $exclude{$file})
			{
				$status{$file}{date} = "-excluded-";
				$status{$file}{complete} = 1;
			}

			# Count the lines of the rest of the files.
			while ($_ = <$fh>)
			{
				++$lcnt;
			}

			$status{$file}{lines} = $lcnt;

			if (! exists $status{$file}{complete})
			{
				$status{$file}{date} = "incomplete";
				$status{$file}{date} = "   ***    ";
				$status{$file}{complete} = 0;
			}
			else
			{
				$completed_files++;
				$completed_lines += $status{$file}{lines};
			}

			$total_files++;
			$total_lines += $status{$file}{lines};

			$fh->close();
		}
	}

	printf "%-${max_fn_len}s | LCNT | DATE COMPLETE\n", "FILE NAME";
	print "-"x79, "\n";
	foreach $file (sort sortfiles @pathlist)
	{
		printf "%-${max_fn_len}s | %4d | $status{$file}{date}\n",
			$file, $status{$file}{lines};
	}

	print "="x79, "\n";
	printf "Files Done: %5.2f%% (%d/%d)\n", 100*$completed_files/$total_files,
		$completed_files, $total_files;

	printf "Lines Done: %5.2f%% (%d/%d)\n", 100*$completed_lines/$total_lines,
		$completed_lines, $total_lines;
}

sub main()
{
	my $dir;
	foreach $dir (@dirs)
	{
		find_all_files($dir, "\\.(c|cpp|h|inc)\$");
	}

	our $sortkey;
	if (defined $ARGV[0])
	{
		my %argmap = (
			"FILE NAME" => "name",
			"FILE" => "name",
			"LCNT" => "lines",
			"LINE" => "lines",
			"DATE COMPLETE" => "date",
			"COMPLETE" => "date"
		);

		if (exists $argmap{uc $ARGV[0]})
		{
			$sortkey = $argmap{uc $ARGV[0]};
		}
		else
		{
			$sortkey = lc $ARGV[0];
		}
	}

	get_status();
}

main();
