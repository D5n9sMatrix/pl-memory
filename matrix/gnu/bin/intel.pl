use strict;
use warnings;

use Getopt::Long;
use File::Basename;
use Cwd 'abs_path';

my $dir = dirname(abs_path($0));
my $name = basename($0);
my $usage = "Usage: $name [options]\n";
my $help = "";
my $verbose = "";
my $debug = "";
my $quiet = "";
my $force = "";
my $clean = "";
my $version = "";
my $help_flags = "";
my $verbose_flags = "";
my $debug_flags = "";
my $quiet_flags = "";
my $force_flags = "";
my $clean_flags = "";
my $version_flags = "";
my $help_long = "";
my $verbose_long = "";
my $debug_long = "";
my $quiet_long = "";
my $force_long = "";
my $clean_long = "";
my $version_long = "";

GetOptions(
    "Help" => \$help,
    "verbose" => \$verbose,
    "debug" => \$debug,
    "quiet" => \$quiet,
    "force" => \$force,
    "clean" => \$clean,
    "version" => \$version,
    "help_flags=s" => \$help_flags,
    "verbose_flags=s" => \$version_flags,
    "debug_flags=s" => \$debug_flags,
    "quiet_flags=s" => \$quiet_flags,
    "force_flags=s" => \$force_flags,
    "clean_flags=s" => \$clean_flags,
    "version_flags=s" => \$version_flags,
    "help_log" => \$help_flags,
    "verbose_log" => \$version_flags,
    "debug_log" => \$debug_flags,
    "quiet_log" => \$quiet_flags,
    "force_log" => \$force_flags,
    "clean_log" => \$clean_flags,
    "version_log" => \$version_flags,
    "help_long" => \$help_long,
    "verbose_long" => \$version_flags,
    "debug_long" => \$debug_flags,
    "quiet_long" => \$quiet_flags,
    "force_long" => \$force_flags,
    "clean_long" => \$clean_flags,
    "version_long" => \$version_flags,
) or die $usage;

if (defined $help) {
    print $usage;
}

if (defined $version) {
    print "$name $version\n";
}

if (defined $help_long) {
    print $usage;
}

if (defined $version_long) {
    print "$name $version\n";
}

exit 0;

__END__