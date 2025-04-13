# Modulation Instability in Semiconductor Quantum Dots

This repository contains the simulation code and theoretical analysis for studying **modulation instability (MI)** in **semiconductor quantum dots (SQDs)** using **MATLAB**. The project explores the nonlinear optical phenomena that arise in quantum dot systems under the influence of external fields, with a focus on understanding the conditions under which modulation instability occurs.

## 📘 Overview

Modulation instability is a fundamental nonlinear effect that leads to the exponential growth of small perturbations in a continuous wave, resulting in the formation of localized structures such as solitons. In this project, we model the interaction between optical fields and semiconductor quantum dots to study:

- Theoretical formulation of modulation instability in SQDs
- Linear stability analysis
- Numerical simulations using MATLAB
- Visualization of instability growth and sideband generation

## 🔬 Theoretical Background

Semiconductor quantum dots exhibit discrete energy levels due to quantum confinement. Their interaction with optical fields can be modeled using Maxwell-Bloch-type equations with nonlinear terms. The modulation instability arises due to interplay between dispersion and nonlinearity.

Key features include:
- Density matrix formalism for SQD population and coherence
- Derivation of the MI gain spectrum
- Effects of parameters like detuning, field strength, and dephasing

## 🛠️ Requirements

To run the MATLAB code, you will need:
- MATLAB R2020 or later (recommended)
- Basic MATLAB toolboxes (no additional packages required)

## 🚀 Getting Started

Clone this repository:

```bash
git clone https://github.com/ryuzen0x1/MSc-SQDots.git
cd MSc-SQDots
```

Run the main simulation script: `Kerr-Quintic_Instability.m`

All plots and results will be saved in the `/results` directory.

## 📁 Project Structure

```css
MSc-SQDots/
├── Assets/
│   ├── Kerr-Quintic_Instability.m
│   ├── two_in_one_gain_v_power.m
│   └── parameters.m
├── results/
│   └── (simulation outputs and plots)
├── docs/
│   └── theory_notes.pdf
├── README.md
└── LICENSE
```

## 📊 Sample Output

Plots include:

- MI gain spectrum vs perturbation wavenumber
- Temporal evolution of field amplitude
- Stability maps for varying system parameters

## 📚 References

- Agrawal, G. P. _Nonlinear Fiber Optics_. (For foundational MI theory)
- Bimberg, D., et al. _Quantum Dot Heterostructures_
- Research papers on MI in quantum-confined systems (included in `/docs`)

## 📌 Future Work

- Extension to multi-mode interactions
- Inclusion of quantum noise effects
- Comparison with experimental data

## 📩 Contact

For questions or collaborations, feel free to reach out via [ryukiryuoma@protom.me] or open an issue.
