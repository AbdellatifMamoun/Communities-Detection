open Zach;;

(* Graph 1 : g1 *)
let g1 = Zach.create ();;
let v1_1=Zach.createv (1, 0, []);;
let v1_2=Zach.createv (2, 0, []);;
let v1_3=Zach.createv (3, 0, []);;
let v1_4=Zach.createv (4, 0, []);;
let v1_5=Zach.createv (5, 0, []);;
let v1_6=Zach.createv (6, 0, []);;
let v1_7=Zach.createv (7, 0, []);;
Zach.add_vertex g1 v1_1;;
Zach.add_vertex g1 v1_2;;
Zach.add_vertex g1 v1_3;;
Zach.add_vertex g1 v1_4;;
Zach.add_vertex g1 v1_5;;
Zach.add_vertex g1 v1_6;;
Zach.add_vertex g1 v1_7;;

let ed1_1=Zach.createe v1_2 1 v1_4;;
let ed1_2=Zach.createe v1_2 2 v1_3;;
let ed1_3=Zach.createe v1_2 3 v1_6;;
let ed1_4=Zach.createe v1_3 4 v1_6;;
let ed1_5=Zach.createe v1_3 5 v1_4;;
let ed1_6=Zach.createe v1_3 6 v1_5;;
let ed1_7=Zach.createe v1_4 7 v1_6;;
let ed1_8=Zach.createe v1_5 8 v1_7;;
let ed1_9=Zach.createe v1_5 9 v1_1;;
let ed1_10=Zach.createe v1_1 10 v1_7;;
Zach.add_edge_e g1 ed1_1;;
Zach.add_edge_e g1 ed1_2;;
Zach.add_edge_e g1 ed1_3;;
Zach.add_edge_e g1 ed1_4;;
Zach.add_edge_e g1 ed1_5;;
Zach.add_edge_e g1 ed1_6;;
Zach.add_edge_e g1 ed1_7;;
Zach.add_edge_e g1 ed1_8;;
Zach.add_edge_e g1 ed1_9;;
Zach.add_edge_e g1 ed1_10;;

Zach.dot_output g1 "graphs/g1.dot";;

(* Graph 2 : g2 *)
let g2 = Zach.create ();;
let v2_1=Zach.createv (1, 0, []);;
let v2_2=Zach.createv (2, 0, []);;
let v2_3=Zach.createv (3, 0, []);;
let v2_4=Zach.createv (4, 0, []);;
let v2_5=Zach.createv (5, 0, []);;
let v2_6=Zach.createv (6, 0, []);;
Zach.add_vertex g2 v2_1;;
Zach.add_vertex g2 v2_2;;
Zach.add_vertex g2 v2_3;;
Zach.add_vertex g2 v2_4;;
Zach.add_vertex g2 v2_5;;
Zach.add_vertex g2 v2_6;;

let ed2_1=Zach.createe v2_1 1 v2_2;;
let ed2_2=Zach.createe v2_1 2 v2_3;;
let ed2_3=Zach.createe v2_2 3 v2_3;;
let ed2_4=Zach.createe v2_2 4 v2_4;;
let ed2_5=Zach.createe v2_3 5 v2_5;;
let ed2_6=Zach.createe v2_4 6 v2_5;;
let ed2_7=Zach.createe v2_4 7 v2_6;;
let ed2_8=Zach.createe v2_5 8 v2_6;;
Zach.add_edge_e g2 ed2_1;;
Zach.add_edge_e g2 ed2_2;;
Zach.add_edge_e g2 ed2_3;;
Zach.add_edge_e g2 ed2_4;;
Zach.add_edge_e g2 ed2_5;;
Zach.add_edge_e g2 ed2_6;;
Zach.add_edge_e g2 ed2_7;;
Zach.add_edge_e g2 ed2_8;;

Zach.dot_output g2 "graphs/g2.dot";;

