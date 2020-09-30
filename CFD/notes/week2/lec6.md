# Methods for Approximate Solution of PDEs

FDM, FVM, and FEM are approaches to approximation

- discretize the physical domain into finite number of points
- Draw a mesh or grid which fills the domain. we can approximate PDEs at the nodes of such mesh.
- instead of exact we seek approx sol at every nodes. this is economical, viable where analytical sol is difficult.
- because taylor series doesn't care of continuum or h having tending to 0, we can use it to approx derivatate at the nodes of discretized domain.
- the lowest degree of h in the truncation error seris is called index of accuracy.
- snapshots or discretization of temporal vars