\ProvidesClass{xjavathehutt}[2020/09/22 v3.0.0 class]
\ProcessOptions\relax

% Set font, font size and paper type
\LoadClass[letterpaper,11pt]{article}
\usepackage{microtype}
\usepackage{fontspec}
\usepackage[scaled]{helvet}
\usepackage[T1]{fontenc}
\renewcommand{\familydefault}{\sfdefault}

% Set document margins
\usepackage[left=0.5in,top=0.5in,right=0.5in,bottom=0.5in]{geometry}

% Language support
\usepackage[english]{babel}

% Remove paragraph indentation
\usepackage[parfill]{parskip}

% Required for boldface (\bf and \bfseries) tabular columns
\usepackage{array}

% Suppress page numbers
\pagestyle{empty}

% Flexible tables
\usepackage{float,tabularx}
\newcolumntype{Y}{>{\raggedleft\arraybackslash}X}
\newcolumntype{Z}{>{\centering\arraybackslash}X}
% Remove space from tables
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% To customize lists
\usepackage{enumitem}
% Remove left margin from lists, suppress vertical item separation and set top
% separation to a negative value to suppress a single parskip before lists
\setlist{leftmargin=*, noitemsep, topsep=0\parskip}

% Links and colors
\usepackage{hyperref}
\usepackage{xcolor}
\hypersetup{
    colorlinks,
    linkcolor=blue,
    urlcolor=blue
}

% Use nag to warn about obsolete commands/packages
\RequirePackage[l2tabu, orthodox]{nag}

% Remove default spacing
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}

%Underlining ruler for sections
\usepackage{titlesec}
\usepackage{sectsty}
\titleformat{\section}
{\bfseries\uppercase}
{}
{0em}
{}[\titlerule \vspace{5pt}]
\titlespacing\section{0pt}{10pt plus 4pt minus 2pt}{0pt plus 0pt minus 0pt}

%------------CONSTANTS---------
\def\beforesectionspace{10pt}
\def\aftersectionspace{5pt}
\def\beforesubsectionprojectspace{6pt}
\def\aftersubsectionprojectspace{1pt}
\def\beforesectionheaderhrulespace{5pt}
\def\sectionheaderhruleheight{0.5pt}
\def\beforecvsubsectionnocompanyspace{1pt}

%------------HEADER------------
% Name
\makeatletter
\newcommand\name[1]{\def\@name{#1}}
\newcommand\printname{
  \typeout \spaceskip
  \textbf{\Huge{\@name}}
}

% Email
\newcommand\email[1]{\def\@email{#1}}
\newcommand\printemail{
  \typeout \spaceskip
  \url{\@email}
}

% Phone number
\newcommand\phonenumber[1]{\def\@phonenumber{#1}}
\newcommand\printnumber{
  \typeout \spaceskip
  \@phonenumber
}

% LinkedIn
\newcommand\linkedin[1]{\def\@linkedin{#1}}
\newcommand\printlinkedin{
  \typeout \spaceskip
  \url{\@linkedin}
}

% Github
\newcommand\github[1]{\def\@github{#1}}
\newcommand\printgithub{
  \typeout \spaceskip
  \url{\@github}
}

% Portfolio
\makeatletter
\newcommand\portfolio[1]{\def\@portfolio{#1}}
\newcommand\printportfolio{
  \typeout \spaceskip
  \url{\@portfolio}
}

% Print header
\makeatletter
\newcommand\makeheader{
	\begin{center}
    \begin{tabularx}{1\textwidth}{
      >{\hsize=0.6\hsize}X
      >{\hsize=0.8\hsize}Z
      >{\hsize=0.6\hsize}Y}
      \printemail & \printname & \printlinkedin \\
      \printnumber & \printportfolio & \printgithub
		\end{tabularx}
	\end{center}
}

%------------SECTION------------
% Print a section header
\makeatletter
\newenvironment{cvsection}[1]{
  	\vspace*{\beforesectionspace}

	\textsc{\textbf{\Large #1}}
	\vspace*{\beforesectionheaderhrulespace}
	\hrule height \sectionheaderhruleheight

  \vspace*{\aftersectionspace}
}
\makeatother

% Subsection with two positions (promotion)
\newcommand*{\cvsubsectiontwopositions}[7]{%
 \textbf{#1}

 \vspace*{\beforecvsubsectionnocompanyspace}
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#2} & #3
	\end{tabularx}

  #4

  \vspace*{\beforecvsubsectionnocompanyspace}
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#5} & #6
	\end{tabularx}

  #7
}

% Subsection but no beginning large space
\makeatletter
\newenvironment{cvsubsectionstart}[3]{
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #2 \\
     & #3
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Education
\makeatletter
\newenvironment{cveducation}[4]{
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #3 \\
    #2 & #4
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Project but no beginning large space
\makeatletter
\newenvironment{cvprojectstart}[1]{
	\textbf{#1}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Print a subsection
\makeatletter
\newenvironment{cvsubsection}[3]{
  \vspace*{\beforesubsectionprojectspace}

  \begin{tabularx}{1\textwidth}{X Z Y}
		\textbf{#1} & #2 & #3
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Print a project
\makeatletter
\newenvironment{cvproject}[1]{
  \vspace*{\beforesubsectionprojectspace}

	\textbf{#1}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

%-------------LINKS------------
% Skills
\newcommand\skills[1]{\def\@skills{#1}}
\newcommand\environments[1]{\def\@environments{#1}}
\newcommand\printskills{
  \begin{itemize}
    \item{Languages: \small{\@skills}}
    \item{Environments: \small{\@environments}}
  \end{itemize}
}
