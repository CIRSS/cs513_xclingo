
%!trace_rule {"% is the parent of %",X,Y}
p(X,Y):- parent(X,Y).

parent(william, john).
parent(john, james).
parent(james, bill).
parent(sue, bill).
parent(james, carol).
parent(sue, carol).


%!trace {"% is the descendant of %",Y,Z} descendant(Y,Z).
descendant(Y,X):-p(X,Y).
descendant(Y,Z):-descendant(Y,X), p(Z,X).

%!show_trace descendant(X,Y).
