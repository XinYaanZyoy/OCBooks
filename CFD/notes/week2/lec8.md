# Finite Volume Method

- in FDM we approximated solutions only at the nodes, we had no clue as to whatsoever was happening inbetween these nodes.

- if we zoom in (very deep) onto one of these nodes, we'll find an infinitesimal volume tending to 0.

- the ideas is to scale up dim of these volumes to a finite size to fit in a given boundry.

- voloumes are juxtaposes very nearby that we can use conservation laws naturally.

- instead of differential forms, we use integral forms of conservation laws.

- we may change the volume at various points as required.

- we set node at the center of these control vols.

- non uniform mesh is easy in FVM than FDM, same for complex geometries.

- easy to impose BC with FVM than FDM due to flux property.