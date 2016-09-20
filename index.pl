#!/usr/bin/perl

use strict;
use warnings;
use Template;

print("Content-type: text/html\n\n");

my @media = qx(ls Media);

my $config = {
    INCLUDE_PATH => 'Template'
};

my $template = Template->new($config);

my $templateFile = 'template.html';

my $vars = {
    content => \@media
};

$template->process($templateFile, $vars);
