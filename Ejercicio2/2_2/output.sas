begin_version
3
end_version
begin_metric
1
end_metric
8
begin_variable
var0
-1
3
Atom at(dron1, deposito)
Atom at(dron1, loc1)
Atom at(dron1, loc2)
end_variable
begin_variable
var1
-1
3
Atom at(crate1, deposito)
Atom en-transportador(crate1, carrier1)
<none of those>
end_variable
begin_variable
var2
-1
3
Atom at(crate2, deposito)
Atom en-transportador(crate2, carrier1)
<none of those>
end_variable
begin_variable
var3
-1
5
Atom cajas-en(carrier1, n0)
Atom cajas-en(carrier1, n1)
Atom cajas-en(carrier1, n2)
Atom cajas-en(carrier1, n3)
Atom cajas-en(carrier1, n4)
end_variable
begin_variable
var4
-1
5
Atom brazo-libre(dron1)
Atom en-dron(crate1, dron1)
Atom en-dron(crate2, dron1)
Atom llevado-por(dron1, carrier1)
<none of those>
end_variable
begin_variable
var5
-1
4
Atom at(carrier1, deposito)
Atom at(carrier1, loc1)
Atom at(carrier1, loc2)
<none of those>
end_variable
begin_variable
var6
-1
2
Atom person-has(person2, comida)
Atom person-needs(person2, comida)
end_variable
begin_variable
var7
-1
2
Atom person-has(person2, medicina)
Atom person-needs(person2, medicina)
end_variable
4
begin_mutex_group
4
5 0
5 1
5 2
4 3
end_mutex_group
begin_mutex_group
4
5 0
5 1
5 2
4 3
end_mutex_group
begin_mutex_group
3
1 0
1 1
4 1
end_mutex_group
begin_mutex_group
3
2 0
2 1
4 2
end_mutex_group
begin_state
0
0
0
0
0
0
1
1
end_state
begin_goal
4
0 0
5 0
6 0
7 0
end_goal
64
begin_operator
cargar_dron dron1 crate1 deposito
1
0 0
2
0 1 0 2
0 4 0 1
0
end_operator
begin_operator
cargar_dron dron1 crate2 deposito
1
0 0
2
0 2 0 2
0 4 0 2
0
end_operator
begin_operator
coger-transportador dron1 carrier1 deposito
1
0 0
2
0 5 0 3
0 4 0 3
0
end_operator
begin_operator
coger-transportador dron1 carrier1 loc1
1
0 1
2
0 5 1 3
0 4 0 3
0
end_operator
begin_operator
coger-transportador dron1 carrier1 loc2
1
0 2
2
0 5 2 3
0 4 0 3
0
end_operator
begin_operator
dejar-transportador dron1 carrier1 deposito
1
0 0
2
0 5 -1 0
0 4 3 0
0
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc1
1
0 1
2
0 5 -1 1
0 4 3 0
0
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc2
1
0 2
2
0 5 -1 2
0 4 3 0
0
end_operator
begin_operator
entregar person2 crate1 comida loc2 dron1
1
0 2
2
0 4 1 0
0 6 1 0
0
end_operator
begin_operator
entregar person2 crate2 medicina loc2 dron1
1
0 2
2
0 4 2 0
0 7 1 0
0
end_operator
begin_operator
mover-dron dron1 deposito loc1
0
1
0 0 0 1
194
end_operator
begin_operator
mover-dron dron1 deposito loc2
0
1
0 0 0 2
61
end_operator
begin_operator
mover-dron dron1 loc1 deposito
0
1
0 0 1 0
194
end_operator
begin_operator
mover-dron dron1 loc1 loc2
0
1
0 0 1 2
134
end_operator
begin_operator
mover-dron dron1 loc2 deposito
0
1
0 0 2 0
61
end_operator
begin_operator
mover-dron dron1 loc2 loc1
0
1
0 0 2 1
134
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n0 n1
2
5 0
0 0
3
0 1 -1 1
0 4 1 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n1 n2
2
5 0
0 0
3
0 1 -1 1
0 4 1 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n2 n3
2
5 0
0 0
3
0 1 -1 1
0 4 1 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n3 n4
2
5 0
0 0
3
0 1 -1 1
0 4 1 4
0 3 3 4
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n0 n1
2
5 1
0 1
3
0 1 -1 1
0 4 1 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n1 n2
2
5 1
0 1
3
0 1 -1 1
0 4 1 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n2 n3
2
5 1
0 1
3
0 1 -1 1
0 4 1 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n3 n4
2
5 1
0 1
3
0 1 -1 1
0 4 1 4
0 3 3 4
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n0 n1
2
5 2
0 2
3
0 1 -1 1
0 4 1 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n1 n2
2
5 2
0 2
3
0 1 -1 1
0 4 1 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n2 n3
2
5 2
0 2
3
0 1 -1 1
0 4 1 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n3 n4
2
5 2
0 2
3
0 1 -1 1
0 4 1 4
0 3 3 4
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n0 n1
2
5 0
0 0
3
0 2 -1 1
0 4 2 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n1 n2
2
5 0
0 0
3
0 2 -1 1
0 4 2 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n2 n3
2
5 0
0 0
3
0 2 -1 1
0 4 2 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n3 n4
2
5 0
0 0
3
0 2 -1 1
0 4 2 4
0 3 3 4
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n0 n1
2
5 1
0 1
3
0 2 -1 1
0 4 2 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n1 n2
2
5 1
0 1
3
0 2 -1 1
0 4 2 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n2 n3
2
5 1
0 1
3
0 2 -1 1
0 4 2 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n3 n4
2
5 1
0 1
3
0 2 -1 1
0 4 2 4
0 3 3 4
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n0 n1
2
5 2
0 2
3
0 2 -1 1
0 4 2 4
0 3 0 1
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n1 n2
2
5 2
0 2
3
0 2 -1 1
0 4 2 4
0 3 1 2
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n2 n3
2
5 2
0 2
3
0 2 -1 1
0 4 2 4
0 3 2 3
0
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n3 n4
2
5 2
0 2
3
0 2 -1 1
0 4 2 4
0 3 3 4
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n0 n1
2
5 0
0 0
3
0 1 1 2
0 4 0 1
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n1 n2
2
5 0
0 0
3
0 1 1 2
0 4 0 1
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n2 n3
2
5 0
0 0
3
0 1 1 2
0 4 0 1
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n3 n4
2
5 0
0 0
3
0 1 1 2
0 4 0 1
0 3 4 3
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n0 n1
2
5 1
0 1
3
0 1 1 2
0 4 0 1
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n1 n2
2
5 1
0 1
3
0 1 1 2
0 4 0 1
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n2 n3
2
5 1
0 1
3
0 1 1 2
0 4 0 1
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n3 n4
2
5 1
0 1
3
0 1 1 2
0 4 0 1
0 3 4 3
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n0 n1
2
5 2
0 2
3
0 1 1 2
0 4 0 1
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n1 n2
2
5 2
0 2
3
0 1 1 2
0 4 0 1
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n2 n3
2
5 2
0 2
3
0 1 1 2
0 4 0 1
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n3 n4
2
5 2
0 2
3
0 1 1 2
0 4 0 1
0 3 4 3
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n0 n1
2
5 0
0 0
3
0 2 1 2
0 4 0 2
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n1 n2
2
5 0
0 0
3
0 2 1 2
0 4 0 2
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n2 n3
2
5 0
0 0
3
0 2 1 2
0 4 0 2
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n3 n4
2
5 0
0 0
3
0 2 1 2
0 4 0 2
0 3 4 3
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n0 n1
2
5 1
0 1
3
0 2 1 2
0 4 0 2
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n1 n2
2
5 1
0 1
3
0 2 1 2
0 4 0 2
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n2 n3
2
5 1
0 1
3
0 2 1 2
0 4 0 2
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n3 n4
2
5 1
0 1
3
0 2 1 2
0 4 0 2
0 3 4 3
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n0 n1
2
5 2
0 2
3
0 2 1 2
0 4 0 2
0 3 1 0
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n1 n2
2
5 2
0 2
3
0 2 1 2
0 4 0 2
0 3 2 1
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n2 n3
2
5 2
0 2
3
0 2 1 2
0 4 0 2
0 3 3 2
0
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n3 n4
2
5 2
0 2
3
0 2 1 2
0 4 0 2
0 3 4 3
0
end_operator
0
