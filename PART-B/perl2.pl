foreach $num (@ARGV) {
    $sum = 0;
    $a = $num; # temp

    until($num == 0) {
        $rem = $num % 10;
        $sum += $rem;
        $num = int($num / 10);
    }

    print "Sum of $a is : $sum\n";
}