use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";
use feature 'state';

sub get_random {
  return int(rand 11);
}

say "Random Number ", get_random();


sub get_random_max {
  my ($max_num) = @_;

  
  $max_num ||= 11;
  return int(rand $max_num);
}

say "Random Number ", get_random_max(100);


sub get_sum {
  my ($num_1, $num_2) = @_;

  
  $num_1 ||= 1;
  $num_2 ||= 1;

  return $num_1 + $num_2;
}

say get_sum(5,4);


sub sum_many {
  my $sum = 0;
  foreach my $val (@_){
    $sum += $val;
  }
  return $sum;
}

say "Sum : ", sum_many(1,2,3,4,5);


sub increment {
  state $execute_total = 0;
  $execute_total++;
  say "Executed $execute_total times";
}

increment();
increment();


sub double_array {
  my @num_array = @_;
  $_ *= 2 for @num_array;
  return @num_array;
}

my @rand_array = (1,2,3,4,5);

print join(", ", double_array(@rand_array)), "\n";


sub get_mults {
  my ($rand_num) = @_;

  
  $rand_num ||= 1;

  return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);

say "$dbl_num, $trip_num";


sub factorial {
  my ($num) = @_;
  return 0 if $num <= 0;
  return 1 if $num == 1;
  return $num * factorial($num - 1);
}

say "Factorial 4 = ", factorial(4);


