class Task {
    method new(&action, *@dependencies) {
        self.bless(:&action, :@dependencies);
    }
    ...
}

my $t = Task.new(
    { say 'Frühstück essen' },
    Task.new( { say 'aufstehen' } ),
);
$t.run;
