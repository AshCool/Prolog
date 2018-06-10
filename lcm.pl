lcm(M, N, R):-
    gcd(M, N, R1),
    R is (M*N) div R1.

gcd(M, N, N):-
    A is M mod N,
    A = 0, !.


gcd(M, N, R):-
    Rem is M mod N,
    gcd(N, Rem, R).

