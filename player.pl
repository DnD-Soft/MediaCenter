#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use CGI;
#use Switch;

print("Content-type: text/html\n\n");

my $q = new CGI;
#better way needed
my $filename = $q->param("fileName");
#my $action = $q->param("action");

say $filename;

#some error
#switch($action){
#	case "play" {
#		system("sudo mplayer media/$filename > /dev/null 2>&1 &");
#	}
#	case "stopPlay" {
#		system("sudo pkill mplayer");
#	}
#	else {}
#}

system("sudo mplayer -slave media/$filename < pipes/player > /dev/null 2>&1 &");

print("test");
