sub number-of-primes(Int $upto) {
    (1..$upto).grep(&is-prime).elems
}

my $promise = (start { number-of-primes(4000) }).then(
    -> $p { say $p.result }
);
await Promise.anyof($promise, Promise.in(0.01));

