byte wantP = 0, wantQ = 0;
byte critical = 0;

active proctype P() {
	atomic {
		!wantQ;
		wantP = true;
	}
	critical++;
cs:	printf("Critical section P");
	critical--;
}


active proctype Q() {
	atomic {
		!wantP;
		wantQ = true;
	}
	critical++;
	false;
cs:	printf("Critical section Q");
	critical--;
}
