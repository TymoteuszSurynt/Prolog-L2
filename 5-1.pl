list(N,X):-
  numlist(1,N,L),
  permutation(L,L1),
  permutation(L,L2),
  createlist(L1,L2,X),
  ok(X,1).
lista(N,X):-
  A is N*2,
  length(X,A)
  .

createlist([A|As],[B|Bs],[A,B|Rs]):-
    createlist(As,Bs,Rs).
createlist([],Bs,Bs):-!.
createlist(As,[],As).

ok([X|Xs],I):-
  X=<I,
  maks(X+1,I,W),
  ok(Xs,W).
ok([],_).
maks(X,Y,Z):-
  X>Y,Z is X;
  Y>=X, Z is Y.
