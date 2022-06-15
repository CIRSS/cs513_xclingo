
%!trace_rule {"% is the parent of %",X,Y}
p(X,Y):- parent(X,Y).

parent(william, john).
parent(john, james).
parent(james, bill).
parent(sue, bill).
parent(james, carol).
parent(sue, carol).


male(john).
male(james).
male(bill).

female(sue).
female(carol).


%!trace {"% is the grandparent of % via %",X,Y,Z} grandparent(X,Y,Z).
grandparent(X,Y,Z) :- p(X, Z), p(Z, Y).


mother(X,Y)  :-     parent(X, Y), female(X).
brother(X,Y) :-     parent(P, X), parent(P, Y), male(X), X != Y.
sister(X,Y)  :-     parent(P, X), parent(P, Y), female(X), X != Y.

%!show_trace grandparent(X,Y,Z).
