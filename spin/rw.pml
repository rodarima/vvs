#define NR	10
#define NW	10

#define wait(s) { atomic { s > 0; s-- } }
#define signal(s) { s++ }

byte canwrite = 1;
byte rmutex = 1;
byte readers = 0;

active [NW] proctype W()
{
	do ::
		wait(canwrite);
cs:		printf("Writer %d in critical\n", _pid);
		signal(canwrite)
		printf("Writer %d out critical\n", _pid);
	od
}

active [NR] proctype R()
{
	do ::

		wait(rmutex);
		readers++;
		if
		:: readers == 1 -> wait(canwrite);
		:: else -> skip;
		fi;
		signal(rmutex);

cs:		printf("Reader %d in critical\n", _pid);
		
		wait(rmutex);
		readers--;
		if
		:: readers == 0 -> signal(canwrite);
		:: else -> skip;
		fi;
		signal(rmutex)
		printf("Reader %d out critical\n", _pid);

	od
}
