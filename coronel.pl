estadounidense(coronel_west).
nacion_hostil(corea_del_Sur).


%regla para ventas de armas

vender_armas(X, _) :- estadounidense(X), nacion_hostil(Y),
	vendio_misiles(X,Y).

