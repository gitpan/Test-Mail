#!/usr/bin/perl -w

use strict;
use Test::Mail;
#use Test::More;

my $tm = Test::Mail->new( logfile => '/tmp/testmail.log');

$tm->accept();

sub foo {
    is  ($tm->header->get("From:"), 'skud@e-smith.com', "From address exact match");
    like($tm->header->get("From:"), qr/skud/,           "From address regexp match");
}
