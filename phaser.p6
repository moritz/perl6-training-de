say elems (1..20).grep({ (2 ** $_ - 1).is-prime});
say now - INIT now;


my $fh = open 'output', :w;
LEAVE $fh.close if $fh;
$fh.say: 'initial data';
die "OH NOEZ";
