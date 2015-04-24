active proctype P()
{
	int x=4, z=0;

	if
	:: x > 0	->	z = 1
	:: x == 4	->	z = 2
	:: x % 2 == 0	->	z = 3
	fi;

	printf("%d\n", z)
}
