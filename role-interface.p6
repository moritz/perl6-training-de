role Drawable {
    method draw($canvas) {
        ...
    }
}

class Square does Drawable {
    has ($.x, $.y, $.width, $.height);
    method draw($canvas) {
        my $x1 = $.x + $.width;
        my $y1 = $.y + $.hight;
        $canvas.line($.x, $.y, $x1, $.y);
        $canvas.line($.x, $y1, $x1, $y1);
        $canvas.line($.x, $.y, $.x, $y1);
        $canvas.line($x1, $.y, $x1, $y1);
    }
}

class Borken does Drawable { };
# Method 'draw' must be implemented by Borken because it is required by a role

