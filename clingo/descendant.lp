
%!trace {"% is the child of %",Y,X} parent(X,Y).
parent(william, john).
parent(john, james).
parent(james, bill).
parent(sue, bill).
parent(james, carol).
parent(sue, carol).


%!trace {"% is the descendant of %",Y,X} descendant(Y,X).
descendant(Y,X):-parent(X,Y).
descendant(Y,Z):-descendant(Y,X), parent(Z,X).

%!show_trace descendant(X,Y).
