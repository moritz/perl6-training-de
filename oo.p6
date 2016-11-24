class Task {
    has &.action;
    has @.dependencies;
    method run() {
        .run for @.dependencies;
        &!action();
    }
}

my $t = Task.new(
    action => { say 'Frühstück essen' },
    dependencies => Task.new(
        action => { say 'aufstehen' },
    ),
);
$t.run;


class Rectangle {
    has $.width;
    has $.height = self.width;
    method area() { $.width * $.height }
}

say Rectangle.new( width => 5 ).area;
