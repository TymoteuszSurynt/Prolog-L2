middle(L,X):-
  [X]=L;
  (append(L1,[_],L),L1=[_|L2],middle(L2,X)).
