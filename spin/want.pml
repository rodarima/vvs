byte wantP = 0, wantQ = 0;
byte critical = 0;

active proctype P() {
	do
	::
		atomic {
			!wantQ;
			wantP = true;
		}
		critical++;
cs:		printf("Critical section P");
		critical--;
	od;
}


active proctype Q() {
	do
	::
		atomic {
			!wantP;
			wantQ = true;
		}
		critical++;
cs:		printf("Critical section Q");
		critical--;
	od;
}
