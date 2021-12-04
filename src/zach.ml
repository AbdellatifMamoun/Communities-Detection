module Zach = 
struct
	module Vertex = struct
      type t = int*int*(float list)
      let compare : t -> t -> int = Stdlib.compare
      let hash = Hashtbl.hash
      let equal = (=)
      let default = ((0,0,[]) : t)

      let number        (s,_,_ : int*int*(float list)) = s
      let label         (_,r,_ : int*int*(float list)) = r
      let param         (_,_,l : int*int*(float list)) = l

      let strnumber     (nod : int*int*(float list)) = string_of_int (number nod)
      let strlabel      (nod : int*int*(float list)) = string_of_int (label nod)

      let createlabel   (s,r,l: int*int*(float list)) = (s,r,l);;
	end;;

	module Edge = struct
	  type t = int*(float ref)
	  let compare : t -> t -> int = Stdlib.compare
	  let hash = Hashtbl.hash
	  let equal = (=)
	  let default = (0, ref 0.0)

      let number        (n,_ : int*(float ref)) = n
      let score         (_,s : int*(float ref)) = !s
      let strscore      (_,s : int*(float ref)) = string_of_float !s
      let incr          (_,s : int*(float ref)) value = s := !s +. value;;
      let setscore      (_,s : int*(float ref)) value = s := value;;
      let init          (_,s : int*(float ref)) = s := 0.0;;
      let createlabel   (s : int)             = (s,ref 0.0);;
	end;;


    module MyGraph = Graph.Imperative.Graph.AbstractLabeled(Vertex)(Edge)

	include MyGraph

    module Weight = struct
        type t = int
        type edge = MyGraph.E.t
        let weight (e : edge) = 1 
        let add (a : t) (b : t) = a + b
        let zero = 0
        let compare (a : t) (b : t) = a - b
    end;;

	module Display = struct
        include MyGraph
		let vertex_name v = Vertex.strnumber (V.label v)
		let graph_attributes _ = []
		let default_vertex_attributes _ = []
        let vertex_attributes v = if ((Vertex.label (V.label v))=1) then 
                                        [`Label ((Vertex.strnumber (V.label v))); `Color (255); `Shape (`Diamond)] 
                                  else if ((Vertex.label (V.label v))=2) then 
                                        [`Label ((Vertex.strnumber (V.label v))); `Color (65280); `Shape (`Box)] 
                                  else 
                                        [`Label ((Vertex.strnumber (V.label v))); `Color (16711680); `Shape (`Circle)]
		let default_edge_attributes _ = []
        let edge_attributes e = [`Label (Edge.strscore (E.label e))]
		let get_subgraph _ = None
	end
	module Dot_ = Graph.Graphviz.Dot(Display)
	module Neato = Graph.Graphviz.Neato(Display)
    module MyComp = Graph.Components.Make(MyGraph)
    module MyDijk = Graph.Path.Dijkstra(MyGraph)(Weight)
    module MyChoose = Graph.Oper.Choose(MyGraph)
    module MyBuilder = Graph.Builder.I(MyGraph)

	let dot_output g f =
		let oc = open_out f in
        Neato.output_graph oc g;
        close_out oc;;
    
    let createv lab = V.create (Vertex.createlabel lab);;
    let createe ver1 n ver2 = E.create ver1 (Edge.createlabel n) ver2;;
    let getlabel ver  = Vertex.label (V.label ver);;
    let getnumberv ver = Vertex.number (V.label ver);;
    let getparamv ver = Vertex.param (V.label ver);;
    let getnumbere edg = Edge.number (E.label edg);;
    let getscore edg = Edge.score (E.label edg);;
    let setscore value edg = Edge.setscore (E.label edg) value;;
    let components g = MyComp.scc_list g;;
    let shortest_path g v1 v2 = try MyDijk.shortest_path g v1 v2 with Not_found -> ([],0);;
    let incrscore value edg = Edge.incr (E.label edg) value;;
    let getsrc edg = (E.src edg);;
    let getdst edg = (E.dst edg);;
    let choosev g = MyChoose.choose_vertex g;;
    let choosee g = MyChoose.choose_edge g;;

end;;

