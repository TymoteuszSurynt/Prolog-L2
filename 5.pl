lista(N, X) :-
		I is N+1, temp(1, I, [], [], X).

temp(N, N, [], [], []).

temp(I, N, A, B, [H|T]) :-
		select(H, A, As), temp(I, N, B, As, T).

temp(I, N, A, B, [H|T]) :-
		I < N, H = I, Y is I+1, temp(Y, N, [I|B], A, T).
