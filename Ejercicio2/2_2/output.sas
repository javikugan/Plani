begin_version
3
end_version
begin_metric
1
end_metric
18
begin_variable
var0
-1
8
Atom at(dron1, deposito)
Atom at(dron1, loc1)
Atom at(dron1, loc2)
Atom at(dron1, loc3)
Atom at(dron1, loc4)
Atom at(dron1, loc5)
Atom at(dron1, loc6)
Atom at(dron1, loc7)
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
3
Atom at(crate3, deposito)
Atom en-transportador(crate3, carrier1)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom at(crate4, deposito)
Atom en-transportador(crate4, carrier1)
<none of those>
end_variable
begin_variable
var5
-1
3
Atom at(crate5, deposito)
Atom en-transportador(crate5, carrier1)
<none of those>
end_variable
begin_variable
var6
-1
3
Atom at(crate6, deposito)
Atom en-transportador(crate6, carrier1)
<none of those>
end_variable
begin_variable
var7
-1
3
Atom at(crate7, deposito)
Atom en-transportador(crate7, carrier1)
<none of those>
end_variable
begin_variable
var8
-1
5
Atom cajas-en(carrier1, n0)
Atom cajas-en(carrier1, n1)
Atom cajas-en(carrier1, n2)
Atom cajas-en(carrier1, n3)
Atom cajas-en(carrier1, n4)
end_variable
begin_variable
var9
-1
10
Atom brazo-libre(dron1)
Atom en-dron(crate1, dron1)
Atom en-dron(crate2, dron1)
Atom en-dron(crate3, dron1)
Atom en-dron(crate4, dron1)
Atom en-dron(crate5, dron1)
Atom en-dron(crate6, dron1)
Atom en-dron(crate7, dron1)
Atom llevado-por(dron1, carrier1)
<none of those>
end_variable
begin_variable
var10
-1
9
Atom at(carrier1, deposito)
Atom at(carrier1, loc1)
Atom at(carrier1, loc2)
Atom at(carrier1, loc3)
Atom at(carrier1, loc4)
Atom at(carrier1, loc5)
Atom at(carrier1, loc6)
Atom at(carrier1, loc7)
<none of those>
end_variable
begin_variable
var11
-1
2
Atom person-has(person1, comida)
Atom person-needs(person1, comida)
end_variable
begin_variable
var12
-1
2
Atom person-has(person1, medicina)
Atom person-needs(person1, medicina)
end_variable
begin_variable
var13
-1
2
Atom person-has(person2, comida)
Atom person-needs(person2, comida)
end_variable
begin_variable
var14
-1
2
Atom person-has(person3, comida)
Atom person-needs(person3, comida)
end_variable
begin_variable
var15
-1
2
Atom person-has(person5, comida)
Atom person-needs(person5, comida)
end_variable
begin_variable
var16
-1
2
Atom person-has(person7, comida)
Atom person-needs(person7, comida)
end_variable
begin_variable
var17
-1
2
Atom person-has(person7, medicina)
Atom person-needs(person7, medicina)
end_variable
9
begin_mutex_group
9
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
9 8
end_mutex_group
begin_mutex_group
9
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
9 8
end_mutex_group
begin_mutex_group
3
1 0
1 1
9 1
end_mutex_group
begin_mutex_group
3
2 0
2 1
9 2
end_mutex_group
begin_mutex_group
3
3 0
3 1
9 3
end_mutex_group
begin_mutex_group
3
4 0
4 1
9 4
end_mutex_group
begin_mutex_group
3
5 0
5 1
9 5
end_mutex_group
begin_mutex_group
3
6 0
6 1
9 6
end_mutex_group
begin_mutex_group
3
7 0
7 1
9 7
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
0
0
0
1
1
1
1
1
1
1
end_state
begin_goal
9
0 0
10 0
11 0
12 0
13 0
14 0
15 0
16 0
17 0
end_goal
556
begin_operator
cargar_dron dron1 crate1 deposito
1
0 0
2
0 1 0 2
0 9 0 1
1
end_operator
begin_operator
cargar_dron dron1 crate2 deposito
1
0 0
2
0 2 0 2
0 9 0 2
1
end_operator
begin_operator
cargar_dron dron1 crate3 deposito
1
0 0
2
0 3 0 2
0 9 0 3
1
end_operator
begin_operator
cargar_dron dron1 crate4 deposito
1
0 0
2
0 4 0 2
0 9 0 4
1
end_operator
begin_operator
cargar_dron dron1 crate5 deposito
1
0 0
2
0 5 0 2
0 9 0 5
1
end_operator
begin_operator
cargar_dron dron1 crate6 deposito
1
0 0
2
0 6 0 2
0 9 0 6
1
end_operator
begin_operator
cargar_dron dron1 crate7 deposito
1
0 0
2
0 7 0 2
0 9 0 7
1
end_operator
begin_operator
coger-transportador dron1 carrier1 deposito
1
0 0
2
0 10 0 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc1
1
0 1
2
0 10 1 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc2
1
0 2
2
0 10 2 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc3
1
0 3
2
0 10 3 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc4
1
0 4
2
0 10 4 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc5
1
0 5
2
0 10 5 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc6
1
0 6
2
0 10 6 8
0 9 0 8
1
end_operator
begin_operator
coger-transportador dron1 carrier1 loc7
1
0 7
2
0 10 7 8
0 9 0 8
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 deposito
1
0 0
2
0 10 -1 0
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc1
1
0 1
2
0 10 -1 1
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc2
1
0 2
2
0 10 -1 2
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc3
1
0 3
2
0 10 -1 3
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc4
1
0 4
2
0 10 -1 4
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc5
1
0 5
2
0 10 -1 5
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc6
1
0 6
2
0 10 -1 6
0 9 8 0
1
end_operator
begin_operator
dejar-transportador dron1 carrier1 loc7
1
0 7
2
0 10 -1 7
0 9 8 0
1
end_operator
begin_operator
entregar person1 crate1 comida loc5 dron1
1
0 5
2
0 9 1 0
0 11 1 0
1
end_operator
begin_operator
entregar person1 crate2 comida loc5 dron1
1
0 5
2
0 9 2 0
0 11 1 0
1
end_operator
begin_operator
entregar person1 crate3 comida loc5 dron1
1
0 5
2
0 9 3 0
0 11 1 0
1
end_operator
begin_operator
entregar person1 crate4 comida loc5 dron1
1
0 5
2
0 9 4 0
0 11 1 0
1
end_operator
begin_operator
entregar person1 crate5 comida loc5 dron1
1
0 5
2
0 9 5 0
0 11 1 0
1
end_operator
begin_operator
entregar person1 crate6 medicina loc5 dron1
1
0 5
2
0 9 6 0
0 12 1 0
1
end_operator
begin_operator
entregar person1 crate7 medicina loc5 dron1
1
0 5
2
0 9 7 0
0 12 1 0
1
end_operator
begin_operator
entregar person2 crate1 comida loc7 dron1
1
0 7
2
0 9 1 0
0 13 1 0
1
end_operator
begin_operator
entregar person2 crate2 comida loc7 dron1
1
0 7
2
0 9 2 0
0 13 1 0
1
end_operator
begin_operator
entregar person2 crate3 comida loc7 dron1
1
0 7
2
0 9 3 0
0 13 1 0
1
end_operator
begin_operator
entregar person2 crate4 comida loc7 dron1
1
0 7
2
0 9 4 0
0 13 1 0
1
end_operator
begin_operator
entregar person2 crate5 comida loc7 dron1
1
0 7
2
0 9 5 0
0 13 1 0
1
end_operator
begin_operator
entregar person3 crate1 comida loc6 dron1
1
0 6
2
0 9 1 0
0 14 1 0
1
end_operator
begin_operator
entregar person3 crate2 comida loc6 dron1
1
0 6
2
0 9 2 0
0 14 1 0
1
end_operator
begin_operator
entregar person3 crate3 comida loc6 dron1
1
0 6
2
0 9 3 0
0 14 1 0
1
end_operator
begin_operator
entregar person3 crate4 comida loc6 dron1
1
0 6
2
0 9 4 0
0 14 1 0
1
end_operator
begin_operator
entregar person3 crate5 comida loc6 dron1
1
0 6
2
0 9 5 0
0 14 1 0
1
end_operator
begin_operator
entregar person5 crate1 comida loc1 dron1
1
0 1
2
0 9 1 0
0 15 1 0
1
end_operator
begin_operator
entregar person5 crate2 comida loc1 dron1
1
0 1
2
0 9 2 0
0 15 1 0
1
end_operator
begin_operator
entregar person5 crate3 comida loc1 dron1
1
0 1
2
0 9 3 0
0 15 1 0
1
end_operator
begin_operator
entregar person5 crate4 comida loc1 dron1
1
0 1
2
0 9 4 0
0 15 1 0
1
end_operator
begin_operator
entregar person5 crate5 comida loc1 dron1
1
0 1
2
0 9 5 0
0 15 1 0
1
end_operator
begin_operator
entregar person7 crate1 comida loc5 dron1
1
0 5
2
0 9 1 0
0 16 1 0
1
end_operator
begin_operator
entregar person7 crate2 comida loc5 dron1
1
0 5
2
0 9 2 0
0 16 1 0
1
end_operator
begin_operator
entregar person7 crate3 comida loc5 dron1
1
0 5
2
0 9 3 0
0 16 1 0
1
end_operator
begin_operator
entregar person7 crate4 comida loc5 dron1
1
0 5
2
0 9 4 0
0 16 1 0
1
end_operator
begin_operator
entregar person7 crate5 comida loc5 dron1
1
0 5
2
0 9 5 0
0 16 1 0
1
end_operator
begin_operator
entregar person7 crate6 medicina loc5 dron1
1
0 5
2
0 9 6 0
0 17 1 0
1
end_operator
begin_operator
entregar person7 crate7 medicina loc5 dron1
1
0 5
2
0 9 7 0
0 17 1 0
1
end_operator
begin_operator
mover-dron dron1 deposito loc1
0
1
0 0 0 1
111
end_operator
begin_operator
mover-dron dron1 deposito loc2
0
1
0 0 0 2
219
end_operator
begin_operator
mover-dron dron1 deposito loc3
0
1
0 0 0 3
175
end_operator
begin_operator
mover-dron dron1 deposito loc4
0
1
0 0 0 4
93
end_operator
begin_operator
mover-dron dron1 deposito loc5
0
1
0 0 0 5
84
end_operator
begin_operator
mover-dron dron1 deposito loc6
0
1
0 0 0 6
191
end_operator
begin_operator
mover-dron dron1 deposito loc7
0
1
0 0 0 7
178
end_operator
begin_operator
mover-dron dron1 loc1 deposito
0
1
0 0 1 0
111
end_operator
begin_operator
mover-dron dron1 loc1 loc2
0
1
0 0 1 2
129
end_operator
begin_operator
mover-dron dron1 loc1 loc3
0
1
0 0 1 3
83
end_operator
begin_operator
mover-dron dron1 loc1 loc4
0
1
0 0 1 4
54
end_operator
begin_operator
mover-dron dron1 loc1 loc5
0
1
0 0 1 5
54
end_operator
begin_operator
mover-dron dron1 loc1 loc6
0
1
0 0 1 6
140
end_operator
begin_operator
mover-dron dron1 loc1 loc7
0
1
0 0 1 7
187
end_operator
begin_operator
mover-dron dron1 loc2 deposito
0
1
0 0 2 0
219
end_operator
begin_operator
mover-dron dron1 loc2 loc1
0
1
0 0 2 1
129
end_operator
begin_operator
mover-dron dron1 loc2 loc3
0
1
0 0 2 3
47
end_operator
begin_operator
mover-dron dron1 loc2 loc4
0
1
0 0 2 4
127
end_operator
begin_operator
mover-dron dron1 loc2 loc5
0
1
0 0 2 5
136
end_operator
begin_operator
mover-dron dron1 loc2 loc6
0
1
0 0 2 6
78
end_operator
begin_operator
mover-dron dron1 loc2 loc7
0
1
0 0 2 7
175
end_operator
begin_operator
mover-dron dron1 loc3 deposito
0
1
0 0 3 0
175
end_operator
begin_operator
mover-dron dron1 loc3 loc1
0
1
0 0 3 1
83
end_operator
begin_operator
mover-dron dron1 loc3 loc2
0
1
0 0 3 2
47
end_operator
begin_operator
mover-dron dron1 loc3 loc4
0
1
0 0 3 4
84
end_operator
begin_operator
mover-dron dron1 loc3 loc5
0
1
0 0 3 5
93
end_operator
begin_operator
mover-dron dron1 loc3 loc6
0
1
0 0 3 6
81
end_operator
begin_operator
mover-dron dron1 loc3 loc7
0
1
0 0 3 7
164
end_operator
begin_operator
mover-dron dron1 loc4 deposito
0
1
0 0 4 0
93
end_operator
begin_operator
mover-dron dron1 loc4 loc1
0
1
0 0 4 1
54
end_operator
begin_operator
mover-dron dron1 loc4 loc2
0
1
0 0 4 2
127
end_operator
begin_operator
mover-dron dron1 loc4 loc3
0
1
0 0 4 3
84
end_operator
begin_operator
mover-dron dron1 loc4 loc5
0
1
0 0 4 5
10
end_operator
begin_operator
mover-dron dron1 loc4 loc6
0
1
0 0 4 6
107
end_operator
begin_operator
mover-dron dron1 loc4 loc7
0
1
0 0 4 7
135
end_operator
begin_operator
mover-dron dron1 loc5 deposito
0
1
0 0 5 0
84
end_operator
begin_operator
mover-dron dron1 loc5 loc1
0
1
0 0 5 1
54
end_operator
begin_operator
mover-dron dron1 loc5 loc2
0
1
0 0 5 2
136
end_operator
begin_operator
mover-dron dron1 loc5 loc3
0
1
0 0 5 3
93
end_operator
begin_operator
mover-dron dron1 loc5 loc4
0
1
0 0 5 4
10
end_operator
begin_operator
mover-dron dron1 loc5 loc6
0
1
0 0 5 6
116
end_operator
begin_operator
mover-dron dron1 loc5 loc7
0
1
0 0 5 7
139
end_operator
begin_operator
mover-dron dron1 loc6 deposito
0
1
0 0 6 0
191
end_operator
begin_operator
mover-dron dron1 loc6 loc1
0
1
0 0 6 1
140
end_operator
begin_operator
mover-dron dron1 loc6 loc2
0
1
0 0 6 2
78
end_operator
begin_operator
mover-dron dron1 loc6 loc3
0
1
0 0 6 3
81
end_operator
begin_operator
mover-dron dron1 loc6 loc4
0
1
0 0 6 4
107
end_operator
begin_operator
mover-dron dron1 loc6 loc5
0
1
0 0 6 5
116
end_operator
begin_operator
mover-dron dron1 loc6 loc7
0
1
0 0 6 7
99
end_operator
begin_operator
mover-dron dron1 loc7 deposito
0
1
0 0 7 0
178
end_operator
begin_operator
mover-dron dron1 loc7 loc1
0
1
0 0 7 1
187
end_operator
begin_operator
mover-dron dron1 loc7 loc2
0
1
0 0 7 2
175
end_operator
begin_operator
mover-dron dron1 loc7 loc3
0
1
0 0 7 3
164
end_operator
begin_operator
mover-dron dron1 loc7 loc4
0
1
0 0 7 4
135
end_operator
begin_operator
mover-dron dron1 loc7 loc5
0
1
0 0 7 5
139
end_operator
begin_operator
mover-dron dron1 loc7 loc6
0
1
0 0 7 6
99
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n0 n1
2
10 0
0 0
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n1 n2
2
10 0
0 0
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n2 n3
2
10 0
0 0
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 deposito n3 n4
2
10 0
0 0
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n0 n1
2
10 1
0 1
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n1 n2
2
10 1
0 1
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n2 n3
2
10 1
0 1
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc1 n3 n4
2
10 1
0 1
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n0 n1
2
10 2
0 2
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n1 n2
2
10 2
0 2
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n2 n3
2
10 2
0 2
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc2 n3 n4
2
10 2
0 2
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc3 n0 n1
2
10 3
0 3
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc3 n1 n2
2
10 3
0 3
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc3 n2 n3
2
10 3
0 3
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc3 n3 n4
2
10 3
0 3
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc4 n0 n1
2
10 4
0 4
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc4 n1 n2
2
10 4
0 4
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc4 n2 n3
2
10 4
0 4
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc4 n3 n4
2
10 4
0 4
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc5 n0 n1
2
10 5
0 5
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc5 n1 n2
2
10 5
0 5
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc5 n2 n3
2
10 5
0 5
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc5 n3 n4
2
10 5
0 5
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc6 n0 n1
2
10 6
0 6
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc6 n1 n2
2
10 6
0 6
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc6 n2 n3
2
10 6
0 6
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc6 n3 n4
2
10 6
0 6
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc7 n0 n1
2
10 7
0 7
3
0 1 -1 1
0 9 1 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc7 n1 n2
2
10 7
0 7
3
0 1 -1 1
0 9 1 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc7 n2 n3
2
10 7
0 7
3
0 1 -1 1
0 9 1 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate1 loc7 n3 n4
2
10 7
0 7
3
0 1 -1 1
0 9 1 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n0 n1
2
10 0
0 0
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n1 n2
2
10 0
0 0
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n2 n3
2
10 0
0 0
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 deposito n3 n4
2
10 0
0 0
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n0 n1
2
10 1
0 1
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n1 n2
2
10 1
0 1
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n2 n3
2
10 1
0 1
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc1 n3 n4
2
10 1
0 1
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n0 n1
2
10 2
0 2
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n1 n2
2
10 2
0 2
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n2 n3
2
10 2
0 2
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc2 n3 n4
2
10 2
0 2
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc3 n0 n1
2
10 3
0 3
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc3 n1 n2
2
10 3
0 3
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc3 n2 n3
2
10 3
0 3
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc3 n3 n4
2
10 3
0 3
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc4 n0 n1
2
10 4
0 4
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc4 n1 n2
2
10 4
0 4
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc4 n2 n3
2
10 4
0 4
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc4 n3 n4
2
10 4
0 4
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc5 n0 n1
2
10 5
0 5
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc5 n1 n2
2
10 5
0 5
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc5 n2 n3
2
10 5
0 5
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc5 n3 n4
2
10 5
0 5
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc6 n0 n1
2
10 6
0 6
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc6 n1 n2
2
10 6
0 6
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc6 n2 n3
2
10 6
0 6
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc6 n3 n4
2
10 6
0 6
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc7 n0 n1
2
10 7
0 7
3
0 2 -1 1
0 9 2 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc7 n1 n2
2
10 7
0 7
3
0 2 -1 1
0 9 2 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc7 n2 n3
2
10 7
0 7
3
0 2 -1 1
0 9 2 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate2 loc7 n3 n4
2
10 7
0 7
3
0 2 -1 1
0 9 2 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 deposito n0 n1
2
10 0
0 0
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 deposito n1 n2
2
10 0
0 0
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 deposito n2 n3
2
10 0
0 0
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 deposito n3 n4
2
10 0
0 0
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc1 n0 n1
2
10 1
0 1
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc1 n1 n2
2
10 1
0 1
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc1 n2 n3
2
10 1
0 1
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc1 n3 n4
2
10 1
0 1
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc2 n0 n1
2
10 2
0 2
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc2 n1 n2
2
10 2
0 2
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc2 n2 n3
2
10 2
0 2
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc2 n3 n4
2
10 2
0 2
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc3 n0 n1
2
10 3
0 3
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc3 n1 n2
2
10 3
0 3
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc3 n2 n3
2
10 3
0 3
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc3 n3 n4
2
10 3
0 3
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc4 n0 n1
2
10 4
0 4
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc4 n1 n2
2
10 4
0 4
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc4 n2 n3
2
10 4
0 4
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc4 n3 n4
2
10 4
0 4
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc5 n0 n1
2
10 5
0 5
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc5 n1 n2
2
10 5
0 5
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc5 n2 n3
2
10 5
0 5
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc5 n3 n4
2
10 5
0 5
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc6 n0 n1
2
10 6
0 6
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc6 n1 n2
2
10 6
0 6
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc6 n2 n3
2
10 6
0 6
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc6 n3 n4
2
10 6
0 6
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc7 n0 n1
2
10 7
0 7
3
0 3 -1 1
0 9 3 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc7 n1 n2
2
10 7
0 7
3
0 3 -1 1
0 9 3 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc7 n2 n3
2
10 7
0 7
3
0 3 -1 1
0 9 3 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate3 loc7 n3 n4
2
10 7
0 7
3
0 3 -1 1
0 9 3 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 deposito n0 n1
2
10 0
0 0
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 deposito n1 n2
2
10 0
0 0
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 deposito n2 n3
2
10 0
0 0
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 deposito n3 n4
2
10 0
0 0
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc1 n0 n1
2
10 1
0 1
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc1 n1 n2
2
10 1
0 1
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc1 n2 n3
2
10 1
0 1
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc1 n3 n4
2
10 1
0 1
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc2 n0 n1
2
10 2
0 2
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc2 n1 n2
2
10 2
0 2
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc2 n2 n3
2
10 2
0 2
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc2 n3 n4
2
10 2
0 2
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc3 n0 n1
2
10 3
0 3
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc3 n1 n2
2
10 3
0 3
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc3 n2 n3
2
10 3
0 3
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc3 n3 n4
2
10 3
0 3
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc4 n0 n1
2
10 4
0 4
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc4 n1 n2
2
10 4
0 4
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc4 n2 n3
2
10 4
0 4
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc4 n3 n4
2
10 4
0 4
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc5 n0 n1
2
10 5
0 5
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc5 n1 n2
2
10 5
0 5
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc5 n2 n3
2
10 5
0 5
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc5 n3 n4
2
10 5
0 5
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc6 n0 n1
2
10 6
0 6
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc6 n1 n2
2
10 6
0 6
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc6 n2 n3
2
10 6
0 6
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc6 n3 n4
2
10 6
0 6
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc7 n0 n1
2
10 7
0 7
3
0 4 -1 1
0 9 4 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc7 n1 n2
2
10 7
0 7
3
0 4 -1 1
0 9 4 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc7 n2 n3
2
10 7
0 7
3
0 4 -1 1
0 9 4 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate4 loc7 n3 n4
2
10 7
0 7
3
0 4 -1 1
0 9 4 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 deposito n0 n1
2
10 0
0 0
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 deposito n1 n2
2
10 0
0 0
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 deposito n2 n3
2
10 0
0 0
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 deposito n3 n4
2
10 0
0 0
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc1 n0 n1
2
10 1
0 1
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc1 n1 n2
2
10 1
0 1
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc1 n2 n3
2
10 1
0 1
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc1 n3 n4
2
10 1
0 1
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc2 n0 n1
2
10 2
0 2
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc2 n1 n2
2
10 2
0 2
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc2 n2 n3
2
10 2
0 2
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc2 n3 n4
2
10 2
0 2
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc3 n0 n1
2
10 3
0 3
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc3 n1 n2
2
10 3
0 3
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc3 n2 n3
2
10 3
0 3
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc3 n3 n4
2
10 3
0 3
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc4 n0 n1
2
10 4
0 4
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc4 n1 n2
2
10 4
0 4
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc4 n2 n3
2
10 4
0 4
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc4 n3 n4
2
10 4
0 4
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc5 n0 n1
2
10 5
0 5
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc5 n1 n2
2
10 5
0 5
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc5 n2 n3
2
10 5
0 5
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc5 n3 n4
2
10 5
0 5
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc6 n0 n1
2
10 6
0 6
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc6 n1 n2
2
10 6
0 6
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc6 n2 n3
2
10 6
0 6
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc6 n3 n4
2
10 6
0 6
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc7 n0 n1
2
10 7
0 7
3
0 5 -1 1
0 9 5 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc7 n1 n2
2
10 7
0 7
3
0 5 -1 1
0 9 5 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc7 n2 n3
2
10 7
0 7
3
0 5 -1 1
0 9 5 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate5 loc7 n3 n4
2
10 7
0 7
3
0 5 -1 1
0 9 5 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 deposito n0 n1
2
10 0
0 0
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 deposito n1 n2
2
10 0
0 0
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 deposito n2 n3
2
10 0
0 0
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 deposito n3 n4
2
10 0
0 0
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc1 n0 n1
2
10 1
0 1
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc1 n1 n2
2
10 1
0 1
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc1 n2 n3
2
10 1
0 1
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc1 n3 n4
2
10 1
0 1
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc2 n0 n1
2
10 2
0 2
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc2 n1 n2
2
10 2
0 2
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc2 n2 n3
2
10 2
0 2
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc2 n3 n4
2
10 2
0 2
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc3 n0 n1
2
10 3
0 3
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc3 n1 n2
2
10 3
0 3
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc3 n2 n3
2
10 3
0 3
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc3 n3 n4
2
10 3
0 3
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc4 n0 n1
2
10 4
0 4
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc4 n1 n2
2
10 4
0 4
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc4 n2 n3
2
10 4
0 4
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc4 n3 n4
2
10 4
0 4
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc5 n0 n1
2
10 5
0 5
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc5 n1 n2
2
10 5
0 5
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc5 n2 n3
2
10 5
0 5
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc5 n3 n4
2
10 5
0 5
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc6 n0 n1
2
10 6
0 6
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc6 n1 n2
2
10 6
0 6
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc6 n2 n3
2
10 6
0 6
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc6 n3 n4
2
10 6
0 6
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc7 n0 n1
2
10 7
0 7
3
0 6 -1 1
0 9 6 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc7 n1 n2
2
10 7
0 7
3
0 6 -1 1
0 9 6 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc7 n2 n3
2
10 7
0 7
3
0 6 -1 1
0 9 6 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate6 loc7 n3 n4
2
10 7
0 7
3
0 6 -1 1
0 9 6 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 deposito n0 n1
2
10 0
0 0
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 deposito n1 n2
2
10 0
0 0
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 deposito n2 n3
2
10 0
0 0
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 deposito n3 n4
2
10 0
0 0
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc1 n0 n1
2
10 1
0 1
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc1 n1 n2
2
10 1
0 1
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc1 n2 n3
2
10 1
0 1
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc1 n3 n4
2
10 1
0 1
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc2 n0 n1
2
10 2
0 2
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc2 n1 n2
2
10 2
0 2
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc2 n2 n3
2
10 2
0 2
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc2 n3 n4
2
10 2
0 2
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc3 n0 n1
2
10 3
0 3
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc3 n1 n2
2
10 3
0 3
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc3 n2 n3
2
10 3
0 3
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc3 n3 n4
2
10 3
0 3
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc4 n0 n1
2
10 4
0 4
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc4 n1 n2
2
10 4
0 4
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc4 n2 n3
2
10 4
0 4
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc4 n3 n4
2
10 4
0 4
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc5 n0 n1
2
10 5
0 5
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc5 n1 n2
2
10 5
0 5
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc5 n2 n3
2
10 5
0 5
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc5 n3 n4
2
10 5
0 5
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc6 n0 n1
2
10 6
0 6
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc6 n1 n2
2
10 6
0 6
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc6 n2 n3
2
10 6
0 6
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc6 n3 n4
2
10 6
0 6
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc7 n0 n1
2
10 7
0 7
3
0 7 -1 1
0 9 7 9
0 8 0 1
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc7 n1 n2
2
10 7
0 7
3
0 7 -1 1
0 9 7 9
0 8 1 2
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc7 n2 n3
2
10 7
0 7
3
0 7 -1 1
0 9 7 9
0 8 2 3
1
end_operator
begin_operator
poner-caja-en-transportador dron1 carrier1 crate7 loc7 n3 n4
2
10 7
0 7
3
0 7 -1 1
0 9 7 9
0 8 3 4
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n0 n1
2
10 0
0 0
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n1 n2
2
10 0
0 0
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n2 n3
2
10 0
0 0
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 deposito n3 n4
2
10 0
0 0
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n0 n1
2
10 1
0 1
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n1 n2
2
10 1
0 1
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n2 n3
2
10 1
0 1
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc1 n3 n4
2
10 1
0 1
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n0 n1
2
10 2
0 2
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n1 n2
2
10 2
0 2
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n2 n3
2
10 2
0 2
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc2 n3 n4
2
10 2
0 2
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc3 n0 n1
2
10 3
0 3
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc3 n1 n2
2
10 3
0 3
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc3 n2 n3
2
10 3
0 3
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc3 n3 n4
2
10 3
0 3
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc4 n0 n1
2
10 4
0 4
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc4 n1 n2
2
10 4
0 4
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc4 n2 n3
2
10 4
0 4
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc4 n3 n4
2
10 4
0 4
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc5 n0 n1
2
10 5
0 5
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc5 n1 n2
2
10 5
0 5
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc5 n2 n3
2
10 5
0 5
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc5 n3 n4
2
10 5
0 5
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc6 n0 n1
2
10 6
0 6
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc6 n1 n2
2
10 6
0 6
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc6 n2 n3
2
10 6
0 6
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc6 n3 n4
2
10 6
0 6
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc7 n0 n1
2
10 7
0 7
3
0 1 1 2
0 9 0 1
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc7 n1 n2
2
10 7
0 7
3
0 1 1 2
0 9 0 1
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc7 n2 n3
2
10 7
0 7
3
0 1 1 2
0 9 0 1
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate1 loc7 n3 n4
2
10 7
0 7
3
0 1 1 2
0 9 0 1
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n0 n1
2
10 0
0 0
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n1 n2
2
10 0
0 0
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n2 n3
2
10 0
0 0
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 deposito n3 n4
2
10 0
0 0
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n0 n1
2
10 1
0 1
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n1 n2
2
10 1
0 1
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n2 n3
2
10 1
0 1
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc1 n3 n4
2
10 1
0 1
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n0 n1
2
10 2
0 2
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n1 n2
2
10 2
0 2
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n2 n3
2
10 2
0 2
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc2 n3 n4
2
10 2
0 2
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc3 n0 n1
2
10 3
0 3
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc3 n1 n2
2
10 3
0 3
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc3 n2 n3
2
10 3
0 3
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc3 n3 n4
2
10 3
0 3
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc4 n0 n1
2
10 4
0 4
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc4 n1 n2
2
10 4
0 4
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc4 n2 n3
2
10 4
0 4
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc4 n3 n4
2
10 4
0 4
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc5 n0 n1
2
10 5
0 5
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc5 n1 n2
2
10 5
0 5
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc5 n2 n3
2
10 5
0 5
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc5 n3 n4
2
10 5
0 5
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc6 n0 n1
2
10 6
0 6
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc6 n1 n2
2
10 6
0 6
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc6 n2 n3
2
10 6
0 6
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc6 n3 n4
2
10 6
0 6
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc7 n0 n1
2
10 7
0 7
3
0 2 1 2
0 9 0 2
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc7 n1 n2
2
10 7
0 7
3
0 2 1 2
0 9 0 2
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc7 n2 n3
2
10 7
0 7
3
0 2 1 2
0 9 0 2
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate2 loc7 n3 n4
2
10 7
0 7
3
0 2 1 2
0 9 0 2
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 deposito n0 n1
2
10 0
0 0
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 deposito n1 n2
2
10 0
0 0
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 deposito n2 n3
2
10 0
0 0
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 deposito n3 n4
2
10 0
0 0
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc1 n0 n1
2
10 1
0 1
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc1 n1 n2
2
10 1
0 1
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc1 n2 n3
2
10 1
0 1
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc1 n3 n4
2
10 1
0 1
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc2 n0 n1
2
10 2
0 2
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc2 n1 n2
2
10 2
0 2
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc2 n2 n3
2
10 2
0 2
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc2 n3 n4
2
10 2
0 2
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc3 n0 n1
2
10 3
0 3
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc3 n1 n2
2
10 3
0 3
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc3 n2 n3
2
10 3
0 3
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc3 n3 n4
2
10 3
0 3
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc4 n0 n1
2
10 4
0 4
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc4 n1 n2
2
10 4
0 4
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc4 n2 n3
2
10 4
0 4
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc4 n3 n4
2
10 4
0 4
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc5 n0 n1
2
10 5
0 5
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc5 n1 n2
2
10 5
0 5
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc5 n2 n3
2
10 5
0 5
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc5 n3 n4
2
10 5
0 5
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc6 n0 n1
2
10 6
0 6
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc6 n1 n2
2
10 6
0 6
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc6 n2 n3
2
10 6
0 6
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc6 n3 n4
2
10 6
0 6
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc7 n0 n1
2
10 7
0 7
3
0 3 1 2
0 9 0 3
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc7 n1 n2
2
10 7
0 7
3
0 3 1 2
0 9 0 3
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc7 n2 n3
2
10 7
0 7
3
0 3 1 2
0 9 0 3
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate3 loc7 n3 n4
2
10 7
0 7
3
0 3 1 2
0 9 0 3
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 deposito n0 n1
2
10 0
0 0
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 deposito n1 n2
2
10 0
0 0
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 deposito n2 n3
2
10 0
0 0
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 deposito n3 n4
2
10 0
0 0
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc1 n0 n1
2
10 1
0 1
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc1 n1 n2
2
10 1
0 1
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc1 n2 n3
2
10 1
0 1
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc1 n3 n4
2
10 1
0 1
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc2 n0 n1
2
10 2
0 2
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc2 n1 n2
2
10 2
0 2
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc2 n2 n3
2
10 2
0 2
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc2 n3 n4
2
10 2
0 2
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc3 n0 n1
2
10 3
0 3
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc3 n1 n2
2
10 3
0 3
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc3 n2 n3
2
10 3
0 3
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc3 n3 n4
2
10 3
0 3
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc4 n0 n1
2
10 4
0 4
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc4 n1 n2
2
10 4
0 4
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc4 n2 n3
2
10 4
0 4
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc4 n3 n4
2
10 4
0 4
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc5 n0 n1
2
10 5
0 5
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc5 n1 n2
2
10 5
0 5
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc5 n2 n3
2
10 5
0 5
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc5 n3 n4
2
10 5
0 5
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc6 n0 n1
2
10 6
0 6
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc6 n1 n2
2
10 6
0 6
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc6 n2 n3
2
10 6
0 6
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc6 n3 n4
2
10 6
0 6
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc7 n0 n1
2
10 7
0 7
3
0 4 1 2
0 9 0 4
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc7 n1 n2
2
10 7
0 7
3
0 4 1 2
0 9 0 4
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc7 n2 n3
2
10 7
0 7
3
0 4 1 2
0 9 0 4
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate4 loc7 n3 n4
2
10 7
0 7
3
0 4 1 2
0 9 0 4
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 deposito n0 n1
2
10 0
0 0
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 deposito n1 n2
2
10 0
0 0
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 deposito n2 n3
2
10 0
0 0
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 deposito n3 n4
2
10 0
0 0
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc1 n0 n1
2
10 1
0 1
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc1 n1 n2
2
10 1
0 1
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc1 n2 n3
2
10 1
0 1
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc1 n3 n4
2
10 1
0 1
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc2 n0 n1
2
10 2
0 2
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc2 n1 n2
2
10 2
0 2
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc2 n2 n3
2
10 2
0 2
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc2 n3 n4
2
10 2
0 2
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc3 n0 n1
2
10 3
0 3
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc3 n1 n2
2
10 3
0 3
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc3 n2 n3
2
10 3
0 3
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc3 n3 n4
2
10 3
0 3
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc4 n0 n1
2
10 4
0 4
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc4 n1 n2
2
10 4
0 4
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc4 n2 n3
2
10 4
0 4
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc4 n3 n4
2
10 4
0 4
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc5 n0 n1
2
10 5
0 5
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc5 n1 n2
2
10 5
0 5
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc5 n2 n3
2
10 5
0 5
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc5 n3 n4
2
10 5
0 5
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc6 n0 n1
2
10 6
0 6
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc6 n1 n2
2
10 6
0 6
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc6 n2 n3
2
10 6
0 6
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc6 n3 n4
2
10 6
0 6
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc7 n0 n1
2
10 7
0 7
3
0 5 1 2
0 9 0 5
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc7 n1 n2
2
10 7
0 7
3
0 5 1 2
0 9 0 5
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc7 n2 n3
2
10 7
0 7
3
0 5 1 2
0 9 0 5
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate5 loc7 n3 n4
2
10 7
0 7
3
0 5 1 2
0 9 0 5
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 deposito n0 n1
2
10 0
0 0
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 deposito n1 n2
2
10 0
0 0
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 deposito n2 n3
2
10 0
0 0
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 deposito n3 n4
2
10 0
0 0
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc1 n0 n1
2
10 1
0 1
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc1 n1 n2
2
10 1
0 1
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc1 n2 n3
2
10 1
0 1
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc1 n3 n4
2
10 1
0 1
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc2 n0 n1
2
10 2
0 2
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc2 n1 n2
2
10 2
0 2
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc2 n2 n3
2
10 2
0 2
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc2 n3 n4
2
10 2
0 2
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc3 n0 n1
2
10 3
0 3
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc3 n1 n2
2
10 3
0 3
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc3 n2 n3
2
10 3
0 3
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc3 n3 n4
2
10 3
0 3
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc4 n0 n1
2
10 4
0 4
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc4 n1 n2
2
10 4
0 4
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc4 n2 n3
2
10 4
0 4
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc4 n3 n4
2
10 4
0 4
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc5 n0 n1
2
10 5
0 5
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc5 n1 n2
2
10 5
0 5
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc5 n2 n3
2
10 5
0 5
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc5 n3 n4
2
10 5
0 5
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc6 n0 n1
2
10 6
0 6
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc6 n1 n2
2
10 6
0 6
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc6 n2 n3
2
10 6
0 6
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc6 n3 n4
2
10 6
0 6
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc7 n0 n1
2
10 7
0 7
3
0 6 1 2
0 9 0 6
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc7 n1 n2
2
10 7
0 7
3
0 6 1 2
0 9 0 6
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc7 n2 n3
2
10 7
0 7
3
0 6 1 2
0 9 0 6
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate6 loc7 n3 n4
2
10 7
0 7
3
0 6 1 2
0 9 0 6
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 deposito n0 n1
2
10 0
0 0
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 deposito n1 n2
2
10 0
0 0
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 deposito n2 n3
2
10 0
0 0
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 deposito n3 n4
2
10 0
0 0
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc1 n0 n1
2
10 1
0 1
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc1 n1 n2
2
10 1
0 1
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc1 n2 n3
2
10 1
0 1
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc1 n3 n4
2
10 1
0 1
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc2 n0 n1
2
10 2
0 2
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc2 n1 n2
2
10 2
0 2
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc2 n2 n3
2
10 2
0 2
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc2 n3 n4
2
10 2
0 2
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc3 n0 n1
2
10 3
0 3
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc3 n1 n2
2
10 3
0 3
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc3 n2 n3
2
10 3
0 3
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc3 n3 n4
2
10 3
0 3
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc4 n0 n1
2
10 4
0 4
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc4 n1 n2
2
10 4
0 4
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc4 n2 n3
2
10 4
0 4
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc4 n3 n4
2
10 4
0 4
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc5 n0 n1
2
10 5
0 5
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc5 n1 n2
2
10 5
0 5
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc5 n2 n3
2
10 5
0 5
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc5 n3 n4
2
10 5
0 5
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc6 n0 n1
2
10 6
0 6
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc6 n1 n2
2
10 6
0 6
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc6 n2 n3
2
10 6
0 6
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc6 n3 n4
2
10 6
0 6
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc7 n0 n1
2
10 7
0 7
3
0 7 1 2
0 9 0 7
0 8 1 0
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc7 n1 n2
2
10 7
0 7
3
0 7 1 2
0 9 0 7
0 8 2 1
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc7 n2 n3
2
10 7
0 7
3
0 7 1 2
0 9 0 7
0 8 3 2
1
end_operator
begin_operator
sacar-caja-del-transportador dron1 carrier1 crate7 loc7 n3 n4
2
10 7
0 7
3
0 7 1 2
0 9 0 7
0 8 4 3
1
end_operator
0
