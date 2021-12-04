open Zach;;

let karate = Zach.create ();;
(* List of vertices *)
let v1=Zach.createv  (1, 0, []);;
let v2=Zach.createv  (2, 0, []);;
let v3=Zach.createv  (3, 0, []);;
let v4=Zach.createv  (4, 0, []);;
let v5=Zach.createv  (5, 0, []);;
let v6=Zach.createv  (6, 0, []);;
let v7=Zach.createv  (7, 0, []);;
let v8=Zach.createv  (8, 0, []);;
let v9=Zach.createv  (9, 0, []);;
let v10=Zach.createv (10 ,1, []);;
let v11=Zach.createv (11 ,0, []);;
let v12=Zach.createv (12 ,0, []);;
let v13=Zach.createv (13 ,0, []);;
let v14=Zach.createv (14 ,0, []);;
let v15=Zach.createv (15 ,1, []);;
let v16=Zach.createv (16 ,1, []);;
let v17=Zach.createv (17 ,0, []);;
let v18=Zach.createv (18 ,0, []);;
let v19=Zach.createv (19 ,1, []);;
let v20=Zach.createv (20 ,0, []);;
let v21=Zach.createv (21 ,1, []);;
let v22=Zach.createv (22 ,0, []);;
let v23=Zach.createv (23 ,1, []);;
let v24=Zach.createv (24 ,1, []);;
let v25=Zach.createv (25 ,1, []);;
let v26=Zach.createv (26 ,1, []);;
let v27=Zach.createv (27 ,1, []);;
let v28=Zach.createv (28 ,1, []);;
let v29=Zach.createv (29 ,1, []);;
let v30=Zach.createv (30 ,1, []);;
let v31=Zach.createv (31 ,1, []);;
let v32=Zach.createv (32 ,1, []);;
let v33=Zach.createv (33 ,1, []);;
let v34=Zach.createv (34 ,1, []);;

Zach.add_vertex karate v1;;
Zach.add_vertex karate v2;;
Zach.add_vertex karate v3;;
Zach.add_vertex karate v4;;
Zach.add_vertex karate v5;;
Zach.add_vertex karate v6;;
Zach.add_vertex karate v7;;
Zach.add_vertex karate v8;;
Zach.add_vertex karate v9;;
Zach.add_vertex karate v10;;
Zach.add_vertex karate v11;;
Zach.add_vertex karate v12;;
Zach.add_vertex karate v13;;
Zach.add_vertex karate v14;;
Zach.add_vertex karate v15;;
Zach.add_vertex karate v16;;
Zach.add_vertex karate v17;;
Zach.add_vertex karate v18;;
Zach.add_vertex karate v19;;
Zach.add_vertex karate v20;;
Zach.add_vertex karate v21;;
Zach.add_vertex karate v22;;
Zach.add_vertex karate v23;;
Zach.add_vertex karate v24;;
Zach.add_vertex karate v25;;
Zach.add_vertex karate v26;;
Zach.add_vertex karate v27;;
Zach.add_vertex karate v28;;
Zach.add_vertex karate v29;;
Zach.add_vertex karate v30;;
Zach.add_vertex karate v31;;
Zach.add_vertex karate v32;;
Zach.add_vertex karate v33;;
Zach.add_vertex karate v34;;

(* Edge v2 *)
let ed1=Zach.createe v2 1 v1;;

(* Edge v3 *)
let ed2=Zach.createe v3 2 v1;;
let ed3=Zach.createe v3 3 v2;;

(* Edge v4 *)
let ed4=Zach.createe v4 4 v1;;
let ed5=Zach.createe v4 5 v2;;
let ed6=Zach.createe v4 6 v3;;

(* Edge v5 *)
let ed7=Zach.createe v5 7 v1;;

(* Edge v6 *)
let ed8=Zach.createe v6 8 v1;;

(* Edge v7 *)
let ed9=Zach.createe v7 9 v1;;
let ed10=Zach.createe v7 10 v5;;
let ed11=Zach.createe v7 11 v6;;

