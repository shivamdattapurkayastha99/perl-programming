use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";



my %employees = (
  "Shivam" => 25,
  "Datta" => 43,
  "Purkayastha" => 39
);
printf("Shivam is %d \n", $employees{Shivam});
$employees{Frank} = 44;

while (my ($k,$v)=each %employees){print "$k $v\n"};
my @ages = @employees{"Shivam", "Datta"};
# say @ages;
my @hash_array = %employees;
say @hash_array;
delete $employees{'Frank'};
while (my ($k,$v)=each %employees){print "$k $v\n"}
say ((exists $employees{'Shivam'}) ? "Shivam is here" : "No Shivam");
for my $key (keys %employees){
  if ($employees{$key} == 25){
    say "Hi Shivam";
  }
}


