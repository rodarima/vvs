#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: /* STATE 1 - wr2.pml.nvr:5 - [(!((W._p==cs)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==23))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 8 - wr2.pml.nvr:10 - [(!((W._p==cs)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==23))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 13 - wr2.pml.nvr:12 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC R */
	case 6: /* STATE 1 - wr2.pml:53 - [((rpid==_pid))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!((now.rpid==((int)((P1 *)this)->_pid))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 2 - wr2.pml:54 - [((food>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.food>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 3 - wr2.pml:56 - [((canread>0))] (10:0:1 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.canread)>0)))
			continue;
		/* merge: canread = (canread-1)(0, 4, 10) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.canread);
		now.canread = (((int)now.canread)-1);
#ifdef VAR_RANGES
		logval("canread", ((int)now.canread));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 9: /* STATE 7 - wr2.pml:57 - [((rmutex>0))] (11:0:1 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((int)now.rmutex)>0)))
			continue;
		/* merge: rmutex = (rmutex-1)(0, 8, 11) */
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.rmutex);
		now.rmutex = (((int)now.rmutex)-1);
#ifdef VAR_RANGES
		logval("rmutex", ((int)now.rmutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 11 - wr2.pml:58 - [readers = (readers+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.readers);
		now.readers = (((int)now.readers)+1);
#ifdef VAR_RANGES
		logval("readers", ((int)now.readers));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 12 - wr2.pml:60 - [((readers==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now.readers)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 13 - wr2.pml:60 - [((canwrite>0))] (22:0:1 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.canwrite)>0)))
			continue;
		/* merge: canwrite = (canwrite-1)(0, 14, 22) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.canwrite);
		now.canwrite = (((int)now.canwrite)-1);
#ifdef VAR_RANGES
		logval("canwrite", ((int)now.canwrite));
#endif
		;
		/* merge: .(goto)(0, 20, 22) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: /* STATE 21 - wr2.pml:63 - [rmutex = (rmutex+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		(trpt+1)->bup.oval = ((int)now.rmutex);
		now.rmutex = (((int)now.rmutex)+1);
#ifdef VAR_RANGES
		logval("rmutex", ((int)now.rmutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 23 - wr2.pml:64 - [canread = (canread+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.canread);
		now.canread = (((int)now.canread)+1);
#ifdef VAR_RANGES
		logval("canread", ((int)now.canread));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 25 - wr2.pml:66 - [printf('Reader %d in critical\\n',_pid)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		Printf("Reader %d in critical\n", ((int)((P1 *)this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 26 - wr2.pml:67 - [food = (food-2)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = now.food;
		now.food = (now.food-2);
#ifdef VAR_RANGES
		logval("food", now.food);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 27 - wr2.pml:68 - [rpid = (2+((rpid+1)%2))] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = now.rpid;
		now.rpid = (2+((now.rpid+1)%2));
#ifdef VAR_RANGES
		logval("rpid", now.rpid);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 28 - wr2.pml:70 - [((rmutex>0))] (32:0:1 - 1) */
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((int)now.rmutex)>0)))
			continue;
		/* merge: rmutex = (rmutex-1)(0, 29, 32) */
		reached[1][29] = 1;
		(trpt+1)->bup.oval = ((int)now.rmutex);
		now.rmutex = (((int)now.rmutex)-1);
