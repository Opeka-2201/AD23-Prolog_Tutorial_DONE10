atoms_to_preds([], []).
atoms_to_preds([Atom|Atoms], [Pred|Preds]) :-
    atom_concat(Atom, '_', PredName),
    atom_concat(PredName, '1', PredName1),
    atom_concat(PredName, '2', PredName2),
    atom_to_term(PredName1, Pred1, []),
    atom_to_term(PredName2, Pred2, []),
    Pred = (Pred1, Pred2),
    atoms_to_preds(Atoms, Preds).