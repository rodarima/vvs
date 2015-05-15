#define NW	2
#define NR	2

#define wait(s) { atomic { s > 0; s-- } }
#define signal(s) { s++ }

byte canwrite = 1;
byte rmutex = 1;
byte readers = 0;
int food = 0;

int wpid = 0;
int rpid = NW;

active [NW] proctype W()
{
	do ::
		wpid == _pid;
		food == 0;
		wait(canwrite);
cs:		printf("Writer %d in critical\n", _pid);
		food = food + NR;
		wpid = (wpid + 1) % NW;
		signal(canwrite);
		printf("Writer %d out critical\n", _pid);
	od
}

active [NR] proctype R()
{
	do ::
		rpid == _pid;
		food > 0;
		wait(rmutex);
		readers++;
		if
		:: readers == 1 -> wait(canwrite);
		:: else -> skip;
		fi;
		signal(rmutex);

cs:		printf("Reader %d in critical\n", _pid);

		food = food - NR;
		rpid = NW + (rpid + 1) % NR;

		wait(rmutex);
		readers--;
		if
		:: readers == 0 -> signal(canwrite);
		:: else -> skip;
		fi;
		signal(rmutex);
		printf("Reader %d out critical\n", _pid);

	od
}
