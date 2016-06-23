open(my $fh, "<compressed.txt") or die "Couldn't open compressed";
$words = <$fh>;
chomp($words);
@words = split(/ /, $words);
while(<$fh>){
	chomp($_);
	@row = split(/ /, $_);
	foreach(@row){
		print "@words[$_] ";
	}
	print "\n";
}
close($fh);