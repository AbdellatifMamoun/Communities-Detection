open Zach
open Samplegraph
open Zachgraph


let betweenness_score g = 

Zach.iter_vertex (fun v1 ->  Zach.iter_vertex (fun v2 -> let liste_edges = fst(Zach.shortest_path g v1 v2) in 
                              List.iter (fun t ->  Zach.setscore  ((Zach.getscore t)+.1.) t  ) liste_edges ) g) g



let rec girvan_newman g n_com = 

let rec aux g n_com iter = 

  if iter < n_com then  
    (betweenness_score g;

    let score_max = Zach.fold_edges_e(fun e tq -> if (Zach.getscore e) >= tq then (Zach.getscore e) else tq  ) g 0. in 

    Zach.iter_edges_e(fun e -> if (Zach.getscore e)=score_max then (Zach.remove_edge_e g e) else () ) g ;

    let n_act = List.length (Zach.components g) in 

    aux g n_com n_act ;)
  else 
      ()
in aux g n_com 0;;







betweenness_score g2 ;
Zach.dot_output g2 "graphs/g2_betw.dot";



