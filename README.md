# HKUST Thesis

HKUST Thesis template for RPG implemented with LaTeX3. [中文版](README.zh.md).

## To save your time:

- Do you know about LaTeX?
    - Yes: Please jump to [Getting started](#getting-started).
    - No: Do you want to learn it?
        - Yes: Please jump to [Getting started](#getting-started) and find some [tutorials](https://www.bilibili.com/video/BV1s7411U7Pr) before using this template.
        - No: Please use Microsoft Word.

---

## Getting started

1. Download `` hkust-thesis-v*.*-zip `` from latest [release](https://github.com/HKFoggyU/hkust-thesis/releases/latest).
1. The file structure in the zip is like:
    ```bash
    ├── chapters/
    │   ├── Pre_Abstract.tex
    │   ├── Pre_Acknowledgements.tex
    │   ├── Introduction.tex
    │   ├── ...
    │   ├── Conclusions.tex
    │   └── Appendix_Publications.tex
    ├── hkustthesis.cls
    ├── latexmkrc
    ├── mythesis.bib
    ├── mythesis.pdf
    └── mythesis.tex
    ```
1. Among them you only need to edit the `` mythesis.tex `` and the `` tex `` files in the `` chapter/ `` folder.

You have two choices to compile the thesis paper.

### Compile online (with Overleaf)

1. Upload the zip to Overleaf.
1. Make sure the compiler is `` XeLaTeX `` and the TeXLive version is 2021 in Overleaf settings.
1. Write and compile.

### Compile locally

1. Make sure you have installed latest TeX distributions and latest updates. Out-dated distributions may suffer from incompatibilities.
1. Unzip the zip file and enter into it.
1. Run `` latexmk mythesis.tex `` to compile.
1. Run `` latexmk -c `` to clean build caches if necessary.

## Example and documentation

Please refer to the sample and documentation for more instructions and details.

1. Sample (English): `` mythesis.pdf ``
2. Documentation (Chinese): `` hkustthesis.pdf ``

> The documentation tends to be more detailed.

## Contributions

If you find any problems or have any suggestions, please file an issue or PR.

## License

LaTeX Project Public License (version 1.3c)

## Acknowledgements

This project is modified from the [`` NJUThesis ``](https://github.com/nju-lug/NJUThesis) project with the help from [NJU-LUG](https://github.com/nju-lug).
