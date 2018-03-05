one(X,L):- select(X,L,L1), \+ (member(X,L1)).

two(X,L):-select(X,L,L1),select(X,L1,L2), \+ (member(X,L2)).

two1(X, [X|L]):-one(X,L).
two1(X, [Y|L]):- two1(X,L), \+ X=Y.
