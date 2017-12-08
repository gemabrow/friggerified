\ProvidesClass{friggeri-coverletter}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%%%%%%%%%
% Fonts %
%%%%%%%%%
\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
%
% if using fonts in ./fonts subdirectory, use "Paths" arg
% e.g.: \newfontfamily\bodyfont[Path=./fonts/]{Helvetica Neue}
%
% if font is otherwise installed system-wide, omit "Paths" arg
\newfontfamily\bodyfont[]{Helvetica Neue}
%
% Helvetica Neue Light
\newfontfamily\addressfont[UprightFont={* Light}]{Helvetica Neue}
%
% Helvetica Neue Light
\newfontfamily\thinfont[UprightFont={* Light}]{Helvetica Neue}
%
% Helvetica Neue Bold Condensed
\newfontfamily\headingfont[UprightFont={* Condensed Bold}]{Helvetica Neue}
\defaultfontfeatures{Mapping=tex-text}
%
% Helvetica Neue Light
\setmainfont[Mapping=tex-text, Color=textcolor, UprightFont={* Light}]{Helvetica Neue}

\setmathfont
[    Extension = .otf,
      BoldFont = *bold,
]{xits-math}
\setlength\parindent{0pt}

%%%%%%%%%%
% Header %
%%%%%%%%%%
\def\@myfirst{ }
\def\@mylast{ }
\def\@addr{ }
\def\@cityst{ }

\newcommand{\personalinfo}[4]{%
  \def\@myfirst{#1}%
  \def\@mylast{#2}%
  \def\@addr{#3}%
  \def\@cityst{#4}%
}


\newcommand{\contact}[4]{%
  \def\@salutation{#1}%
  \def\@first{#2}%
  \def\@last{#3}%
  \def\@title{#4}%
}


\def\@address{ }
\newcommand{\address}[3]{%
  \def\@address{%
  {#1}\\%
  {#2}\\%
  {#3}%
  }
}

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{white}%
}

\newcommand{\letterheader}{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{36pt}{48pt}\color{header}%
      {\thinfont \MakeLowercase{\@myfirst}}{\bodyfont \MakeLowercase{\@mylast}}
    };
    \node [anchor=north] (street) at (name.south) {%
      \fontsize{14pt}{0pt}\color{header}%
      \thinfont \@addr%
    };
    \node [anchor=north] (city) at (street.south) {%
      \fontsize{12pt}{12pt}\color{header}%
      \thinfont \@cityst%
    };
  \end{tikzpicture}
  \vspace{3cm}
  \vspace{-2\parskip}\\
  \today\vspace{3em}\\
  %%%%%%%%%%%%%
  %  Address  %
  %%%%%%%%%%%%%
  \begingroup%
  %\@ifundefined{\@salutation}{}{\@salutation~\@first\ \@last,\ \@title}%
  \@address%
  \vspace{3em}%
  
  \@ifundefined{\@last}{To Whom It May Concern:}{Dear \@salutation~\@last,}%
  \endgroup
  \vspace{1.5em}
}

%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\usepackage{setspace}
\newenvironment*{bp}{\begin{singlespace}}{\end{singlespace}\vspace{1.5em}}
\pagestyle{empty}

\newcommand*{\closing}[1][Sincerely]{
{#1},%

\vspace{3em}
\@myfirst\ \@mylast
}
%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{%
  #1&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\%
    #4\vspace{\parsep}%
  }\\}
  
%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

\RequirePackage[left=2.54cm,top=2cm,right=2.54cm,bottom=2.54cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
