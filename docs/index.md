---
layout: default
---

# LaTeX3 Template for HKUST Thesis

## Introduction 

This project provides a LaTeX3 template for HKUST Thesis to fulfill the requirements for Ph.D. and MPhil. graduation.

## Getting started

### For general users

1. Download the zip file `hkust-thesis-v*.zip` from the [latest release](https://github.com/HKFoggyU/hkust-thesis/releases/latest/).
1. Read the PDF documentation -- `hkustthesis.pdf` and follow the sample thesis file -- `mythesis.tex` in the release.
1. We recommend ``Visual Studio Code`` with ``LaTeX Workshop`` extention as the editor. Then, run the `build_mythesis` command we pre-defined to compile the thesis file.
   
### For command line users

After downloading the release file, you can compile from command line by:

- `Makefile`.
    ```bash
    make all
    make clean
    ```
- `latexmk`:
    ```bash
    latexmk
    latexmk -c
    ```
- `XeLaTeX`:
    ```bash
    xelatex mythesis.tex
    biber mythesis
    xelatex mythesis.tex
    xelatex mythesis.tex
    ```

### For developers

1. Fork the Github repo and develop on your branch.
1. Read through the documentation `hkustthesis.pdf` including the ``implementation`` section.
1. File issues and PRs for your contribution.

There's no `.cls` file in the repository and you need to compile yourself.

1. For VS Code and `LaTeX Workshop`, run the commands as `extract_dtx` before running `build_mythesis`. Then you get the documentation and sample theis.
1. For command line users:
    ```bash
    xetex hkustthesis.dtx
    ```
