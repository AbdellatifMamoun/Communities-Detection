open Zach 
open Samplegraph


let rec add l1 l2 =
  match l1,l2 with 
  |[],[]-> []
  |[],_-> l2
  |_,[]->l1
  |e1::q1,e2::q2 -> (e1+.e2)::(add q1 q2)



let convolution g ver = 
let voisins = (Zach.succ g ver) in
  let n = (List.length voisins) in 
  let hv = Zach.getparamv ver in 
  let globalhu = List.map(Zach.getparamv) voisins in 
 let hu =  List.fold_right(fun l tq -> add l tq) globalhu [] in 
 let l = add hv hu in
   List.map(fun e -> (1.0/.(float_of_int(n)+.1.0))*.e) l



let print_param g =
  Zach.iter_vertex ( fun v -> let resu = convolution g v in  
                              let id = Zach.getnumberv v in 
                              print_string "vertex " ;print_int id ;  print_string " " ;print_string "[" ;print_string (String.concat " " (List.map string_of_float resu) ); print_string "]" ; print_string  "\n" ) g ;;




  print_param g4;