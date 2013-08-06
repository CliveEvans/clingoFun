% developers

dev(andrew).
dev(bruce).
dev(clive).
dev(matteo).

dev(benji;greg;imran;jahed;tom).

dev(alex;jason;tim;vikki).

%teams
team(chutney,arber;benji;greg;imran;jahed;tom).
team(marmelade,alex;arber;jason;tim;vikki).
team(tabasco,andrew;bruce;clive;lewis;matteo;mike).

% each dev can only be in at most one pair
0 {pair(A,B): dev(B): A!= B}1 :- dev(A).
:- pair(A,B), pair(B,A).
:- pair(A,B), pair(A,C), B!=C.
:- pair(A,B), pair(C,A), B!=C.
:- pair(B,A), pair(C,A), B!=C.

% someone from chutney must be lone ranger
0{ loneranger(A) }1 :- team(chutney, A).
:- not 1{loneranger(A) }1.

% you cannot pairing, gold carding and being the lone ranger are mutually exclusive activities
:- goldcard(A), pair(A,B).
:- goldcard(A), pair(B,A).
:- loneranger(A), pair(A,B).
:- loneranger(A), pair(B,A).
:- goldcard(A), loneranger(A).

% team pairs must the same team
pair(T,A,B) :- pair(A,B), team(T, A), team(T, B).

% borat pairs must be on different teams
borat(A,B) :- pair(A,B), team(TA, A), team(TB, B), TA != TB.

% you cannot pair and borat
:- borat(A,_), pair(_,A,_).

% how many borat pairs today?
#const bc = 0.
:- not bc{borat(A,B) }bc.

% if you aren't pairing, you're gold carding
0{ goldcard(A) }13 :- dev(A).

#hide.
#show borat(A, B).
#show pair(T,A,B).
#show goldcard/1.
#show loneranger/1.
