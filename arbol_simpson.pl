%hechos

padre(abraham, homero).
padre(abraham, herbert).
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).

madre(mona, homero).
madre(jacqueline, marge).
madre(jacqueline, patty).
madre(jacqueline, selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

casado(homero, marge).
casado(marge, homero).

%REGLAS
hijo (X, Y) :- padre(Y, X);
	madre(Y, X).

hermano(X, Y) :- hijo(X, Z), hijo(Y, Z), X\=Y.

abuelo(X,Y) :- padre(X,Z), padre(Z,Y);
	        padre(X,Z), madre(Z,Y);
	        madre(X,Z), madre(Z, Y);
	        madre(X,Z), padre(Z,Y).
	        
tio(X, Y) :- hermano(X, Z), padre(Z, Y);
    		 hermano(X, Z), madre(Z, Y).

primo(X, Y) :- tio(Z, X), hijo(Y, Z).

cuñado(X, Y) :- casado(Y, Z), hermano(X, Z).
	        

