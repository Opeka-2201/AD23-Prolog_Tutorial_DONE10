parent(john, mary).
parent(john, peter).
parent(mary, ann).
parent(mary, bob).
parent(peter, jim).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).