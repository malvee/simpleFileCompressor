#compression algorithm
use Data::Dumper;
%dict = ();
open(my $ff, "<test.txt") or die "Couldn't open file file.txt, $!";
while(<$ff>){
	chomp($_);
  @row = split(/ /, $_);
  foreach(@row){
  	$dict{$_} += 1;
  }
}
close($ff);
open(my $fh, '>', "compressed.txt") or die "Could not open comprssed.txt";
foreach my $name (sort { $dict{$a} <= $dict{$b} } keys %dict) {
    $dict{$name} = $i++;
    printf "%-8s %s\n", $name, $dict{$name};
    print $fh "$name ";
}
print $fh "\n";


open($ff, "<test.txt") or die "Couldn't open file file.txt";
while(<$ff>){
	chomp($_);
  @row = split(/ /, $_);
  foreach(@row){
  	print $fh "$dict{$_} ";
  }
  print $fh "\n";
}

close $ff;
close $fh;