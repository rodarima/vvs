	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		;
		;
		
	case 5: /* STATE 13 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC R */
;
		;
		;
		;
		
	case 8: /* STATE 4 */
		;
		now.canread = trpt->bup.oval;
		;
		goto R999;

	case 9: /* STATE 8 */
		;
		now.rmutex = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 11 */
		;
		now.readers = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: /* STATE 14 */
		;
		now.canwrite = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 21 */
		;
		now.rmutex = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 23 */
		;
		now.canread = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: /* STATE 26 */
		;
		now.food = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 27 */
		;
		now.rpid = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 29 */
		;
		now.rmutex = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 32 */
		;
		now.readers = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 34 */
		;
		now.canwrite = trpt->bup.oval;
		;
		goto R999;

	case 22: /* STATE 40 */
		;
		now.rmutex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: /* STATE 46 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC W */
;
		;
		;
		;
		
	case 27: /* STATE 4 */
		;
		now.wmutex = trpt->bup.oval;
		;
		goto R999;

	case 28: /* STATE 7 */
		;
		now.writers = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: /* STATE 10 */
		;
		now.canread = trpt->bup.oval;
		;
		goto R999;

	case 31: /* STATE 17 */
		;
		now.wmutex = trpt->bup.oval;
		;
		goto R999;

	case 32: /* STATE 20 */
		;
		now.canwrite = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: /* STATE 24 */
		;
		now.food = trpt->bup.oval;
		;
		goto R999;

	case 35: /* STATE 25 */
		;
		now.wpid = trpt->bup.oval;
		;
		goto R999;

	case 36: /* STATE 26 */
		;
		now.canwrite = trpt->bup.oval;
		;
		goto R999;

	case 37: /* STATE 29 */
		;
		now.wmutex = trpt->bup.oval;
		;
		goto R999;

	case 38: /* STATE 32 */
		;
		now.writers = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: /* STATE 34 */
		;
		now.canread = trpt->bup.oval;
		;
		goto R999;

	case 41: /* STATE 40 */
		;
		now.wmutex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 43: /* STATE 46 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

