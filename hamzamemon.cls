\ProvidesClass{hamzamemon}[2020/09/22 v3.0.0 class]
\ProcessOptions\relax

% Set font, font size and paper type
\LoadClass[letterpaper,10pt]{article}
\usepackage{microtype}
\usepackage{fontspec}
% Set Noto Sans - modern, professional, clean (similar to Roboto)
\setmainfont{Noto Sans}
\setsansfont{Noto Sans}
\setmonofont{Noto Sans Mono}
\renewcommand{\familydefault}{\sfdefault}

% Set document margins (optimized for 1-page resume)
\usepackage[left=0.5in,top=0.5in,right=0.5in,bottom=0.5in]{geometry}

% Language support
\usepackage[english]{babel}

% Remove paragraph indentation
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}

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
\usepackage{xcolor}
\definecolor{linkblue}{RGB}{0,0,136}
\definecolor{sectionblue}{RGB}{0,85,165}
\definecolor{accentblue}{RGB}{0,100,150}
\usepackage{hyperref}
% Configure hyperref
\hypersetup{
    colorlinks=true,
    linkcolor=linkblue,
    urlcolor=linkblue
}
\hypersetup{
    colorlinks,
    linkcolor=linkblue,
    urlcolor=linkblue,
    pdftitle={Hamza Memon - Software Developer},
    pdfauthor={Hamza Memon},
    pdfsubject={Resume},
    pdfkeywords={Java, Python, Angular, React, Spring Boot}
}

% Remove default spacing
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}
\setlength{\itemsep}{2pt}
\setlength{\parskip}{1em plus 0.5em}

% Underlining ruler for sections
\usepackage{titlesec}
\titleformat{\section}
{\bfseries\uppercase\color{accentblue}}
{}
{0em}
{}[\titlerule \vspace{5pt}]
\titlespacing\section{0pt}{10pt plus 4pt minus 2pt}{0pt plus 0pt minus 0pt}

%------------CONSTANTS---------
\def\beforesectionspace{5pt}
\def\aftersectionspace{2pt}
\def\beforesubsectionprojectspace{3pt}
\def\aftersubsectionprojectspace{0pt}
\def\beforesectionheaderhrulespace{3pt}
\def\sectionheaderhruleheight{0.5pt}
\def\beforecvsubsectionnocompanyspace{0pt}

%------------HEADER------------
% Name
\makeatletter
\NewDocumentCommand\name{m}{
  \def\@name{#1}
}
\NewDocumentCommand\printname{}{
  \typeout \spaceskip
  \textbf{\Huge{\@name}}
}

% Email
\NewDocumentCommand\email{m}{
  \def\@email{#1}
}
\NewDocumentCommand\printemail{}{
  \typeout \spaceskip
  \url{\@email}
}

% Phone number
\NewDocumentCommand\phonenumber{m}{
  \def\@phonenumber{#1}
}
\NewDocumentCommand\printnumber{}{
  \typeout \spaceskip
  \@phonenumber
}

% LinkedIn
\NewDocumentCommand\linkedin{m}{
  \def\@linkedin{#1}
}
\NewDocumentCommand\printlinkedin{}{
  \typeout \spaceskip
  \url{\@linkedin}
}

% Github
\NewDocumentCommand\github{m}{
  \def\@github{#1}
}
\NewDocumentCommand\printgithub{}{
  \typeout \spaceskip
  \url{\@github}
}

% Portfolio
\makeatletter
\NewDocumentCommand\portfolio{m}{
  \def\@portfolio{#1}
}
\NewDocumentCommand\printportfolio{}{
  \typeout \spaceskip
  \url{\@portfolio}
}

% Print header
\makeatletter
\NewDocumentCommand\makeheader{}{
	\begin{center}
    \begin{tabularx}{1\textwidth}{ X Z Z }
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

  % Add visual separator between sections
  \vspace{4pt}
}
\makeatother

% Subsection with two positions (promotion)
\makeatletter
\NewDocumentCommand\cvsubsectiontwopositions{m m m m m m m}{
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
\makeatother

% Subsection but no beginning large space
\makeatletter
\NewDocumentEnvironment{cvsubsectionstart}{m m m}{
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #2 \\
     & #3
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Education
\makeatletter
\NewDocumentEnvironment{cveducation}{m m m m}{
  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #3 \\
    #2 & #4
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Project but no beginning large space
\makeatletter
\NewDocumentEnvironment{cvprojectstart}{m}{
	\textbf{#1}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Print a subsection
\makeatletter
\NewDocumentEnvironment{cvsubsection}{m m m}{
  \vspace*{\beforesubsectionprojectspace}

  \begin{tabularx}{1\textwidth}{X Z Y}
		\textbf{#1} & #2 & #3
	\end{tabularx}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

% Print a project
\makeatletter
\NewDocumentEnvironment{cvproject}{m}{
  \vspace*{\beforesubsectionprojectspace}

	\textbf{#1}

  \vspace*{\aftersubsectionprojectspace}
}
\makeatother

%-------------LINKS------------
% Skills - Grouped by category for better scanning
\makeatletter
\NewDocumentCommand\skills{m}{
  \def\@skills{#1}
}
\NewDocumentCommand\environments{m}{
  \def\@environments{#1}
}
\NewDocumentCommand\printskills{}{
  \begin{itemize}
    % Programming Languages
    \item{\textbf{Languages}: \small{\@skills}}
    \item{\textbf{Operating Systems}: \small{Windows, Linux}}
    \item{\textbf{IDEs/Editors}: \small{Visual Studio, IntelliJ, PyCharm}}
    \item{\textbf{Dev Tools}: \small{Git, Jira, Docker, Kubernetes}}
  \end{itemize}
}
\makeatother
