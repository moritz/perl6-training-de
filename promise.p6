sub number-of-primes(Int $upto) {
    (1..$upto).grep(&is-prime).elems
}

my $promise = start number-of-primes(4000);
say $promise.status;        # Planned
await $promise;
say $promise.status;        # Kept
say $promise.result;        # 550

