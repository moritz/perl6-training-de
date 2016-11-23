# kein Kontext, keine ro/rw-Entscheidung
sub (\unchanged) { }

# beliebige Argumente
sub capture-all(|c) { }

# Aufrufe mit Arrays/Hashes:
my @args = 'Perl 6', 0, 4;
say substr |@args;

my %opts = :r, :bin;
my $handle = open $file, |%opts;
