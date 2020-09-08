# Governing Equations of Fluid Flow

Governing Equations of Fluid Flow problems often involve PDEs.

[here's](https://drive.google.com/file/d/17ENC6nCxcWn3py25OW-sRe31WkieeIyp/view?usp=sharing) my old tiny note on laplacian in an amusing way!

the way i imagine laplacian is like, for a point on a non changing (or equilibrium) scalar field, finding a deviation from the average of surrounding or neighbouring points.


## Laplace Equation
$$ 0 = \nabla^2 \phi(z) $$
$ \phi $ here represents an equilibrium velocity potential (scalar field), where z is spatial variable.
potential flow is devoid of viscosity, incompressible, and irrotational. so it is an ideal flow!
$$ v_i = \frac{\partial \phi(z)}{\partial z_i} $$
at a point of potential field derivative in a direction is velocity in that direction.
lift is simulated very well by laplace equation.
it is also used in steady state heat equation.


## Poisson Equation
$$ S = \nabla^2 \phi(z) $$
where S is the Source or Sink.
it is used to solve for the pressure field in incompressible flows.


## Laplace Equation on 1D
let the domain be $ x \in [0,L] $
it boils down to an ODE of which solution is $ \phi(x) = kx+c $.
let $ \phi(x=0) = \phi_0 $ and $ \phi(x=L) = \phi_L $.
$ \therefore \phi(x) = \frac{\phi_L-\phi_0}{L}x+\phi_L $ which is a smooth linear variation.
this is just a final snapshot or state of equilibrium ignoring the transient process.


## Heat Equation
$$ \frac{\partial \phi(t,z)}{\partial t} = \alpha \nabla^2 \phi(t,z) $$
where $\alpha$ is thermal diffusivity.
the potential here is function of both spatial and temporal variable.
the profile smoothly decays to equilibrium state (solution of Laplace Equation).