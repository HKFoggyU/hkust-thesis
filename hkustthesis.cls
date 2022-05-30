%%
%% This is file `hkustthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hkustthesis.dtx  (with options: `class')
%% 
%% Copyright (C) 2021
%% by <HKFoggyU> @ GitHub
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through XeTeX.
%% 
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{expl3}
\GetIdInfo  $Id: hkustthesis.dtx 0.4 2021-10-28 00:00:00 +0800  HKFoggyU$
  { Thesis template for HKUST }
\ProvidesExplClass{hkustthesis}
{\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
%%
\cs_new_protected:Npn \__hkust_define_name:nn #1#2
  { \tl_const:cn { c__hkust_name_ #1 _tl } {#2} }
\clist_map_inline:nn
  { { pdf_creator } { LaTeX~with~hkustthesis~class }, }
  { \__hkust_define_name:nn #1 }
\clist_map_inline:nn
  { { keywords } { Keywords:~ }, }
  { \__hkust_define_name:nn #1 }
\RequirePackage{xparse,xtemplate,l3keys2e}
\tl_new:N \l__hkust_info_degree_tl
\tl_new:N \g__hkust_latin_fontset_tl
\tl_new:N \g__hkust_bib_style_tl
\tl_new:N \g__hkust_disp_committee_tl
\keys_define:nn { hkust }
{
  customlatinfont   .choices:nn   =
  { gyre, macos, windows, none }
  { \tl_set_eq:NN \g__hkust_latin_fontset_tl \l_keys_choice_tl },
  custombibstyle    .choices:nn   =
  { ieee, nature, science, apa, mla, phys, chem-acs, nejm }
  { \tl_set_eq:NN \g__hkust_bib_style_tl \l_keys_choice_tl },
  custombibstyle    .initial:n    = ieee,
  displaycommittee    .choices:nn   = { true, flase }
  { \tl_set_eq:NN \g__hkust_disp_committee_tl \l_keys_choice_tl },
  displaycommittee    .initial:n    = flase,
}
\ProcessKeysOptions { hkust }
\keys_define:nn { hkust }
{ info               .meta:nn = { hkust / info } { #1 } }
\keys_define:nn { hkust / info }
{
  degree            .tl_set:N = \l__hkust_info_degree_tl,
  title             .tl_set:N = \l__hkust_info_title_tl,
keywords         .clist_set:N = \l__hkust_info_keywords_clist,
  grade             .tl_set:N = \l__hkust_info_grade_tl,
  student-id        .tl_set:N = \l__hkust_info_id_tl,
  author            .tl_set:N = \l__hkust_info_author_tl,
  school            .tl_set:N = \l__hkust_info_school_tl,
  department        .tl_set:N = \l__hkust_info_department_tl,
  program           .tl_set:N = \l__hkust_name_of_program_tl,
  major             .tl_set:N = \l__hkust_major_tl,
  supervisor        .tl_set:N = \l__hkust_info_supervisor_tl,
  co-supervisor     .tl_set:N = \l__hkust_info_co_supervisor_tl,
  submit-month      .tl_set:N = \l__hkust_submit_month_tl,
  submit-date       .tl_set:N = \l__hkust_submit_date_tl,
  defend-date       .tl_set:N = \l__hkust_defend_date_tl,
  depthead          .tl_set:N = \l__hkust_info_depthead_tl,
  reviewer       .clist_set:N = \l__hkust_info_reviewer_clist,
  reviewerdept   .clist_set:N = \l__hkust_info_reviewer_dept_clist,
  reviewerext    .clist_set:N = \l__hkust_info_reviewer_ext_clist,
  city              .tl_set:N = \l__hkust_info_city_tl,
}
\NewDocumentCommand \hkustsetup { m }
{ \keys_set:nn { hkust } { #1 } }
\LoadClass[a4paper,12pt,oneside,UTF8]{book}
\RequirePackage
{
  geometry,
  caption,
  floatrow,
  float,
  setspace,
  lastpage,
  emptypage,
  fancyhdr,
  makecell
}
\linespread{1.43}
\RequirePackage[explicit]{titlesec} % typesetting titles of chap/sec/...
\RequirePackage[titles]{tocloft}
\RequirePackage[hyphens]{url} % generate better linebreaks in the url
\RequirePackage{siunitx}            % 用于书写单位符号
\RequirePackage[version=4]{mhchem}  % 用于绘制分子式
\RequirePackage{physics}            % Physics package
\RequirePackage{braket}             % for Dirac notation
\RequirePackage{hologo}
\RequirePackage{amsmath,amsthm,mathtools,thmtools}
\RequirePackage[
  warnings-off={mathtools-colon,mathtools-overbracket}
]{unicode-math}
\RequirePackage{graphicx,subcaption,wrapfig,tikz}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\RequirePackage{booktabs,multirow,multicol,listings,enumitem}
\RequirePackage[
  hidelinks,
  bookmarksnumbered = true,
  psdextra          = true,
  unicode           = true,
  colorlinks        = true,
  linkcolor         = black,
  urlcolor          = blue,
  citecolor         = red,
  anchorcolor       = blue,
  ]{hyperref}
\RequirePackage[capitalise,nameinlink,noabbrev]{cleveref}
\RequirePackage{blindtext}
\RequirePackage{fontspec}
\bool_new:N \g__hkust_load_system_fontset_bool
\tl_if_empty:NTF \g__hkust_latin_fontset_tl
  { \bool_gset_true:N \g__hkust_load_system_fontset_bool }
  { }
\cs_new_protected:Npn \__hkust_if_platform_macos:TF
  { \file_if_exist:nTF { /System/Library/Fonts/Menlo.ttc } }
\bool_if:NT \g__hkust_load_system_fontset_bool
{
  \sys_if_platform_windows:TF
  { \tl_set:Nn \g__hkust_latin_fontset_tl { windows } }
  {
    \__hkust_if_platform_macos:TF
    { \tl_set:Nn \g__hkust_latin_fontset_tl { macos } }
    { \tl_set:Nn \g__hkust_latin_fontset_tl { gyre  } }
  }
}
\cs_new_protected:Npn \__hkust_load_latin_font_windows:
{
  \setmainfont{Times~New~Roman}
  \setsansfont{Arial}
  \setmonofont{Courier~New}[Scale=MatchLowercase]
}
\cs_new_protected:Npn \__hkust_load_latin_font_macos:
{
  \setmainfont{Times~New~Roman}
  \setsansfont{Arial}
  \setmonofont{Menlo}[Scale=MatchLowercase]
}
\cs_new_protected:Npn \__hkust_load_latin_font_gyre:
{
  \setmainfont{texgyretermes}[
    Extension=.otf,
    UprightFont=*-regular,
    BoldFont=*-bold,
    ItalicFont=*-italic,
    BoldItalicFont=*-bolditalic]
  \setsansfont{texgyreheros}[
    Extension=.otf,
    UprightFont=*-regular,
    BoldFont=*-bold,
    ItalicFont=*-italic,
    BoldItalicFont=*-bolditalic]
  \setmonofont{texgyrecursor}[
    Extension=.otf,
    UprightFont=*-regular,
    BoldFont=*-bold,
    ItalicFont=*-italic,
    BoldItalicFont=*-bolditalic,
    Scale=MatchLowercase,
    Ligatures=CommonOff]
}
\cs_new_protected:Npn \__hkust_load_font:
{ \use:c { __hkust_load_latin_font_ \g__hkust_latin_fontset_tl : } }
\__hkust_load_font:
\setmathfont{XITSMath-Regular}[
  BoldFont = XITSMath-Bold,
  Extension = .otf]
\setmathfont{latinmodern-math.otf}[range={cal,bb,frak}]
\geometry{vmargin = 2.5 cm, hmargin = 2.5 cm}
\fancypagestyle{hkustplain}{
   \fancyhead{}
   \fancyfoot[C]{\thepage}
}
\tl_set:Nn \headrulewidth {0pt}
\tl_set:Nn \footrulewidth {0pt}
\AtBeginDocument{\pagestyle{hkustplain}\flushbottom}
\titleformat
  {\chapter}
  [display]
  {\centering\onehalfspacing\Large\bfseries\selectfont}
  {\MakeUppercase{\chaptertitlename}~\thechapter}
  {10pt}
  {\MakeUppercase{#1}}
\titlespacing{\chapter}{0pt}{20pt}{20pt}
\cftsetpnumwidth{2em}
\renewcommand{\cftchapfont}{\rmfamily\selectfont}
\renewcommand{\cftchappagefont}{\rmfamily\selectfont}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchappresnum}{Chapter~}
\renewcommand{\cftdot}{}
\setlength{\cftsecindent}{6em}
\setlength{\cftsubsecindent}{8em}
\setlength{\cftchapnumwidth}{6em}
\setlength{\cftsecnumwidth}{2em}
\setlength{\cftsubsecnumwidth}{3em}
\g@addto@macro\appendix{%
  \addtocontents{toc}{%
    \protect\renewcommand{\protect\cftchappresnum}{\appendixname\space}%
  }%
}
\tl_new:N \l__hkust_toc_title_text
\tl_set:Nn \l__hkust_toc_title_text {Table~of~Contents}
\renewcommand\tableofcontents{%
  \clearpage
  \raggedbottom
  \chapter*{\MakeUppercase{\l__hkust_toc_title_text}}%
  \addcontentsline{toc}{chapter}{\l__hkust_toc_title_text}
  {\singlespacing\@starttoc{toc}}%
}
\tl_new:N \l__hkust_lof_title_text
\tl_set:Nn \l__hkust_lof_title_text {List~of~Figures}
\renewcommand\listoffigures{%
  \clearpage
  \chapter*{\MakeUppercase{\l__hkust_lof_title_text}}%
  \addcontentsline{toc}{chapter}{\l__hkust_lof_title_text}
  {\singlespacing\@starttoc{lof}}%
}
\tl_new:N \l__hkust_lot_title_text
\tl_set:Nn \l__hkust_lot_title_text {List~of~Tables}
\renewcommand\listoftables{%
  \clearpage
  \begingroup
  \chapter*{\MakeUppercase{\l__hkust_lot_title_text}}%
  \addcontentsline{toc}{chapter}{\l__hkust_lot_title_text}
  \@starttoc{lot}%
}
\NewDocumentEnvironment{preface}{}
{%
  \clearpage
  \chapter*{Preface}
  \addcontentsline{toc}{chapter}{Preface}
}{}
\NewDocumentEnvironment{acknowledgements}{}
{%
  \clearpage
  \chapter*{Acknowledgements}
  \addcontentsline{toc}{chapter}{Acknowledgements}
}{}
\NewDocumentEnvironment{dedication}{}
{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{Dedication}
  \itshape
  \vspace*{\fill}
  \centering
}{\par
  \vspace*{\fill}
  }
%%
\tl_new:N \l__hkust_name_degree_tl
\tl_new:N \l__hkust_abbr_degree_tl
\msg_new:nnn { hkustthesis }{ unknown-degree }
  { Unknown~ degree:~ \l__hkust_info_degree_tl.\\ Please~ check~ spelling.}
\cs_new_protected:Npn \__hkust_print_degree_name:
{
\str_if_eq:NNTF { \l__hkust_info_degree_tl } { phd }
  {
   \tl_set:Nn \l__hkust_name_degree_tl { Doctor~of~Philosophy }
   \tl_set:Nn \l__hkust_abbr_degree_tl { PhD }
  }
  {
    \str_if_eq:NNTF { \l__hkust_info_degree_tl } { mphil }
    {
     \tl_set:Nn \l__hkust_name_degree_tl { Master~of~Philosophy }
     \tl_set:Nn \l__hkust_abbr_degree_tl { MPhil }
    }
    { \msg_error:nn { hkustthesis } { unknown-degree } }
  }
}
\cs_new_protected:Npn \__hkust_print_titlepage:
{
  \cleardoublepage
  \thispagestyle{plain}
  \addcontentsline{toc}{chapter}{Title~Page}
  \begin{center}
    \phantom{[SMAPLE~TITLE~PAGE]}\\[1\baselineskip]
    { \singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
      \\[5\baselineskip]
      by\\[1\baselineskip]
      \l__hkust_info_author_tl\\[5\baselineskip]
    {
      A~Thesis~Submitted~to\\
      The~Hong~Kong~University~of~Science~and~Technology\\
      in~Partial~Fulfilment~of~the~Requirements~for\\
      \__hkust_print_degree_name:
      the~Degree~of~{\l__hkust_name_degree_tl}\\
      in~{\l__hkust_name_of_program_tl}
    }\\[3\baselineskip]
    \l__hkust_submit_month_tl,~\l__hkust_info_city_tl\par%
  \end{center}
  \normalfont
  \clearpage
}
\tl_set:Nn \maketitle {\__hkust_print_titlepage:}
\cs_new_protected:Npn \__hkust_print_abstract:
{
  \clearpage
  \thispagestyle{plain}
  \phantomsection
  \addcontentsline{toc}{chapter}{Abstract}
  {
    \begin{center}
    \phantom{[SAMPLE~ABSTRACT~PAGE]}\\[1\baselineskip]
    { \singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
      \\[1\baselineskip]
      by~\l__hkust_info_author_tl \\[2\baselineskip]
      \l__hkust_info_department_tl \\[1\baselineskip]
      The~Hong~Kong~University~of~Science~and~Technology\\[2\baselineskip]
      Abstract
    \end{center}
  }
  \singlespacing\selectfont
}
\NewDocumentEnvironment{abstract} {}
{ \__hkust_print_abstract: }{ \clearpage }
\cs_new_protected:Npn \__hkust_print_authorization_g:
{
  \thispagestyle{plain}
  \phantomsection
  \addcontentsline{toc}{chapter}{Authorization}
  {
    {
    \begin{center}
    \phantom{[SAMPLE~AUTHORIZATION~PAGE]}\\
    \bfseries\selectfont\underline{Authorization}\\[2\baselineskip]
    \end{center}
    }
    {\setlength{\parindent}{3em}
    I~hereby~declare~that~I~am~the~sole~author~of~the~thesis.\\

    \par I~authorize~the~Hong~Kong~University~of~Science~and~Technology~
    to~lend~this~thesis~to~other~institutions~or~individuals~for~the~
    purpose~of~scholarly~research.\\

    \par I~further~authorize~the~Hong~Kong~University~of~Science~and~
    Technology~to~reproduce~the~thesis~by~photocopying~or~by~other~means,~
    in~total~or~in~part,~at~the~request~of~other~institutions~or~
    individuals~for~the~purpose~of~scholarly~research.
    \\[5\baselineskip]
    }
    {
    \begin{center}
    \makebox[3.5in]{\hrulefill}\\
    \l__hkust_info_author_tl \\[1\baselineskip]
    \l__hkust_submit_date_tl
    \end{center}
    }
 }
}
\NewDocumentCommand\authorization{}
  {\__hkust_print_authorization_g:\clearpage}
\cs_new_protected:Npn \__hkust_print_signaturepage_g:
{
  \thispagestyle{plain}
  \phantomsection
  \addcontentsline{toc}{chapter}{Signature~Page}
  {
   \str_if_empty:NTF \l__hkust_info_co_supervisor_tl
    {
    \begin{center}
      \str_if_eq:NNTF { \g__hkust_disp_committee_tl } { true }
      {
      \phantom{SAMPLE~SIGNATURE~PAGE}\\
      \vspace{-20pt}
      {\singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
       \\[1\baselineskip]
      by \\[1\baselineskip]
      \l__hkust_info_author_tl \\[1\baselineskip]
      This~is~to~certify~that~I~have~examined~the~
      \__hkust_print_degree_name:
      above~{\l__hkust_abbr_degree_tl}~thesis\\
      and~have~found~that~it~is~complete~and~satisfactory~in~all~respects,\\
      and~that~any~and~all~revisions~required~by\\
      the~thesis~examination~committee~have~been~made.\\[3\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_supervisor_tl,~Thesis~Supervisor
       \\[3\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_depthead_tl\\[1\baselineskip]
    \end{center}
      \int_new:N \l__hkust_reviewer_clist_len_int
      \int_new:N \l__hkust_reviewer_index_int
      \int_set:Nn \l__hkust_reviewer_clist_len_int
                  {\clist_count:N \l__hkust_info_reviewer_clist}
      \int_set:Nn \l__hkust_reviewer_index_int {1}
      \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}l}
        Thesis~Examination~Committee & \\
        \int_do_until:nNnn {\l__hkust_reviewer_index_int} >
                           {\l__hkust_reviewer_clist_len_int}
        {
          \int_eval:n \l__hkust_reviewer_index_int .~
          \clist_item:Nn \l__hkust_info_reviewer_clist
                         {\l__hkust_reviewer_index_int} &
          \clist_item:Nn \l__hkust_info_reviewer_dept_clist
                         {\l__hkust_reviewer_index_int} \\
          \int_gincr:N \l__hkust_reviewer_index_int
        }
        \str_if_empty:NTF {\l__hkust_info_reviewer_ext_clist}
        { }
        { \makecell[l]{\int_eval:n {\l__hkust_reviewer_clist_len_int + 1} .~
                       \clist_item:Nn \l__hkust_info_reviewer_ext_clist { 1 }
                       \\ \phantom{placeholder}} &
          \makecell[l]{\clist_item:Nn \l__hkust_info_reviewer_ext_clist { 2 }} }
      \end{tabular*}
    }
    {
      \phantom{SAMPLE~SIGNATURE~PAGE}\\[1\baselineskip]
      {\singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
        \\[4\baselineskip]
      by \\[1\baselineskip]
      \l__hkust_info_author_tl \\[2\baselineskip]
      This~is~to~certify~that~I~have~examined~the~
      \__hkust_print_degree_name:
      above~{\l__hkust_abbr_degree_tl}~thesis\\
      and~have~found~that~it~is~complete~and~satisfactory~in~all~respects,\\
      and~that~any~and~all~revisions~required~by\\
      the~thesis~examination~committee~have~been~made.\\[4\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_supervisor_tl,~Thesis~Supervisor
       \\[3\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_depthead_tl\\[1\baselineskip]
    \end{center}
    }
    \begin{center}
    \l__hkust_info_department_tl \\
    \l__hkust_submit_date_tl
    \end{center}
    }
    {
    \begin{center}
      \str_if_eq:NNTF { \g__hkust_disp_committee_tl } { true }
      {
      {\singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
        \\[1\baselineskip]
      by \\[1\baselineskip]
      \l__hkust_info_author_tl \\[1\baselineskip]
      This~is~to~certify~that~I~have~examined~the~
      \__hkust_print_degree_name:
      above~{\l__hkust_abbr_degree_tl}~thesis\\
      and~have~found~that~it~is~complete~and~satisfactory~in~all~respects,\\
      and~that~any~and~all~revisions~required~by\\
      the~thesis~examination~committee~have~been~made.\\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_supervisor_tl,~Thesis~Supervisor
       \\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_co_supervisor_tl,~Thesis~Co-supervisor
       \\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_depthead_tl\\[0\baselineskip]
    \end{center}
      \int_new:N \l__hkust_reviewer_clist_len_int
      \int_new:N \l__hkust_reviewer_index_int
      \int_set:Nn \l__hkust_reviewer_clist_len_int
                  {\clist_count:N \l__hkust_info_reviewer_clist}
      \int_set:Nn \l__hkust_reviewer_index_int {1}
      \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}l}
        Thesis~Examination~Committee & \\
        \int_do_until:nNnn {\l__hkust_reviewer_index_int} >
                           {\l__hkust_reviewer_clist_len_int}
        {
          \int_eval:n \l__hkust_reviewer_index_int .~
          \clist_item:Nn \l__hkust_info_reviewer_clist
                         {\l__hkust_reviewer_index_int} &
          \clist_item:Nn \l__hkust_info_reviewer_dept_clist
                         {\l__hkust_reviewer_index_int} \\
          \int_gincr:N \l__hkust_reviewer_index_int
        }
        \str_if_empty:NTF {\l__hkust_info_reviewer_ext_clist}
        { }
        { \makecell[l]{\int_eval:n {\l__hkust_reviewer_clist_len_int + 1} .~
                       \clist_item:Nn \l__hkust_info_reviewer_ext_clist { 1 }
                       \\ \phantom{placeholder}} &
          \makecell[l]{\clist_item:Nn \l__hkust_info_reviewer_ext_clist { 2 }} }
      \end{tabular*}
    }
    {
      \phantom{SMAPLE~SIGNATURE~PAGE}\\[1\baselineskip]
      {\singlespacing\Large\bfseries\selectfont\l__hkust_info_title_tl}
        \\[4\baselineskip]
      by \\[1\baselineskip]
      \l__hkust_info_author_tl \\[2\baselineskip]
      This~is~to~certify~that~I~have~examined~the~
      \__hkust_print_degree_name:
      above~{\l__hkust_abbr_degree_tl}~thesis\\
      and~have~found~that~it~is~complete~and~satisfactory~in~all~respects,\\
      and~that~any~and~all~revisions~required~by\\
      the~thesis~examination~committee~have~been~made.\\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_supervisor_tl,~Thesis~Supervisor
       \\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_co_supervisor_tl,~Thesis~Co-supervisor
       \\[2\baselineskip]
      \makebox[3.5in]{\hrulefill}\\
      \l__hkust_info_depthead_tl\\[1\baselineskip]
    \end{center}
    }
    \begin{center}
    \l__hkust_info_department_tl \\
    \l__hkust_submit_date_tl
    \end{center}
    }

  }
}
\NewDocumentCommand\signaturepage{}
  {\__hkust_print_signaturepage_g:\clearpage}
\RequirePackage[
    style=\g__hkust_bib_style_tl,
    %style=numeric-comp,
    %citestyle=authortitle-icomp,
    citestyle=numeric-comp,
    %bibstyle=authoryear,
    %bibstyle=numeric,
    dashed=false,
    sorting=none,
    %sorting=nyt,
    %sortcites=true,
    %autocite=footnote,
    backend=biber, % Compile the bibliography with biber
    hyperref=true,
    backref=true,
    citecounter=true,
    pagetracker=true,
    citetracker=true,
    ibidtracker=context,
    autopunct=true,
    autocite=plain,
    % gbpub=false,         % Uncomment if you do NOT want '[S.l. : s.n.]'
                           % in reference entries, GitHub Issue (#47)
    % gbnamefmt=lowercase, % Uncomment if you do NOT want uppercase author
                           % names in reference entries, GitHub Issue (#23)
]{biblatex}
\AtEveryBibitem{
    \clearfield{abstract}
    \clearfield{issn}
    \clearfield{isbn}
    \clearfield{archivePrefix}
    \clearfield{arxivId}
    \clearfield{pmid}
    \clearfield{eprint}
    \ifentrytype{online}{}{\ifentrytype{misc}{}{\clearfield{url}}}
    % \ifentrytype{book}{\clearfield{doi}}{}
}
\NewDocumentCommand\paperlist { o m }
{
  \begin{refsection}
    \nocite{#2}
    \printbibliography[heading=subbibliography,title=#1]
  \end{refsection}
}
\crefdefaultlabelformat{(#2#1#3)}
\crefname{figure}{Figure}{Figures}
\crefname{table}{Table}{Tables}
\crefname{equation}{Equation}{Equations}
\crefformat{chapter}{Chapter~#2#1#3}
\crefformat{section}{Section~#2#1#3}
\crefformat{subsection}{Subsection~#2#1#3}
\crefformat{subsubsection}{Subsubsection~#2#1#3}
\crefname{appendix}{Appendix}{Appendices}
\crefname{definition}{Definition}{Definitions}
\crefname{axiom}{axiom}{Axioms}
\crefname{property}{Property}{Properties}
\crefname{proposition}{Proposition}{Propositions}
\crefname{lemma}{Lemma}{Lemmas}
\crefname{corollary}{Corollary}{Corollaries}
\crefname{remark}{Remark}{Remarks}
\crefname{condition}{Condition}{Conditions}
\crefname{conclusion}{Conclusion}{Conclusions}
\crefname{assumption}{Assumption}{Assumptions}
% \cs_new_protected:Npx \__hkust_gadd_ltxhook:nn #1
%   { \hook_gput_code:nnn {#1} { \c_novalue_tl } }
% \cs_new_protected:Npn \__hkust_at_end_preamble:n
%   { \__hkust_gadd_ltxhook:nn { begindocument/before } }
% \__hkust_at_end_preamble:n
% {
%   \NewDocumentCommand \mathbi {m} {\symbfit{#1}}
%   \ProvideDocumentCommand \bm {m} {\mathbi{#1}}
%   \RenewDocumentCommand \bm {m} {\mathbi{#1}}
%   \hypersetup
%     {
%       pdftitle    = \l__hkust_info_title_tl,
%       pdfauthor   = \l__hkust_info_author_tl,
%       pdfcreator  = \c__hkust_name_pdf_creator_tl,
%       pdfsubject  = to~her
%     }
% }
\floatsetup[figure]{ % 图名在图下
    capposition=bottom,%
    margins=centering,%
    floatwidth=\textwidth%
}
\floatsetup[table]{ % 表名在表上
    capposition=above,%
    margins=centering,%
    floatwidth=\textwidth%
}
\DeclareCaptionFont{capfont}{
  \rmfamily\selectfont
}
\captionsetup{
  font=normal,%
  labelfont=capfont,
    textfont=capfont,
    strut=no,%
    hypcap=true, % Links point to the top of the figure
    % indention=0pt, % Suppress indentation
    % % parindent=0pt, % Suppress space between paragraphs
    aboveskip=6pt, % Increase the space between the figure and the caption
    belowskip=6pt, % Increase the space between the caption and the table
}
\floatsetup[lstlisting]{ % Captions for lstlistings
    capposition=above,%
    margins=centering,%
    floatwidth=\textwidth%
}
\lstset{
    basicstyle=\ttfamily\linespread{1}\small\selectfont,
    keywordstyle=\bfseries,% use bold style for keywords
    commentstyle=\rmfamily\itshape,% use italic style for comments
    stringstyle=\ttfamily,
    flexiblecolumns,% ?
    numbers=left,% left-aligned numbering
    showspaces=false,% hide markers for spaces
    showstringspaces=false,
    % captionpos=t,% place the caption at the top ??repeated??
    frame=tb,% show top & bottom sides of the frame
    % linewidth=.8\textwidth,
    % breakatwhitespace=true,
    breaklines=true,
    xleftmargin=1em,xrightmargin=1em,% set the width of the code environment
}
\renewcommand{\labelitemi}{\large\textbullet}
\renewcommand{\labelitemii}{\normalsize\textbullet}
\renewcommand{\labelenumi}{\arabic{enumi}.}
\renewcommand{\labelenumii}{\alph{enumii}.}
\setlist[itemize]{noitemsep}
\setlist[enumerate]{noitemsep}
\setlist[description]{noitemsep}
\declaretheoremstyle[
  %spaceabove=.5\thm@preskip,
  %spacebelow=.5\thm@postskip,
  headfont=\bfseries\rmfamily\selectfont,% \scshape,
  notefont=\rmfamily\selectfont,% notebraces={ (}{)},
  bodyfont=\rmfamily\selectfont,
  %headformat={\NAME\space\NUMBER\space\NOTE},
  headpunct={},
  %postheadspace={.5em plus .1em minus .1em},
  %prefoothook={\hfill\qedsymbol}
]{hkustthm}

\theoremstyle{hkustthm}
\let\oldproofname=\proofname
\renewcommand*{\proofname}
  {\rmfamily\selectfont{\oldproofname}}
\declaretheorem[
    name=Algorithm,
    style=hkustthm,
    refname={algorithm,algorithms},
    Refname={Algorithm,Algorithms},
    % numberwithin=section,
]{algorithm}
\declaretheorem[
    name=Assumption,
    style=hkustthm,
    refname={assumption,assumptions},
    Refname={Assumption,Assumptions},
    % numberwithin=section,
]{assumption}
\declaretheorem[
    name=Axiom,
    style=hkustthm,
    refname={axiom,axioms},
    Refname={Axiom,Axioms},
    % numberwithin=section,
]{axiom}
\declaretheorem[
    name=Conclusion,
    style=hkustthm,
    refname={conclusion,conclusions},
    Refname={Conclusion,Conclusions},
    % numberwithin=section,
]{conclusion}
\declaretheorem[
    name=Condition,
    style=hkustthm,
    refname={condition,conditions},
    Refname={Condition,Conditions},
    % numberwithin=section,
]{condition}
\declaretheorem[
    name=Corollary,
    style=hkustthm,
    refname={corollary,corollaries},
    Refname={Corollary,Corollaries},
    % numberwithin=section,
]{corollary}
\declaretheorem[
    name=Definition,
    style=hkustthm,
    refname={definition,definitions},
    Refname={Definition,Definitions},
    % numberwithin=section,
]{definition}
\declaretheorem[
        name=Example,
        style=hkustthm,
        refname={example,examples},
        Refname={Example,Examples},
        % numberwithin=section,
]{example}
\declaretheorem[
    name=Lemma,
    style=hkustthm,
    refname={lemma,lemmas},
    Refname={Lemma,Lemmas},
    % numberwithin=section,
]{lemma}
\declaretheorem[
    name=Property,
    style=hkustthm,
    refname={property,properties},
    Refname={Property,Properties},
    % numberwithin=section,
]{property}
\declaretheorem[
    name=Proposition,
    style=hkustthm,
    refname={proposition,propositions},
    Refname={Proposition,Propositions},
    % numberwithin=section,
]{proposition}
\declaretheorem[
    name=Remark,
    style=hkustthm,
    refname={remark,remarks},
    Refname={Remark,Remarks},
    % numberwithin=section,
]{remark}
\declaretheorem[
    name=Theorem,
    style=hkustthm,
    refname={theorem,theorems},
    Refname={Theorem,Theorems},
    numberwithin=section,
]{theorem}
%%
%% \end{implementation}
\endinput
%%
%% End of file `hkustthesis.cls'.
