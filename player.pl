#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use CGI;

print("Content-type: text/html\n\n");

my $q = new CGI;

my $filename = $q->param('fileName');

system("sudo mplayer Media/$filename < pipes/player  > /dev/null 2>&1 &");
