#!/usr/bin/perl

use strict;
use warnings;
use CGI;

print("Content-type: text/html\n\n");

my $q = new CGI;
my $cmd = $q->param('command');

open(my $fh, '>', 'pipes/player');
print($fh $cmd);
close($fh);
