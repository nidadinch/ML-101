
val x = 34;
val y = 17;
val z = (x+y) + (y+2);
val q = z +1;
val abs_of_z = if z < 0 then 0-z else z;
val abs_of_z_simpler = abs z;
(* static environment : x : int, y:int z: int, q int*)
(* dynamic environment : x--> 34, y --> 17 bla bla bla.. *)

(* SHADOWING *)
val a = 10
(* a : int
   a -> 10 *)

val b = a*2
(*b -> 20 *)

val a = 5
val c = b

(* a-> 5 , b-> 20, c-> 20*)
(* because a mapped 10, before 5. so b maps 20. *)

val d = a
(* ..., d->5 *)

val a = a+1
(*...,  a -> 6 *)

val g = f-3
(* it creates error message because f is not undefined yet. *)

val f = a*2
(* f -> 12 *)


(* FUNCTION *)
(* works if and only if y > 0 because if it is negative, the function runs forever! *)
fun pow( x: int, y :int) =
    if y =0
    then 1
    else x * pow(x,y-1)

fun cube( x:int) =
    pow(x,3)

val sixtyfour = cube(4)
val fortytwo = pow(2,2+2) + pow(4,2) + cube(2) + 2

(* it will be look like at screen val pow = fn : int*int -> int *)

(* TUPLES *)
fun swap (pr : int * bool)=
    (#2 pr, #1 pr)
    
(* (int * int) * (int * int) -> int *)

fun sum_two_pairs (pr1 : int * int, pr2 :int*int)=
    (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

fun div_mod (x :int, y:int)=
    ( x div y, x mod y)

fun sort_pait(pr:int*int) =
    if (#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)
    
    
(* list functions *)
fun sum_list ( xs : int list)=
    if null
    then 0
    else hd xs + sum_list(tl xs)
    
