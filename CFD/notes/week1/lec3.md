# Governing Equations of Fluid Flow 2

## Heat Equation
$$ \frac{\partial \phi(t,z)}{\partial t} = \alpha \nabla^2 \phi(t,z) $$
where $\alpha$ is thermal diffusivity.
the potential here is function of both spatial and temporal variable.
the profile smoothly reaches to equilibrium state (solution of Laplace Equation).

Motion of a viscous fluid in a 2D channel induced by a sudden motion of one of the wall is,
$$ \frac{\partial \phi(t,h)}{\partial t} = v \frac{\partial^2 \phi(t,h)}{\partial h^2} $$
where v is viscosity. equation has only one dimenstion because it's assumed that each layer moves uniformly in another spatical direction.


## Linear Wave Equation
$$ \frac{\partial^2 \phi(t,z)}{\partial t^2} = v^2 \nabla^2 \phi(t,z) $$
where v is velocity of wave/disturbance in the domain.

for 1D (a section of whole circular wave front of a sound/pressure wave) it becomes,
1. second order form
    $ \frac{\partial^2 \phi(t,z)}{\partial t^2} = v^2 \frac{\partial^2 \phi(t,z)}{\partial z^2} $
2. first order form
    $ \frac{\partial \phi(t,z)}{\partial t} + v \frac{\partial \phi(t,z)}{\partial z} = 0 $

it is assumed that these pressure waves are weak which is the reason why equation is linear. when the pressure waves are strong it becomes non-linear (v in 2. becomes $\phi(t,z)$) 


## Euler Equations
they form a system of non-linear conservation laws that govern the dynamics of a compressible fluid at high pressure, for which viscous stresses and heat flux are neglected. it's a system of 1st order PDEs which enforce mass momentum and energy conservation of a compressible fluid.


## Navier Stokes Equation
they do account the neglected effects of Euler Equations.

both of the aforementioned equations assumes continuum hypothesis, and both have more unknowns than equations, and thus a closure condition and a state has to be known.

compressibility of fluid is $ \tau = -\frac{-1}{v}\frac{dv}{dp} $


## Euler Equations in 1D
$$ V_t + F_x(U) = 0 $$
$$ V = \begin{bmatrix} \rho & \rho v & E \end{bmatrix} $$
$$ F = \begin{bmatrix} \rho v & \rho v^2 + p & v(E+p) \end{bmatrix} $$
$$ E = \rho \( \frac12 v^2 + e \) $$
$$ e = e(\rho, p) = \frac{p}{(\gamma -1)\rho} $$
where $ \gamma = \frac{c_p}{c_v} $, U is vector of conserved quantities, F is flux vector.
Euler equations can capture shocks, expansion waves, contact surface features in a compressible fluid.