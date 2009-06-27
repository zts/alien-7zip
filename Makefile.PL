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

  
WriteAll;

