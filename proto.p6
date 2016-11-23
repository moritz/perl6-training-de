proto sub get($protocol, $url, *%) {
    say "Getting $url via $protocol";
    my $result = try {
        {*};
    }
    if $! {
        say "Got error '$!' for $url"
    }
    return $result;
}
multi sub get('http', $url) { say "http $url" }
multi sub get('ftp',  $url) { say "ftp $url" }

get('http', "http://perl6.org/");
