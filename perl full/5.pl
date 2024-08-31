use strict;
use warnings;
use diagnostics;
use feature 'say';
use feature "switch";
my $age_old=18;
given($age_old){
    when($_>16){
        say "Drive";
        continue;

    }
    when($_>17){
        say "Vote";
        
        
    }
    default{
        say "Nothing";
    }
}