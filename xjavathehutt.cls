\ProvidesClass{xjavathehutt}[2020/03/08 v1.0.0 class]
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
    linkcolor={red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

% Use nag to warn about obsolete commands/packages
\RequirePackage[l2tabu, orthodox]{nag}

%------------CONSTANTS---------
\def\afterheaderspace{5pt}
\def\beforesectionheaderhrulespace{5pt}
\def\sectionheaderhruleheight{0.5pt}
\def\aftersectionspace{-2pt}
\def\beforesubsectionspace{-1pt}
\def\aftersubsectionspace{-5pt}

%------------HEADER------------
% Name
\makeatletter
\newcommand\name[1]{\def\@name{#1}}
\newcommand\printname{
  \typeout \spaceskip
  \textbf{\LARGE\textls[10]{\@name}}
}

% Address
\makeatletter
\newcommand\address[1]{\def\@address{#1}}
\newcommand\printaddress{
  \typeout \spaceskip
  \@address
}

% Email
\newcommand\email[1]{\def\@email{#1}}
\newcommand\printemail{
  \typeout \spaceskip
  \href{mailto:\@email}{\@email}
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
  \href{https://\@linkedin}{\@linkedin}
}

% Github
\newcommand\github[1]{\def\@github{#1}}
\newcommand\printgithub{
  \typeout \spaceskip
  \href{https://\@github}{\@github}
}

% Print email and number
\newcommand\printcontacts{
  \typeout \spaceskip
  \printemail
  \linebreak
  \printnumber
}

% Print links
\newcommand\printlinks{
  \typeout \spaceskip
  \printlinkedin
  \printgithub
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
      \printnumber & \printaddress & \printgithub
		\end{tabularx}

    \vspace*{\afterheaderspace}
	\end{center}
}

%------------SECTION------------
% Print a section header
\makeatletter
\newenvironment{cvsection}[1]{
	\textsc{\textbf{#1}}
	\vspace*{\beforesectionheaderhrulespace}
	\hrule height \sectionheaderhruleheight

  \vspace*{\aftersectionspace}
}{}
\makeatother

% Print a subsection
\makeatletter
\newenvironment{cvsubsection}[5][1]{
  \vspace*{\beforesubsectionspace}

  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#2} & #4 \\
    \textit{#3} & #5
	\end{tabularx}

  \vspace*{\aftersubsectionspace}
}
\makeatother

% Print a project
\makeatletter
\newenvironment{cvproject}[2][1]{
  \vspace*{\beforesubsectionspace}

  \begin{tabularx}{1\textwidth}{X}
		\textbf{#2}
	\end{tabularx}

  \vspace*{\aftersubsectionspace}
}
\makeatother

%-------------LINKS------------
% Skills
\newcommand\skills[1]{\def\@skills{#1}}
\newcommand\environments[1]{\def\@environments{#1}}
\newcommand\methodologies[1]{\def\@methodologies{#1}}
\newcommand\printskills{
  \begin{itemize}
    \item{Languages: \small{\@skills}}
    \item{Environments: \small{\@environments}}
    \item{Methodologies: \small{\@methodologies}}
  \end{itemize}
}

%---------EDUCATION------------
% Print an education degree
\newcommand\printeducation[4]{
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #2 \\
    \textit{#3} & #4
	\end{tabularx}
}
