my $proc = run 'echo', 'Hallo world', :out;
my $captured-output = $proc.out.slurp-rest;
say "Output was $captured-output.perl()";
    # Output was "Hallo world\n"

my $p1 = run 'echo', 'Hello, world', :out;
my $p2 = run 'cat', '-n', :in($p1.out), :out;
say $p2.out.get;
