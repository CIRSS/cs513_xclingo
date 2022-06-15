
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

%!trace_rule {"% is female",X}
fe(X):- female(X).
female(sue).
female(carol).

grandparent(X,Y,Z) :- p(X, Z), p(Z, Y).


father(X,Y)  :-     parent(X, Y), male(X).
mother(X,Y)  :-     parent(X, Y), female(X).
brother(X,Y) :-     parent(P, X), parent(P, Y), male(X), X != Y.

%!trace {"% is the sister of %",X,Y} sister(X,Y).
sister(X,Y)  :-     p(P, X), p(P, Y), fe(X), X != Y.

%!show_trace sister(X,Y).
