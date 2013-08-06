% use of variables to create a predicate
% create a family tree where we can get all of the descendents of a person

% father(F,C) : F is the father of C
% mother(F,C) : F is the mother of C

father(ian, clive).
mother(shiela, clive).
father(ian, debbie).
mother(shiela, debbie).

father(bill, sean).
mother(gill, sean).
father(bill, sharon).
mother(gill, sharon).
father(bill, sarah).
mother(gill, sarah).
father(bill, steve).
mother(gill, steve).

father(tom, shiela).
mother(flo, shiela).
father(tom, gill).
mother(flo, gill).
father(tom, linda).
mother(flo, linda).
father(tom, andrew).
mother(flo, andrew).
father(tom, ianh).
mother(flo, ianh).
father(tom, fiona).
mother(flo, fiona).

% reasoning
% descendant(D, A) A is the anscestor of descendant D
descendant(D, A) :- father(A, D).
descendant(D, A) :- mother(A, D).
descendant(D, A) :- descendant(D, Z), father(A, Z).
descendant(D, A) :- descendant(D, Z), mother(A, Z).

sibling(A, B) :- father(Z, A), father(Z, B), A != B.
sibling(A, B) :- mother(Z, A), mother(Z, B), A != B.

#hide.
%#show descendant(A,B).
#show sibling(A,B).
