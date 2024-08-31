use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";
my $age=80;
my $is_not_intoxicated=1;
my $age_last_exam=16;
if ($age<18){
    say "You can't drive";

}
elsif(!$is_not_intoxicated){
    say "you can't drive";
}
else{
    say "you can drive";

}

if(($age>=1)&&($age<18))
{
    say "you can't drive";

}
elsif(!$is_not_intoxicated){
    say "you can't drive";

}

if('a' eq 'b'){
    say "a equals b";
}
else{
    say "a does not equal b";
}

unless(!$is_not_intoxicated){
    say "hello";

}
say (($age>18)?"Can vote":"can't vote");
