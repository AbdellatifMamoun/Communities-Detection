
(*
 * IN:  A community graph
 *      A vertex
 * OUT: A list of float of same length as the list of float
 * representing the parameters of the vertex. It contains the 
 * result of the convolution on this vertex.
 * INDICATION: You may need to use (Zach.getparamv : Zach.Zach.V.t -> float list)
 * to get the list of parameters of a given vertex.
 * *)
val convolution : Zach.Zach.t -> Zach.Zach.V.t -> float list

(* 
 * IN:  A community graph
 * OUT: Nothing.
 *
 * Print the result of the convolution on all the vertices.
 * Example of output:
 *
 * Node 1 : 1.5   2.  3.
 * Node 2 : 3.4   1.  0.7
 * Node 3 : 0.    9.  4.5
 * .
 * .
 * .
 *
 * INDICATION: Refer to the doc ocaml of Printf.printf.
 * *)
val print_param : Zach.Zach.t -> unit

val add : float list -> float list -> float list