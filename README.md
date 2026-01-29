# Parametric Finite element method for Willmore flow
This repository contains reproduction and experimentation code for

> **B. Kovács, B. Li, C. Lubich (2021)**  
> *A convergent evolving finite element algorithm for Willmore flow of closed surfaces*,  
> Numerische Mathematik, 149(3), pp. 595–643.

The code implements a **parametric evolving surface finite element method (ESFEM / PFEM)** for the Willmore flow of closed surfaces.

If you use this code, please cite the paper above.

---

## Overview

This repository consists of two closely related parts:

### 1. Numerical Simulation Notebooks (Main Focus)

The **main numerical simulations** reproducing the results of the paper are provided as **Jupyter notebooks** in the `./` directory.

In particular, the following notebooks contain the **core numerical experiments and visualizations of Willmore flow**:

- **`PFEM-KLL-Willmore-PerturbedTorus.ipynb`**  
  Willmore flow of a perturbed torus.

- **`PFEM-KLL-Willmore-RBC1.ipynb`**  
  Willmore flow of a red blood cell (RBC) shape (variant 1).

- **`PFEM-KLL-Willmore-RBC2.ipynb`**  
  Willmore flow of a red blood cell (RBC) shape (variant 2).

- **`PFEM-KLL-Willmore-Clifford1.ipynb`**  
  Willmore flow of a Clifford torus configuration.

These notebooks:
- define the initial surfaces,
- assemble the PFEM / ESFEM discretization,
- perform time integration of the Willmore flow,
- and visualize the geometric evolution of the surfaces.

**Users primarily interested in numerical results or geometric evolution should start from these notebooks.**

---

### 2. Core ESFEM Infrastructure (`./ngs-esfem`)

The directory **`./ngs-esfem`** provides the **core implementation for solving PDEs on evolving surfaces**, built on top of **NGSolve**.

It includes:
- basic data structures for evolving triangulated surfaces,
- computation of geometric quantities on evolving surfaces,
- time discretization utilities,
- reusable routines for ESFEM-based solvers.

These components form a **general ESFEM toolbox** and are **not limited to Willmore flow**, but can be reused for other evolving surface PDEs.

---

## Installation

1. Clone the repository (including submodules):

```bash
git clone --recurse-submodules https://github.com/jiashhu/KLL-2021Willmore.git
cd KLL-2021Willmore
```

2. **Recommended**: Use Docker for a reproducible environment:

```bash
docker build -t my-ngsxfem .
./run-image.sh
```

The Docker image already includes **NGSolve** and all required dependencies.
