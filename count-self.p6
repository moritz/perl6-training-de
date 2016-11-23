use v6;

my %bag := bag( open($?FILE).comb );

for %bag.pairs.sort({ - .value }) -> $p {
    say $p.key, "\t", $p.value;
}
