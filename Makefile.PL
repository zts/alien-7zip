#
# Alien::7zip
#
# Provides access to the 7zip binaries

use inc::Module::Install;
  
# Define metadata
name           'Alien-7zip';
all_from       'lib/Alien/7zip.pm';
  
# Specific dependencies
requires       'File::Spec' => 0;
test_requires  'Test::More' => 0;


# Here on down fetches and builds 7zip, so that everything's ready
# before `make install` gets run.
use lib 'lib';

use Cwd qw[cwd];
use IPC::Cmd qw[run can_run];

require Alien::7zip;

# Install 7zip, unless we were invoked with 'dist'
unless( $ARGV[0] eq 'dist' ) {
  my $cwd;
  my $progs = {};

  # Find required programs
  for my $pgm ( qw[sh make tar gzip] ) {
    $progs->{$pgm} = can_run($pgm)
      or die qq[Can not locate required program '$pgm'\n];
  }

  # testing
  use File::Copy;
  copy("/tmp/7za", Alien::7zip->prefix);
}
  
WriteAll;

