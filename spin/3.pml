active proctype P()
{
	int x=-1, z=0;

	if
	:: x == 1	->	z = 1
	:: x == 2	->	z = 2
	:: else		->	z = 3
	fi;

	printf("%d\n", z)
}
