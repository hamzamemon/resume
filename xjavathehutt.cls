\ProvidesClass{xjavathehutt}[2020/03/08 v1.0.0 class]
\ProcessOptions\relax

% Set font size and paper type
% Set up the fonts according to options
\def\mainfontsize{11pt}
\LoadClass[letterpaper,\mainfontsize]{article}

% Set document margins
\usepackage[left=0.5in,top=0.5in,right=0.5in,bottom=0.5in]{geometry}

% Language support
\usepackage[english]{babel}

% Set font face
\usepackage{fontspec}
\usepackage{ebgaramond}
\renewcommand{\familydefault}{\sfdefault}

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
\setlist{leftmargin=*, noitemsep, topsep=2\parskip}

% For spaced small caps
\usepackage{microtype}
\DeclareMicrotypeSet*{smallcapsi} { 
	encoding = {OT1,T1,T2A,LY1,OT4,QX,T5,TS1,EU1,EU2},
	shape = {sc*,si,scit}
}

% Links and colors
\usepackage{hyperref}
\usepackage{xcolor}
\hypersetup{
    colorlinks,
    linkcolor={red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}


%------------CONSTANTS---------
\def\afterheaderspace{10pt}
\def\beforesectionspace{-10pt}
\def\sectionheaderhruleheight{0.5pt}
\def\beforesectionheaderhrulespace{4pt}
\def\afterhrulespace{12pt}
\def\beforesubsectionspace{-15pt}
\def\aftersubsectionspace{-18pt}
\def\beforeskillsspace{-25pt}
\def\afterskillsspace{1pt}
\def\beforemajorspace{10pt}


%------------HEADER------------
% Name
\makeatletter
\newcommand\name[1]{\def\@name{#1}}
\newcommand\printname{
  \typeout \spaceskip
  \textbf{\LARGE\textls[10]{\@name}}
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
    \begin{tabularx}{\textwidth}{X Z Y}
			\printcontacts & \printname & \printlinks \\
		\end{tabularx}

    \vspace*{\afterheaderspace}
	\end{center}
}


%------------SECTION------------
% Print a section header
\makeatletter
\newenvironment{cvsection}[1]{
  \vspace*{\beforesectionspace}
	\textsc{\textbf{#1}}
	\vspace*{\beforesectionheaderhrulespace}
	\hrule height \sectionheaderhruleheight
  \vspace*{\afterhrulespace}
}{}
\makeatother

% Print a subsection
\makeatletter
\newenvironment{cvsubsection}[4][1]{
  \vspace*{\beforesubsectionspace}

  \begin{tabularx}{1\textwidth}{X Z Y}
		\textbf{#2} & \textbf{#3} & \textbf{#4}
	\end{tabularx}

  \vspace*{\aftersubsectionspace}
}
\makeatother


%-------------LINKS------------
% Skills
\newcommand\skills[1]{\def\@skills{#1}}
\newcommand\environments[1]{\def\@environments{#1}}
\newcommand\printskills{
  \vspace*{\beforeskillsspace}
  
  \begin{itemize}
    \item{\small{\@skills}}
    \item{\small{\@environments}}
  \end{itemize}

  \vspace*{\afterskillsspace}
}


%---------EDUCATION------------
\newcommand{\major}[2]{
  \vspace*{\beforemajorspace}
  \begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}r}
    #1 & #2 \\
  \end{tabular*}
} 
