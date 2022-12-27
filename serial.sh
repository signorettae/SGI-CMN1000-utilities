#!/usr/bin/perl –w
#set default serial device
$dev=”ttyS1”;
#find ip address on eth0
$ _ = `ifconfig eth0 |grep inet`;
($inet) = ( /([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/ );
#get hostname
$mesg=`hostname`;
chomp $mesg;
#write to lcd
open(LCD,”>/dev/$dev”)||die “ERROR: can not write to /dev/$dev\n”;
$|=1; print LCD “LCD:\n $mesg\n $inet \n”;
#uncomment this to debug your LCD message
#print “LCD:\n $mesg\n $inet \n”;