#ifdef VAR_RANGES
		logval("rmutex", ((int)now.rmutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 19: /* STATE 32 - wr2.pml:71 - [readers = (readers-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.readers);
		now.readers = (((int)now.readers)-1);
#ifdef VAR_RANGES
		logval("readers", ((int)now.readers));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 33 - wr2.pml:73 - [((readers==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((int)now.readers)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 34 - wr2.pml:73 - [canwrite = (canwrite+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)now.canwrite);
		now.canwrite = (((int)now.canwrite)+1);
#ifdef VAR_RANGES
		logval("canwrite", ((int)now.canwrite));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 40 - wr2.pml:76 - [rmutex = (rmutex+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.rmutex);
		now.rmutex = (((int)now.rmutex)+1);
#ifdef VAR_RANGES
		logval("rmutex", ((int)now.rmutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 42 - wr2.pml:77 - [printf('Reader %d out critical\\n',_pid)] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][42] = 1;
		Printf("Reader %d out critical\n", ((int)((P1 *)this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 46 - wr2.pml:80 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][46] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC W */
	case 25: /* STATE 1 - wr2.pml:21 - [((wpid==_pid))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.wpid==((int)((P0 *)this)->_pid))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 2 - wr2.pml:22 - [((food==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.food==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 3 - wr2.pml:24 - [((wmutex>0))] (7:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.wmutex)>0)))
			continue;
		/* merge: wmutex = (wmutex-1)(0, 4, 7) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.wmutex);
		now.wmutex = (((int)now.wmutex)-1);
#ifdef VAR_RANGES
		logval("wmutex", ((int)now.wmutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: /* STATE 7 - wr2.pml:25 - [writers = (writers+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.writers);
		now.writers = (((int)now.writers)+1);
#ifdef VAR_RANGES
		logval("writers", ((int)now.writers));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 8 - wr2.pml:27 - [((writers==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.writers)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 9 - wr2.pml:27 - [((canread>0))] (18:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.canread)>0)))
			continue;
		/* merge: canread = (canread-1)(0, 10, 18) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.canread);
		now.canread = (((int)now.canread)-1);
#ifdef VAR_RANGES
		logval("canread", ((int)now.canread));
#endif
		;
		/* merge: .(goto)(0, 16, 18) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: /* STATE 17 - wr2.pml:30 - [wmutex = (wmutex+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.wmutex);
		now.wmutex = (((int)now.wmutex)+1);
#ifdef VAR_RANGES
		logval("wmutex", ((int)now.wmutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 19 - wr2.pml:32 - [((canwrite>0))] (23:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.canwrite)>0)))
			continue;
		/* merge: canwrite = (canwrite-1)(0, 20, 23) */
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.canwrite);
		now.canwrite = (((int)now.canwrite)-1);
#ifdef VAR_RANGES
		logval("canwrite", ((int)now.canwrite));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 33: /* STATE 23 - wr2.pml:33 - [printf('Writer %d in critical\\n',_pid)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		Printf("Writer %d in critical\n", ((int)((P0 *)this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 24 - wr2.pml:34 - [food = (food+2)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.food;
		now.food = (now.food+2);
#ifdef VAR_RANGES
		logval("food", now.food);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 25 - wr2.pml:35 - [wpid = ((wpid+1)%2)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.wpid;
		now.wpid = ((now.wpid+1)%2);
#ifdef VAR_RANGES
		logval("wpid", now.wpid);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 26 - wr2.pml:37 - [canwrite = (canwrite+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.canwrite);
		now.canwrite = (((int)now.canwrite)+1);
#ifdef VAR_RANGES
		logval("canwrite", ((int)now.canwrite));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 28 - wr2.pml:39 - [((wmutex>0))] (32:0:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		if (!((((int)now.wmutex)>0)))
			continue;
		/* merge: wmutex = (wmutex-1)(0, 29, 32) */
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)now.wmutex);
		now.wmutex = (((int)now.wmutex)-1);
#ifdef VAR_RANGES
		logval("wmutex", ((int)now.wmutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 38: /* STATE 32 - wr2.pml:40 - [writers = (writers-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.writers);
		now.writers = (((int)now.writers)-1);
#ifdef VAR_RANGES
		logval("writers", ((int)now.writers));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 33 - wr2.pml:42 - [((writers==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((int)now.writers)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 34 - wr2.pml:42 - [canread = (canread+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((int)now.canread);
		now.canread = (((int)now.canread)+1);
#ifdef VAR_RANGES
		logval("canread", ((int)now.canread));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 40 - wr2.pml:45 - [wmutex = (wmutex+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.wmutex);
		now.wmutex = (((int)now.wmutex)+1);
#ifdef VAR_RANGES
		logval("wmutex", ((int)now.wmutex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 42 - wr2.pml:46 - [printf('Writer %d out critical\\n',_pid)] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		Printf("Writer %d out critical\n", ((int)((P0 *)this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 46 - wr2.pml:48 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

