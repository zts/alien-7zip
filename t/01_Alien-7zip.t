#!/usr/bin/perl

BEGIN { chdir 't' if -d 't' };
use lib '../lib';
use Test::More 'no_plan';
use strict;
use File::Spec;
use warnings;

my $class = 'Alien::7zip';

use_ok($class);

ok( -d $class->prefix(), "Dir 'prefix' exists.");
