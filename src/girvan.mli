
(*
 * IN:  A community graph
 * OUT: Nothing.
 *
 * Compute the betweenness score on each edge.
 *
 * INDICATION: Change the community graph structure in place by updating the 
 * score parameter of its edges with (Zach.incrscore : float -> Zach.Zach.E.t -> unit).
 * *)
val betweenness_score : Zach.Zach.t -> unit

(*
 * IN:  A community graph
 *      A number of community separation to reach
 * OUT: Nothing.
 *
 * Separate the graph into a given number of community.
 *
 * INDICATION: Change the community graph structure in place by removing 
 * its edges with (Zach.remove_edge_e : Zach.Zach.t -> Zach.Zach.E.t -> unit).
 * 
 * NOTE: By call of this function, the graph should have changed.
 * *)
val girvan_newman : Zach.Zach.t -> int -> unit
