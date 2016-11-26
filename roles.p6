role Storable  {
    method store($filename) {
        spurt $filename, self.perl;
    }
}

class Account does Storable {
    has Str $.username;
    has Bool $.is-valid = True;
}

my $ac = Account.new(username => 'mlenz');
$ac.store('mlenz.p6');
