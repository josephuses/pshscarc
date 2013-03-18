\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pshscarc}[2012/08/22 v0.1e]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\newif\if@firstnamea    \@firstnameafalse
\newif\if@firstnameb    \@firstnamebfalse
\newif\if@firstnamec    \@firstnamecfalse
\newif\if@surnamea  \@surnameafalse
\newif\if@surnameb  \@surnamebfalse
\newif\if@surnamec  \@surnamecfalse
\newif\if@midinitiala    \@midinitialafalse
\newif\if@midinitialb    \@midinitialbfalse
\newif\if@midinitialc    \@midinitialcfalse
\newif\if@surnamed  \@surnamedfalse
\newif\if@surnamee  \@surnameefalse
\newif\if@surnamef  \@surnameffalse
\newif\if@firstnamed    \@firstnamedfalse
\newif\if@firstnamee    \@firstnameefalse
\newif\if@firstnamef    \@firstnameffalse
\newif\if@midinitiald    \@midinitialdfalse
\newif\if@midinitiale    \@midinitialefalse
\newif\if@midinitialf    \@midinitialffalse

\def\surnamea#1{\gdef\@surnamea{#1}\@surnameatrue}
\def\firstnamea#1{\gdef\@firstnamea{#1}\@firstnameatrue}
\def\midinitiala#1{\gdef\@midinitiala{#1}\@midinitialatrue}
\def\surnameb#1{\gdef\@surnameb{#1}\@surnamebtrue}
\def\firstnameb#1{\gdef\@firstnameb{#1}\@firstnamebtrue}
\def\midinitialb#1{\gdef\@midinitialb{#1}\@midinitialbtrue}
\def\surnamec#1{\gdef\@surnamec{#1}\@surnamectrue}
\def\firstnamec#1{\gdef\@firstnamec{#1}\@firstnamectrue}
\def\midinitialc#1{\gdef\@midinitialc{#1}\@midinitialctrue}
\def\surnamed#1{\gdef\@surnamed{#1}\@surnamedtrue}
\def\firstnamed#1{\gdef\@firstnamed{#1}\@firstnamedtrue}
\def\midinitiald#1{\gdef\@midinitiald{#1}\@midinitialdtrue}
\def\surnamee#1{\gdef\@surnamee{#1}\@surnameetrue}
\def\firstnamee#1{\gdef\@firstnamee{#1}\@firstnameetrue}
\def\midinitiale#1{\gdef\@midinitiale{#1}\@midinitialetrue}
\def\surnamef#1{\gdef\@surnamef{#1}\@surnameftrue}
\def\firstnamef#1{\gdef\@firstnamef{#1}\@firstnameftrue}
\def\midinitialf#1{\gdef\@midinitialf{#1}\@midinitialftrue}
\def\defenseDate#1{\gdef\@defensedate{#1}}

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





\endinput