#!/usr/bin/perl

print "\nEnter a string : ";
$a = <STDIN>;     # chomp() is not needed, cuz $str x n, prints cleanly in nextline each time

print "\nEnter total number of times the string to be displayed : ";
chop($b = <STDIN>);

$c = $a x $b;
print "Result is : \n$c";