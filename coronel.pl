estadounidense(coronel_west).
nacion_hostil(corea_del_Sur).


%regla para ventas de armas

vender_armas(X, _) :- estadounidense(X), nacion_hostil(Y),
	vendio_misiles(X,Y).

% Los misiles de corea del sur fueron vendidos por el coronel
tiene(corea_del_Sur, misil1).
tiene(corea_del_Sur, misil2).
tiene(corea_del_Sur, misil3).
vendio(coronel_west, misil1).
vendio(coronel_west, misil2).
vendio(coronel_west, misil3).

%regla para comprobar la venta
vendio_misiles(X,Y):- tiene(Y,M), vendio(X,M).

%regla para identificar criminal
criminal(X) :- vender_armas(X, _).


