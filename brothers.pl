brothers(X, Y):-
    male(X),
    male(Y),
    parent(Z, X),
    parent(Z, Y),
    X<>Y.

male("Bobby").
male("Robby").
male("Rob").
male("Bob").
female("Roberta").
parent("Bob", "Bobby").
parent("Bob", "Robby").
parent("Bob", "Roberta").





