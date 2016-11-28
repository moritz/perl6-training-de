say grep { $_.is-prime }, 1..10;
say grep *.is-prime, 1..10;

say map { $_ + 5 }, 1..3;
say map * + 5, 1..3;
