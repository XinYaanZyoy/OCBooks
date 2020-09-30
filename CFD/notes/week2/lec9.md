# General transport equation

unsteady + advection = diffusion + source

differential form,

$$ \frac{\partial (\rho \phi)}{\partial t} + \nabla \cdot (\rho \phi \vec u) = \nabla \cdot (\Gamma \nabla \phi) + S_{\phi} $$

integral form,

$$ \int_{CV} \frac{\partial (\rho \phi)}{\partial t} dV + \int_{CV} \nabla \cdot (\rho \phi \vec u) dV = \int_{CV} \nabla \cdot (\Gamma \nabla \phi) dV + \int_{CV} S_{\phi} dV $$

## steps

1. grid generation
2. integrate, impose BC, and use interpolation
3. solve discretized simultaneous equs

## properties of approx. methods

- Conservativeness
- Boundedness
- Transportiveness
