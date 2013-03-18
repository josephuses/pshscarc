\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pshscarc}[2012/08/22 v0.1e]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\RequirePackage{graphicx}
% Use tikz for flow charts
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric,positioning,arrows,fit}
%% maxwidth is the original width if it is less than linewidth
%% otherwise use linewidth (to make sure the graphics do not exceed the margin)
\makeatletter
\def\maxwidth{ %
  \ifdim\Gin@nat@width>\linewidth
    \linewidth
  \else
    \Gin@nat@width
  \fi
}
\makeatother

% Adjust the margins
\RequirePackage[left=1.5in,right=1in,top=1in,bottom=1in]{geometry}
%\RequirePackage{Sweavel}
% Indent every first line of every first paragraph
\RequirePackage{indentfirst}
% Make the document double-spaced
\RequirePackage{setspace}
\doublespacing
% Use font protrusion capabilities
\RequirePackage{microtype}

% Engine-specific settings
% Detect pdftex/xetex/luatex, and load appropriate font packages.
% This is inspired by the approach in the iftex package.
% pdftex:
\expandafter\ifx\csname pdfmatch\endcsname\relax
\else
    \RequirePackage[T1]{fontenc}
    \RequirePackage[utf8]{inputenc}
    \RequirePackage{mathpazo}
    \RequirePackage{inconsolata}
\fi
% xetex:
\expandafter\ifx\csname XeTeXinterchartoks\endcsname\relax
\else
    \RequirePackage{fontspec}
    \defaultfontfeatures{Ligatures=TeX}
\fi
% luatex:
\expandafter\ifx\csname directlua\endcsname\relax
\else
    \RequirePackage{fontspec}
\fi
% End engine-specific settings

% Use siunitx commands for literate measure coding
\RequirePackage{siunitx}

% Force the  use of unvertically-ruled tables
% and enable the use of three-part tables
\RequirePackage{booktabs}
\RequirePackage{threeparttable}

% Force figures to be placed in the same section/sub-section
\RequirePackage{placeins}

% Make the chapter centered, bold, and capitalized
\RequirePackage{titlesec}
\titleformat{\chapter}[display]
{\normalfont\bfseries\centering}{\chaptertitlename\ \thechapter}{0pt}{\normalfont\bfseries\uppercase}

\titlespacing{\chapter}{0pt}{-\baselineskip}{0.5\baselineskip}

\titleformat{\section}{\normalfont\bfseries\uppercase}{\thesection}{0em}{}
\titleformat{\subsection}{\normalfont\bfseries}{\thesection}{0em}{}

% Make the bibliography title aligned center, uppercase, and bold.
\RequirePackage{etoolbox}
\patchcmd{\thebibliography}{\chapter*{\bibname}}{\chapter*{\MakeUppercase{\bibname}}}{}{}

\RequirePackage{titling}

\renewcommand{\chaptername}{CHAPTER}
\renewcommand{\contentsname}{TABLE OF CONTENTS}
\renewcommand{\listtablename}{LIST OF TABLES}
\renewcommand{\listfigurename}{LIST OF FIGURES}

% Defining \Section and \Subsection commands to make inclusion in toc automatic for starred 
% section and subsection variants
\newcommand{\Section}[1]{\addcontentsline{toc}{section}{#1}
\section*{#1}}
\newcommand{\Subsection}[1]{\addcontentsline{toc}{subsection}{#1}
\section*{#1}}

\endinput