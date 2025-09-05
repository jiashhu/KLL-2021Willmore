# ngs-esfem

This repository contains extensions of NGSolve for **ESFEM**, PDE-based geometric flows, and related numerical experiments. It also provides geometric utilities and visualization tools for working with 1D and 2D meshes, curves, and surfaces.


## Features

- **ESFEM modules:** ALE methods, Willmore flow, mean curvature flow, ODE solvers.
- **Geometric tools:** 1D and 2D mesh generation, curves, rotations, and discrete surfaces.
- **Visualization:** VTK export for rendering results.
- **Examples:** `esfem/_applications` contains ready-to-run flow simulations.

---

## Installation

1. Clone the repository:

```bash
git clone --recurse-submodules https://github.com/jiashhu/ngs-esfem.git
cd ngs-esfem
```

2. Recommended: Use **Docker** for a reproducible environment:

```bash
docker build -t ngs-esfem .
./run-image.sh
```

3. Ensure NGSolve is installed (the Docker image already includes it).

---

## Usage

* Run example flows:

```bash
python esfem/_applications/mcf_flow.py
python esfem/_applications/willmore_flow.py
```

* Import modules in your scripts:

```python
from esfem.ale import ALEGeometry
from geometry.mesh_1d import Mesh1D
from viz.vtk_out import write_vtk
```

---

## Contributing

* Use **Git submodules** for external dependencies if needed.
* Follow PEP8 for Python code style.
* Push changes to your fork and submit a pull request.
