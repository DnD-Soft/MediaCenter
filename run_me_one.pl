#!/usr/bin/perl

system("mkdir pipes");
system("mkfifo pipes/player");
system("exec 3<>pipes/player");
system("chmod 777 pipes/player");