(* Edge v8 *)
let ed12=Zach.createe v8 12 v1;;
let ed13=Zach.createe v8 13 v2;;
let ed14=Zach.createe v8 14 v3;;
let ed15=Zach.createe v8 15 v4;;

(* Edge v9 *)
let ed16=Zach.createe v9 16 v1;;
let ed17=Zach.createe v9 17 v3;;

(* Edge v10 *)
let ed18=Zach.createe v10 18 v3;;

(* Edge v11 *)
let ed19=Zach.createe v11 19 v1;;
let ed20=Zach.createe v11 20 v5;;
let ed21=Zach.createe v11 21 v6;;

(* Edge v12 *)
let ed22=Zach.createe v12 22 v1;;

(* Edge v13 *)
let ed23=Zach.createe v13 23 v1;;
let ed24=Zach.createe v13 24 v4;;

(* Edge v14 *)
let ed25=Zach.createe v14 25 v1;;
let ed26=Zach.createe v14 26 v2;;
let ed27=Zach.createe v14 27 v3;;
let ed28=Zach.createe v14 28 v4;;

(* Edge v15 *)

(* Edge v16 *)

(* Edge v17 *)
let ed29=Zach.createe v17 29 v6;;
let ed30=Zach.createe v17 30 v7;;

(* Edge v18 *)
let ed31=Zach.createe v18 31 v1;;
let ed32=Zach.createe v18 32 v2;;

(* Edge v19 *)

(* Edge v20 *)
let ed33=Zach.createe v20 33 v1;;
let ed34=Zach.createe v20 34 v2;;

(* Edge v21 *)

(* Edge v22 *)
let ed35=Zach.createe v22 35 v1;;
let ed36=Zach.createe v22 36 v2;;

(* Edge v23 *)

(* Edge v24 *)

(* Edge v25 *)

(* Edge v26 *)
let ed37=Zach.createe v26 37 v24;;
let ed38=Zach.createe v26 38 v25;;

(* Edge v27 *)

(* Edge v28 *)
let ed39=Zach.createe v28 39 v3;;
let ed40=Zach.createe v28 40 v24;;
let ed41=Zach.createe v28 41 v25;;

(* Edge v29 *)
let ed42=Zach.createe v29 42 v3;;

(* Edge v30 *)
let ed43=Zach.createe v30 43 v24;;
let ed44=Zach.createe v30 44 v27;;

(* Edge v31 *)
let ed45=Zach.createe v31 45 v2;;
let ed46=Zach.createe v31 46 v9;;

(* Edge v32 *)
let ed47=Zach.createe v32 47 v1;;
let ed48=Zach.createe v32 48 v25;;
let ed49=Zach.createe v32 49 v26;;
let ed50=Zach.createe v32 50 v29;;

(* Edge v33 *)
let ed51=Zach.createe v33 51 v3;;
let ed52=Zach.createe v33 52 v9;;
let ed53=Zach.createe v33 53 v15;;
let ed54=Zach.createe v33 54 v16;;
let ed55=Zach.createe v33 55 v19;;
let ed56=Zach.createe v33 56 v21;;
let ed57=Zach.createe v33 57 v23;;
let ed58=Zach.createe v33 58 v24;;
let ed59=Zach.createe v33 59 v30;;
let ed60=Zach.createe v33 60 v31;;
let ed61=Zach.createe v33 61 v32;;

(* Edge v34 *)
let ed62=Zach.createe v34 62 v9;;
let ed63=Zach.createe v34 63 v10;;
let ed64=Zach.createe v34 64 v14;;
let ed65=Zach.createe v34 65 v15;;
let ed66=Zach.createe v34 66 v16;;
let ed67=Zach.createe v34 67 v19;;
let ed68=Zach.createe v34 68 v20;;
let ed69=Zach.createe v34 69 v21;;
let ed70=Zach.createe v34 70 v23;;
let ed71=Zach.createe v34 71 v24;;
let ed72=Zach.createe v34 72 v27;;
let ed73=Zach.createe v34 73 v28;;
let ed74=Zach.createe v34 74 v29;;
let ed75=Zach.createe v34 75 v30;;
let ed76=Zach.createe v34 76 v31;;
let ed77=Zach.createe v34 77 v32;;
let ed78=Zach.createe v34 78 v33;;

