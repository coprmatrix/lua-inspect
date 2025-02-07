if (index($_, 'version: ') == 0) {
    my $filename = substr($_, 9, length($_) - 10);
    $filename = "./inspect/rockspecs/inspect-$filename-0.rockspec";
    my @text;
    open(my $FH, '<', $filename) or die $!;
    while(<$FH>){
        push @text, $_;
    }
    close($FH);
    $_ = join("\n",@text);
} else {
    $_ = '';
}
