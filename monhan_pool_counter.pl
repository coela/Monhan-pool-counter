use 5.14.1;
$| = 1;

my @pool_numbers = (0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,5,5,5,5,5);
huntnumber();

sub huntnumber {
	my $n = $pool_numbers[ int ( rand(scalar @pool_numbers) )];
	print "今回のプール回数は";
	for (1 .. 6) {
		print ".";
		select(undef, undef, undef, 0.5);
	}
	if ($n == 5) {
		say " 0回です！";
		select(undef, undef, undef, 1);
		system ("say -vAlbert \"0 quest\"");
		select(undef, undef, undef, 1.5);
		system ("mplayer -really-quiet one_more_thing.mp3");
		select(undef, undef, undef, 1);
		huntnumber();
	}
	else{
		say " ".$n."回です!";
		if ($n <=1){
			system ("say -vAlbert \"$n quest\"");
		}
		elsif($n == 4){
			system ("mplayer -really-quiet kichi.mp3");
			system ("say -vAlbert \"$n quests\"");
		}
		else{
			system ("say -vAlbert \"$n quests\"");

		}
	}
	select(undef, undef, undef, 1.5);
}
