%load base class
\LoadClass{article}

\usepackage{amsmath}
\usepackage{amsfonts}

%set margins
\usepackage[margin=0.4in]{geometry}
\usepackage{multicol}
\usepackage{scrextend}
\usepackage{lipsum}% for demo only!

%set fonts
\usepackage{fontspec}
\setmainfont{Ubuntu}
\usepackage{xcolor}
\usepackage{fontawesome}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage[nodisplayskipstretch]{setspace}
%\renewcommand{\baselinestretch}{1.2}

%set colors
\definecolor{lavender}{rgb}{0.42, 0.42, 0.875}
\definecolor{blue}{rgb}{0.027, 0.384, 0.651}

%center with no extra spacing
\newenvironment{tightcenter}{
  \setlength\topsep{0pt}
  \setlength\parskip{0pt}
  \begin{center}
}{
  \end{center}
}

%section spacing
\makeatletter
\let\origsection\section
\renewcommand\section{\@ifstar{\starsection}{\nostarsection}}

\newcommand\nostarsection[1]
{\sectionprelude\origsection{#1}\sectionpostlude}

\newcommand\starsection[1]
{\sectionprelude\origsection*{#1}\sectionpostlude}

\newcommand\sectionprelude{%
  \vspace{10pt}
}

\newcommand\sectionpostlude{%
  \vspace{-5pt}
}
\makeatother

%remove pagenum from bottom
\pagenumbering{gobble}

%remove spacing from lists
\usepackage{enumitem}
\setlist[itemize]{noitemsep, topsep=0pt}

%allow for links
\usepackage[hidelinks]{hyperref}

%allow for images
\usepackage{graphicx}
