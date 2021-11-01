---
layout: default
---

# LaTeX3 Template for HKUST Thesis
## Introduction 

This project provides a LaTeX3 template for HKUST-Thesis to fulfill the requirement for Ph.D. and MPhil. graduation.

## Getting Started

*For General Users:*

1. Download the zip file `hkust-thesis-v*.*.zip` from the [latest release](https://github.com/HKFoggyU/hkust-thesis/releases/latest/).
2. Check PDF documentation -- `hkustthesis.pdf` and sample thesis -- `mythesis.pdf` in the release.
   
*For Developers:*

1. Fork the Github repo and develop on your branch.
2. Developer Maunal contained in the `hkustthesis.pdf`.
3. Open an Issue for question, and Pull Request for your contribution.

## Compile Your Thesis

*For General Users*
1. If you use VS Code as your editor and we recommend `LaTeX Workshop` extention. Then, run the `build_mythesis` command we pre-defined.
2. If you like TeXing in Vim, Emacs etc. We prepared a `Makefile`.

```bash
# complie TeX file
make all
# clean dependencies
make clean
```
3. Manual compile through `latexmk`:
```bash
latexmk
latexmk -c
```
4. Manual compile through `XeLaTeX`:
```bash
xelatex mythesis.tex
biber mythesis
xelatex mythesis.tex
xelatex mythesis.tex
```

*For Developers*

For most devlopers, we just clone the directory from Github. Remember, there's 
no `.cls` file and you need to compile yourself.

1. If you use VS Code and `LaTeX Workshop`, run the commands as `extract_dtx -> build_mythesis`. Then you get the documentation and sample theis.
2. If you wish to compile in your shell, check `.vscode/setting.json` and you will find some useful commands.
```bash
# extract_dtx
xetex hkustthesis.dtx
# build sample thesis
latexmk -xelatex mythesis.tex
# clean dependencies
make clean
```
