#!/usr/bin/perl

use strict;
use warnings;

# Create a subroutine for printing out the message
sub print_message {
	print("Children Learn\n");
}

# Create a for loop for printing out the message 2000 times
for (my $i = 0; $i < 2000; $i++) {
	print_message();
}

# End of the file