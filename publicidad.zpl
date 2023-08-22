set V := {1..4};

var x[V] integer;

param P[V] := <1> 35, <2> 29, <3> 22, <4> 27;

param M[V] := <1> 20, <2> 15, <3> 25, <4> 15;

param mm1[V] := <1> 50,<2> 31,<3> 20,<4> 35;

param mm2[V] := <1> 30,<2> 35,<3> 15,<4> 42;

param mm3[V] := <1> 60,<2> 25,<3> 20,<4> 25;

var w real;

maximize ganancia : w;

subto presupuesto : sum <i> in V : x[i] * P[i] <= 850;

subto maximo_medio : forall <i> in V : x[i] <= M[i];

subto maximin1 : w <= sum <i> in V : x[i] * mm1[i] ; 

subto maximin2 : w <= sum <i> in V : x[i] * mm2[i]; 

subto maximin3 : w <= sum <i> in V : x[i] * mm3[i]; 

subto cons1 : x[1] + x[2] - x[3] - x[4] <= 10;

subto cons2 : x[1] + x[2] - x[3] - x[4] >= -10;

subto cons3 : x[1] >= 1;

subto cons4 : x[3] >= (x[1] + x[2] + x[3] + x[4])*0.05;

subto positivos : forall <i> in V : x[i] >= 0;
