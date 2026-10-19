%%----------------------------------------------
%%LAB REPORT CLASS AND TEMPLATE
%%
%%Written by Rei Khan (mkc557@york.ac.uk)
%%Last updated 29/09/2026
%%
%%This is intended for use as a template for lab reports at the University of York's School of PET
%%
%%For help with LaTeX see https://www.overleaf.com/learn
%%----------------------------------------------

%This is a class - it makes the report look the way it does and is not particularly intended to be edited! See https://www.overleaf.com/learn/latex/Understanding_packages_and_class_files for more information about classes.

%Defining the class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labreport}[2026/09/28 Lab Report Class]
\LoadClass[12pt]{report}

%Select packages
\RequirePackage{lmodern}
\RequirePackage[%
  a4paper,
  vmargin={26mm,26mm},
  hmargin={24mm,24mm},
  %headsep=12pt,
  %footskip=12pt,
]{geometry}
\RequirePackage{colortbl}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage[colorlinks=true, linkcolor=black]{hyperref}
\RequirePackage[style=ieee]{biblatex}

%Correct title page
\renewcommand{\maketitle}{%
    \pagestyle{empty}
    \setlength{\arrayrulewidth}{2pt}
    \begin{table}
    \vspace{5cm}
    \centering
    \arrayrulecolor[HTML]{15597D}
    \begin{tabular}{|p{12cm}}
    \\
    \fontsize{14}{14}\selectfont\sffamily
    \noindent School of Physics and Engineering Technology, University of York
    \\\\
    \fontsize{60}{20}\selectfont\sffamily
    \@title
    \\\\
    \fontsize{14}{14}\selectfont\sffamily
    \@author
    \\\\
    \end{tabular}
    \end{table}
    \vspace*{0mm}
    \normalsize\sffamily
    \setlength{\arrayrulewidth}{0.4pt}
    \clearpage
    \pagestyle{plain}%
    }

%Correct section headers
\renewcommand{\section}[1][]{%
    \ifstrequal{#1}{skipnum}{\setcounter{secnumdepth}{-1}}{\setcounter{secnumdepth}{0}\stepcounter{chapter}}
    \@startsection
    {section}{0}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\LARGE\sffamily}%
}
%Correct section numbering
\renewcommand{\thesection}{\arabic{chapter}.}
%Rename Table of Contents
\renewcommand\contentsname{\normalfont\section[skipnum]{Table of Contents}}
%Start page numbers after title page
\setcounter{page}{0}
%Import bibliography file
\addbibresource{bib.bib}

