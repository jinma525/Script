#!/usr/bin/perl
#该脚本用于实现由data生产list
#输入pl,data文件夹，以及生成的list文件
use warnings;
use strict;

my $file;
my($dir,$filelist)=@ARGV;

open(RL,">$filelist")||die"Can not make $filelist";
print "open $filelist to write\n";

opendir DH, $dir or die"cannot open $dir:$!";
foreach $file(readdir DH){
	next if $file eq "." or $file eq "..";
	#print "one file in $dir is $file\n";
	
  my $filepath = "$dir\\$file";
#	my $filepath = "$file";
  print RL "$filepath\n";
}

close RL;
closedir DH;
