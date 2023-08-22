var I real;
var E real;

maximize ganancia : 5*I + 4*E;

subto menor24 : 6*I + 4*E <= 24;
subto menor6 : I + 2*E <= 6;
subto imenor2 : I <= 2;
subto emenor : E <= I + 1;
subto ipositivo : I >= 0;
subto epositivo : E >= 0

