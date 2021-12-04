open Zach

open Samplegraph

open Zachgraph




(**remove : a' -> a' list -> a' list
 Pour eliminer un element de la liste , sert à éliminer v1 et v2 de la liste de leurs *)
let rec remove x l =
  match l with
    |[]->[] 
    |t::q -> if t = x then q
            else t::(remove x q)
        

let nover_score g = Zach.iter_edges_e (fun e -> 
        let v1 = Zach.getsrc e in
        let v2 = Zach.getdst e in 
        let listev1 = (Zach.succ g v1) in
        let listev2 = (Zach.succ g v2) in 
        let uliste1 = remove v2 listev1 in
        let uliste2 = remove v1 listev2 in 
        let num =  List.fold_right(fun t tq -> if (List.mem t listev1) then tq+1 else tq) listev2 0 in 
        let denom =  (List.length uliste1) + List.fold_right(fun t tq -> if not(List.mem t uliste1) then tq+1 else tq) uliste2 0 in 
        let s = float_of_int(num)/.float_of_int(denom) in
        Zach.setscore s e) g






let step_nover g = 
(*let rec aux g cond = 

  if (cond) then

    let nbr_edge = Zach.fold_edges_e(fun e tq -> 1+ tq) g 0 in *)

    nover_score g ;


   
   
    let min = Zach.fold_edges_e(fun e tq -> if (Zach.getscore e)<= tq then (Zach.getscore e) else tq  ) g 5. in 

    (*supprimer les arrets avec le plus petit score *)
     Zach.iter_edges_e(fun e -> if (Zach.getscore e)=min then (Zach.remove_edge_e g e) else () ) g 

     (*let   new_edge = Zach.fold_edges_e(fun e tq -> 1+ tq) g 0 in 

     if new_edge = nbr_edge then (aux g false) else (aux g true)

  else 
        ()

in aux g true*)


(*let rec terme_modul g l = 
match l  with 
|[]-> 0
|x::q -> *)   


let modularity g l = 
        List.fold_right(fun le tq -> tq +.(      0.     )       ) l 0.



;;



step_nover karate ;
step_nover karate;

Zach.dot_output karate "graphs/karate2.dot";

step_nover karate;

Zach.dot_output karate "graphs/karate3.dot";

step_nover karate;

Zach.dot_output karate "graphs/karate41.dot";







 

(*let min2 = step_nover g1 in 
print_float min2;;*)

(*Zach.dot_output g1 "graphs/g1_stepnover.dot";;*)



