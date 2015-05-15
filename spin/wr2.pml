#define NR	2
#define NW	2

#define wait(s) { atomic { s > 0; s-- } }
#define signal(s) { s++ }

byte canread = 1;
byte canwrite = 1;
byte wmutex = 1;
byte writers = 0;
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

		wait(wmutex);
		writers++;
		if
		:: writers == 1 -> wait(canread);
		:: else -> skip;
		fi;
		signal(wmutex);

		wait(canwrite);
cs:		printf("Writer %d in critical\n", _pid);
		food = food + NR;
		wpid = (wpid + 1) % NW;

		signal(canwrite);

		wait(wmutex);
		writers--;
		if
		:: writers == 0 -> signal(canread);
		:: else -> skip;
		fi;
		signal(wmutex);
		printf("Writer %d out critical\n", _pid);
	od
}

active [NR] proctype R()
{
	do ::
		rpid == _pid;
		food > 0;

		wait(canread);
		wait(rmutex);
		readers++;
		if
		:: readers == 1 -> wait(canwrite);
		:: else -> skip;
		fi;
		signal(rmutex);
		signal(canread);

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
