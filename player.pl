#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use CGI;

print("Content-type: text/html\n\n");

my $q = new CGI;
#better way needed
my $filename = $q->param("fileName");
my $action = $q->param("action");

say $filename;
#some error
switch($action){
	case "play" {
		system("sudo mplayer Media/$fileName > pipes/player > /dev/null 2>&1 &");
	}
	case "stopPlay" {
		system("sudo kill mplayer");
	}
	else {}
}
