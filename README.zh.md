# HKUST Thesis

使用 LaTeX3 语法实现的香港科技大学 RPG 毕业论文模板.

## 节约时间：

- 你了解 LaTeX 吗?
    - 是: 请跳转至 [快速上手](#快速上手)。
    - 否: 你想学习它吗？
        - 是: 请跳转至 [快速上手](#快速上手)，并在开始使用本模板之前找一些[教程](https://www.bilibili.com/video/BV1s7411U7Pr)。
        - 否: 请使用 Word。

---

## 快速上手

1. 下载最新的 [release](https://github.com/HKFoggyU/hkust-thesis/releases/latest) 中的 `` hkust-thesis-v*.*-zip `` 文件。
1. 压缩包中的文件结构应如下：
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
1. 只需编辑 `` mythesis.tex `` 和 `` chapter/ `` 文件夹下的 `` tex `` 文件。

有两种方式可用于编译毕业论文。

### 使用 Overleaf 在线编译

1. 上传压缩包至 Overleaf。
1. 确保Overleaf的设置中的编译器为 `` XeLaTeX ``，TeXLive 版本为 2021。
1. 编辑文件并编译。

### 本地编译

1. 确保安装了最新的 TeX 发行版以及最新的更新。过时的发行版可能不兼容。
1. 解压压缩包并进入解压后的文件夹。
1. 运行 `` latexmk mythesis.tex `` 以编译。
1. 如有需要，运行 `` latexmk -c `` 以删除编译中间产物。

## 示例文件和说明文档

请参考示例文件和说明文档以获得更多细节。

1. 示例文件（英语）：`` mythesis.pdf ``
2. 说明文档（中文）：`` hkustthesis.pdf ``

> 说明文档通常更加详细。

## 贡献

如果你发现了任何问题或有任何建议，请提交issue或PR。

## 许可证

LaTeX Project Public License (version 1.3c)

## 致谢

本项目由 [`` NJUThesis ``](https://github.com/nju-lug/NJUThesis) 项目修改而来，并得到了 [NJU-LUG](https://github.com/nju-lug) 的帮助。
