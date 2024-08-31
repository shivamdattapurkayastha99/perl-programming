use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";
print("hello\n");
my $name='Derek';
my ($age,$street)=(40,'123 Main St');
my $my_info="$name lives on \"street \" \n";
print $my_info;
my $first=1;
my $second =2;
($first,$second)=($second,$first);
say "$first $second"