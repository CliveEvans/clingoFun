#const n=3.
row(1..n).

col(1..n).

{ queen(I,J) : row(I) : col(J) }.

:- not { queen(I,J) }1.

:- queen(I,J), queen(I,JJ), J != JJ.

:- queen(I,J), queen(II,J), I != II.
