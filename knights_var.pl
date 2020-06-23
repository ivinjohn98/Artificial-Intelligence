legal(X, N):- <(X, N*N+ 1), >(X, 0).
move(X,Y,N):- (Y is(X + N + 2)), not(0 is (X mod N)), not((N - 1) =:= (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X + N - 2)), not(1 is (X mod N)), not(2 is (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X - N + 2)), not(0 is (X mod N)), not((N - 1) =:= (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X - N - 2)), not(1 is (X mod N)), not(2 is (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X + 2*N + 1)), not(0 is (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X + 2*N - 1)), not(1 is(X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X - 2*N + 1)), not(0 is (X mod N)), legal(Y,N).
move(X,Y,N):- (Y is (X - 2*N - 1)),  not(1 is(X mod N)), legal(Y,N).

path(X,Y,N):- path(X,Y,N,[X]).
path(X,X,N,L).
path(X,Y,N,L) :- move(X,Y,N), path(Y,Z,N,[Y|L]), not(member(Y,L)).
