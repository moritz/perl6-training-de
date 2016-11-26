class Vector2D {
    has Real $.x;
    has Real $.y;
}

multi sub infix:<*>(Vector2D $a, Real $b) {
    Vector2D.new(
        x => $a.x * $b,
        y => $a.y * $b,
    );
}

say Vector2D.new(x => 1, y => 2) * 2; 
    # Vector2D.new(x => 2, y => 4)


sub postfix:<!>(Int $x where $x >= 0) {
    [*] 1...$x;
}

say 10!;    # 3628800

sub prefix:<loud>($x) {
    uc $x;
}

say loud 'hello', 'world';  # HELLOworld
