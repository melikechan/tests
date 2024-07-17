use strict;
use warnings;

my $size = 1_000_000_000;
my @arr;

for my $i (0 .. $size - 1) {
    $arr[$i] = $i;
}

print "Array allocated with size $size\n";