Zach.add_edge_e karate ed1;;
Zach.add_edge_e karate ed2;;
Zach.add_edge_e karate ed3;;
Zach.add_edge_e karate ed4;;
Zach.add_edge_e karate ed5;;
Zach.add_edge_e karate ed6;;
Zach.add_edge_e karate ed7;;
Zach.add_edge_e karate ed8;;
Zach.add_edge_e karate ed9;;
Zach.add_edge_e karate ed10;;
Zach.add_edge_e karate ed11;;
Zach.add_edge_e karate ed12;;
Zach.add_edge_e karate ed13;;
Zach.add_edge_e karate ed14;;
Zach.add_edge_e karate ed15;;
Zach.add_edge_e karate ed16;;
Zach.add_edge_e karate ed17;;
Zach.add_edge_e karate ed18;;
Zach.add_edge_e karate ed19;;
Zach.add_edge_e karate ed20;;
Zach.add_edge_e karate ed21;;
Zach.add_edge_e karate ed22;;
Zach.add_edge_e karate ed23;;
Zach.add_edge_e karate ed24;;
Zach.add_edge_e karate ed25;;
Zach.add_edge_e karate ed26;;
Zach.add_edge_e karate ed27;;
Zach.add_edge_e karate ed28;;
Zach.add_edge_e karate ed29;;
Zach.add_edge_e karate ed30;;
Zach.add_edge_e karate ed31;;
Zach.add_edge_e karate ed32;;
Zach.add_edge_e karate ed33;;
Zach.add_edge_e karate ed34;;
Zach.add_edge_e karate ed35;;
Zach.add_edge_e karate ed36;;
Zach.add_edge_e karate ed37;;
Zach.add_edge_e karate ed38;;
Zach.add_edge_e karate ed39;;
Zach.add_edge_e karate ed40;;
Zach.add_edge_e karate ed41;;
Zach.add_edge_e karate ed42;;
Zach.add_edge_e karate ed43;;
Zach.add_edge_e karate ed44;;
Zach.add_edge_e karate ed45;;
Zach.add_edge_e karate ed46;;
Zach.add_edge_e karate ed47;;
Zach.add_edge_e karate ed48;;
Zach.add_edge_e karate ed49;;
Zach.add_edge_e karate ed50;;
Zach.add_edge_e karate ed51;;
Zach.add_edge_e karate ed52;;
Zach.add_edge_e karate ed53;;
Zach.add_edge_e karate ed54;;
Zach.add_edge_e karate ed55;;
Zach.add_edge_e karate ed56;;
Zach.add_edge_e karate ed57;;
Zach.add_edge_e karate ed58;;
Zach.add_edge_e karate ed59;;
Zach.add_edge_e karate ed60;;
Zach.add_edge_e karate ed61;;
Zach.add_edge_e karate ed62;;
Zach.add_edge_e karate ed63;;
Zach.add_edge_e karate ed64;;
Zach.add_edge_e karate ed65;;
Zach.add_edge_e karate ed66;;
Zach.add_edge_e karate ed67;;
Zach.add_edge_e karate ed68;;
Zach.add_edge_e karate ed69;;
Zach.add_edge_e karate ed70;;
Zach.add_edge_e karate ed71;;
Zach.add_edge_e karate ed72;;
Zach.add_edge_e karate ed73;;
Zach.add_edge_e karate ed74;;
Zach.add_edge_e karate ed75;;
Zach.add_edge_e karate ed76;;
Zach.add_edge_e karate ed77;;
Zach.add_edge_e karate ed78;;

Zach.dot_output karate "graphs/karate.dot";;

