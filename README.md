# ngs-esfem

This repository contains the reproduction code of 
[A convergent evolving finite element algorithm for Willmore flow of closed surfaces](https://www.researchgate.net/publication/355493657_A_convergent_evolving_finite_element_algorithm_for_Willmore_flow_of_closed_surfaces)
(KLL 2021) for the Willmore flow.

---

## Installation

1. Clone the repository:

```bash
git clone --recurse-submodules https://github.com/jiashhu/KLL-2021Willmore.git
cd KLL-2021Willmore
```

2. Recommended: Use **Docker** for a reproducible environment:

```bash
docker build -t my-ngsxfem .
./run-image.sh
```

3. Ensure NGSolve is installed (the Docker image already includes it).

---

## Usage

- On **Mac/Linux** (with zsh):  
  ```bash
  zsh run-image.sh build
  ```
  This will build the image and start the Jupyter Notebook.

- On **Windows** (with PowerShell):  
  ```powershell
  .\run-image.ps1 build
  ```
  This will build the image and start the Jupyter Notebook.

* notebooks are in the ./work sub-directory
* Open PFEM-KLL-Willmore-PerturbedTorus.ipynb to run the example of perturbated torus
* Open PFEM-KLL-Willmore-RBC2.ipynb to run the example of red blood cell shape surface

