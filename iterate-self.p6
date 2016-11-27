my $fh = open($?FILE);
for $fh.lines.kv -> $k, $v {
    say "$k: $v";
}
$fh.close;
