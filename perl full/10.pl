my $emp_file = 'employees.txt';


open my $fh, '<', $emp_file
  or die "Can't open file : $!";


while(my $info = <$fh>){
 
  chomp($info);

  my ($emp_name, $job, $id) = split /:/, $info;
  print "$emp_name is a $job and has the id $id \n";
}


close $fh or die "Couldn't Close File : $!";


open $fh, '>>', $emp_file
  or die "Can't open file : $!";


print $fh "Mark:Salesman:124\n";


close $fh or die "Couldn't Close File : $!";


open $fh, '+<', $emp_file
  or die "Can't open file : $!";

  
  seek $fh, 0, 0;

  
  print $fh "Shivam:Salesman:125\n";

  
  close $fh or die "Couldn't Close File : $!";