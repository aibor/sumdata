#!/bin/perl
# Sebastian

use strict;

my $original   = 0;
my $compressed = 0;

open DATA, '<', 'data.log';
while (<DATA>) {
	my @token = split /\s+/;
	
	$original   += $token[4];
	$compressed += $token[5];
}
close DATA;

printf("Original size %d kb.\n",   $original/1000);
printf("Compressed size %d kb.\n", $compressed/1000);
