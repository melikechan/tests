use strict;
use warnings;

my $n = <STDIN>;
chomp $n;

my $line = <STDIN>;
chomp $line;

my @arr = split(' ', $line);

my $max_index = -1;
my $max_value = -1;

for (my $i = 0; $i < $n; $i++) {
    if ($arr[$i] > $max_value) {
        $max_index = $i;
        $max_value = $arr[$i];
    }
}

print $max_index, "\n";