#define N 10

active proctype P()
{
	int x=0;

	do
	:: x++;
	:: if
		:: x < N -> break;
		:: else -> x=0;
	fi;
	od;

	printf("%d\n", x)
}
