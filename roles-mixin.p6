role Storable  {
    method store($filename) {
        spurt $filename, self.perl;
    }
}

my $x = 5;
$x does Storable;
$x.store('stored-int');


my $y = 5;
$y does role {
    method square { self * self }
};
say $x.square;
