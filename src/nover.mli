
(*
 * IN:  A community graph
 * OUT: Nothing.
 *
 * Compute the nover score on each edge.
 *
 * INDICATION: Change the community graph structure in place by updating the 
 * score parameter of its edges with (Zach.setscore : float -> Zach.Zach.E.t -> unit).
 * *)
val nover_score : Zach.Zach.t -> unit

(*
 * IN:  A community graph
 * OUT: Float.
 *
 * Remove edges in the graph using nover criteron till you make a separation.
 *
 * NOTE: By call of this function, the graph should have changed.
 * *)
val step_nover : Zach.Zach.t -> unit

(*
 * IN:  The intial community graph
 *      The different communities
 * OUT: The modularity of separated graph.
 *
 * Compute the modularity of the graph.
 *
 * INDICATION: You need to provide the initial graph to the modularity function.
 * In order to test you will need to create manually the communities list.
 * Be careful of working with the inital graph ! "step_nover" is changing the graph.
 * *)
val modularity : Zach.Zach.t -> Zach.Zach.V.t list list -> float


