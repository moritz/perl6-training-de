my $x = 3;

say 'abcdef' ~~ / . ** 1..3 /;
say 'abcdef' ~~ / . ** {1..$x} /;
