use strict;
use warnings;

open(FILE,"situatie-1.txt") or die $!;

#my $linie;

while(my $linie = <FILE>)
{
   my @lista=split("<li>",$linie);
   my @lista1=split("</li>",$lista[1]);
   #remove -
   my @lista2=split("-",$lista1[0]);
   my @lista3=split(" ",$lista2[0]);

   # if(scalar(@lista2) eq 2)
       print "\E$lista3[0]"." "."\E$lista3[1]". " $lista2[1]"."  $lista2[-1]"."\n";



 #print "$linie"."\n";
}

close(FILE);