(* Graph 3 : g3 *)
let g3 = Zach.create ();;
let v3_1=Zach.createv (1, 0, []);;
let v3_2=Zach.createv (2, 0, []);;
let v3_3=Zach.createv (3, 0, []);;
let v3_4=Zach.createv (4, 0, []);;
let v3_5=Zach.createv (5, 0, []);;
let v3_6=Zach.createv (6, 0, []);;
let v3_7=Zach.createv (7, 0, []);;
let v3_8=Zach.createv (8, 0, []);;
let v3_9=Zach.createv (9, 0, []);;
Zach.add_vertex g3 v3_1;;
Zach.add_vertex g3 v3_2;;
Zach.add_vertex g3 v3_3;;
Zach.add_vertex g3 v3_4;;
Zach.add_vertex g3 v3_5;;
Zach.add_vertex g3 v3_6;;
Zach.add_vertex g3 v3_7;;
Zach.add_vertex g3 v3_8;;
Zach.add_vertex g3 v3_9;;

let ed3_1=Zach.createe v3_1 1 v3_9;;
let ed3_2=Zach.createe v3_1 2 v3_5;;
let ed3_3=Zach.createe v3_1 3 v3_6;;
let ed3_4=Zach.createe v3_1 4 v3_3;;
let ed3_5=Zach.createe v3_1 5 v3_2;;
let ed3_6=Zach.createe v3_2 6 v3_7;;
let ed3_7=Zach.createe v3_2 7 v3_4;;
let ed3_8=Zach.createe v3_3 8 v3_6;;
let ed3_9=Zach.createe v3_3 9 v3_5;;
let ed3_10=Zach.createe v3_4 10 v3_7;;
let ed3_11=Zach.createe v3_4 11 v3_8;;
let ed3_12=Zach.createe v3_5 12 v3_9;;
let ed3_13=Zach.createe v3_5 13 v3_6;;
let ed3_14=Zach.createe v3_7 14 v3_8;;
Zach.add_edge_e g3 ed3_1;;
Zach.add_edge_e g3 ed3_2;;
Zach.add_edge_e g3 ed3_3;;
Zach.add_edge_e g3 ed3_4;;
Zach.add_edge_e g3 ed3_5;;
Zach.add_edge_e g3 ed3_6;;
Zach.add_edge_e g3 ed3_7;;
Zach.add_edge_e g3 ed3_8;;
Zach.add_edge_e g3 ed3_9;;
Zach.add_edge_e g3 ed3_10;;
Zach.add_edge_e g3 ed3_11;;
Zach.add_edge_e g3 ed3_12;;
Zach.add_edge_e g3 ed3_13;;
Zach.add_edge_e g3 ed3_14;;

Zach.dot_output g3 "graphs/g3.dot";;

(* Graph 4 : g4 *)
let g4 = Zach.create ();;
let v4_1=Zach.createv (1, 0, [2.;3.;1.]);;
let v4_2=Zach.createv (2, 0, [5.;0.;5.]);;
let v4_3=Zach.createv (3, 0, [0.;2.;1.]);;
let v4_4=Zach.createv (4, 0, [1.;1.;1.]);;
let v4_5=Zach.createv (5, 0, [3.;4.;2.]);;
let v4_6=Zach.createv (6, 0, [0.;0.;0.]);;
Zach.add_vertex g4 v4_1;;
Zach.add_vertex g4 v4_2;;
Zach.add_vertex g4 v4_3;;
Zach.add_vertex g4 v4_4;;
Zach.add_vertex g4 v4_5;;
Zach.add_vertex g4 v4_6;;

let ed4_1=Zach.createe v4_1 1 v4_3;;
let ed4_2=Zach.createe v4_1 2 v4_2;;
let ed4_3=Zach.createe v4_1 3 v4_4;;
let ed4_4=Zach.createe v4_4 4 v4_6;;
let ed4_5=Zach.createe v4_4 5 v4_5;;
let ed4_6=Zach.createe v4_6 6 v4_5;;
Zach.add_edge_e g4 ed4_1;;
Zach.add_edge_e g4 ed4_2;;
Zach.add_edge_e g4 ed4_3;;
Zach.add_edge_e g4 ed4_4;;
Zach.add_edge_e g4 ed4_5;;
Zach.add_edge_e g4 ed4_6;;

Zach.dot_output g4 "graphs/g4.dot";;

