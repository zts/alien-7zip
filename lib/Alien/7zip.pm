package Alien::7zip;

use strict;
use vars qw[$VERSION];

$VERSION = '0.00_01';

=head1 NAME

Alien::7zip

=head1 SYNOPSIS

require Alien::7zip;

my $prefix = Alien::7zip->prefix;

=head1 DESCRIPTION

This module resolves the non-perl prerequisite 7zip.

It does so by installing a private copy of 7zip into its module directory.

=head1 METHODS

=head2 prefix();

Returns the directory path containing the 7zip binaries.
For this module, that will be C<$INC{'Alien/7zip'}>

=cut

my $prefix;
sub prefix {
  return $prefix if $prefix;

  my $ext = '.pm';
  $prefix = join '/', split '::', __PACKAGE__;
  $prefix = File::Spec->rel2abs( $INC{$prefix.$ext} );
  $prefix =~ s/$ext$//;

  return $prefix;
}


=head1 TODO

=item *

Probe for system installed version of 7zip

=item *

Return the list of 7zip binaries available

=head1 AUTHOR

This module was written by:
Zachary Stevens E<lt>zts@cryptocracy.comE<gt>.

=head1 COPYRIGHT

This module is copyright (c) 2009 Zachary Stevens E<lt>zts@cryptocracy.comE<gt>.

=cut

1;
