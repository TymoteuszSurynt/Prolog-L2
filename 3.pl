arc(a,b).
arc(b,c).
arc(b,a).
arc(c,d).

trasa(X,Y,L):-
  arc(X,Y);
  (arc(X,W), \+ member(W,L), trasa(W,Y,[W|L])).
osiagalny(X,Y):-trasa(X,Y,[X]).
