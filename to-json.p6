multi to-json(@a) {
    return '[' ~ @a.map({ to-json($_)}).join(',') ~ ']';
}
multi to-json(Int $x) { ~$x }
multi to-json(Str $x) { qq["$x"]  }
multi to-json(%h) {
    return '{'
        ~ %h.map({ to-json(.key) ~ ':' ~ to-json(.value) }).join(', ')
        ~ '}'
}

say to-json([1, [2, {a => 'b'}]]);
