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

% Remove default spacing
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}
\setlength{\topskip}{0pt}
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}


%------------CONSTANTS---------
\def\beforesectionspace{10pt}
\def\aftersectionspace{2pt}
\def\beforesubsectionprojectspace{4pt}
\def\aftersubsectionprojectspace{2pt}

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
  \@email
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
  \@linkedin
}

% Github
\newcommand\github[1]{\def\@github{#1}}
\newcommand\printgithub{
  \typeout \spaceskip
  \@github
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
	\end{center}
}

%------------SECTION------------
% Print a section header
\makeatletter
\newenvironment{cvsection}[1]{
	\vspace*{\beforesectionspace}

	\textsc{\textbf{\Large #1}}

  \vspace*{\aftersectionspace}
}{}
\makeatother

% Print a subsection
\makeatletter
\newenvironment{cvsubsection}[4]{
  \vspace*{\beforesubsectionprojectspace}

  \begin{tabularx}{1\textwidth}{X Y}
		\textbf{#1} & #3 \\
    #2 & #4
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
\newcommand\methodologies[1]{\def\@methodologies{#1}}
\newcommand\printskills{
  \vspace*{\aftersectionspace}

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
