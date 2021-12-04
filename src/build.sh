ocamlfind ocamlc -c -linkpkg -package ocamlgraph zach.ml
ocamlc -c nover.mli
ocamlc -c girvan.mli
ocamlc -c convolution.mli

ocamlfind ocamlopt -linkpkg -package ocamlgraph zach.ml zachgraph.ml samplegraph.ml girvan.ml nover.ml convolution.ml
