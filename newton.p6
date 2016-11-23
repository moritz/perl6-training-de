my $x = 8;

my $r = $x;

for 1..6 {
    $r = ($r + $x / $r) / 2;
    say $r.^name, ': ', $r.perl;
}


