sub named(*%all) {
    for %all.keys.sort -> $k {
        say $k, "\t", %all{$k};
    }
}

named x => 'y', foo => 'bar';
