person(marina).
person(willem).
person(bob).
person(tina).
person(bert).
person(jane).
person(alyssa).
person(sara).
person(rupert).
person(harry).

table(1).
table(2).
table(3).

% allocate each person to exactly one table
1{seating(Person, TableNumber) : table(TableNumber)}1 :- person(Person).

% constrain the number of people per table
3{seating(Person, TableNumber) : person(Person)}5 :- table(TableNumber).

% disallowed pairs
disallowed(A,B) :- seating(A,T), seating(B, T).

:- disallowed(marina,willem).
:- disallowed(alyssa,willem).
:- disallowed(alyssa,marina).

%required
required(A,B) :- disallowed(A,B).
:- not required(sara, rupert).

#hide.
#show seating(A,B).
