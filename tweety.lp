
can_fly(A) :- bird(A), not penguin(A), not ostrich(A).

penguin(tweety).
ostrich(ollie).
parrot(polly).
robin(cock_robin).

bird(A) :- ostrich(A).
bird(A) :- parrot(A).
bird(A) :- penguin(A).
bird(A) :- robin(A).


:- can_fly(tweety).
:- can_fly(ollie).
:- not can_fly(polly).
:- not can_fly(cock_robin).
:- not bird(tweety).

#hide.

#show can_fly(A).
#show penguin(A).
#show ostrich(A).
#show bird(A).
