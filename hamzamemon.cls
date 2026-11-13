\ProvidesClass{hamzamemon}[2026/11/09 v4.0 class]
\ProcessOptions\relax

%\usepackage{latexsym}
%\usepackage[empty]{fullpage}
%\usepackage{titlesec}
%\usepackage{marvosym}
%\usepackage[usenames,dvipsnames]{color}
%\usepackage{verbatim}
%\usepackage{enumitem}
%\usepackage[hidelinks]{hyperref}
%\usepackage{fancyhdr}
%\usepackage[english]{babel}
%\usepackage{tabularx}
%\input{glyphtounicode}

%----------BASIC SETUP-----------------
\LoadClass[letterpaper,11pt]{article}

% Typography enhancement package
\usepackage{microtype}

% Use Helvetica font
\usepackage[english]{babel}
\babelfont{rm}{TeX Gyre Heros}

%----------DOCUMENT SETUP-----------------
% Set document margins
\usepackage[margin=0.5in]{geometry}

% Paragraph spacing
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}

% Suppress page numbers
\pagestyle{empty}

%----------TABLES & LISTS-----------------
% Required for boldface (\bf and \bfseries) in tabular columns
\usepackage{array}

% Flexible tables
\usepackage{float,tabularx}

% Column type definitions:
% X = Left-aligned column
% Z = Centered column  
% Y = Right-aligned column
% Use @{ for no padding between columns
\newcolumntype{X}{>{\raggedright\arraybackslash}X}
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
\setlist{
    leftmargin=*,
    itemsep=3pt,
    parsep=0pt,
    topsep=0pt,
    partopsep=0pt
}

%----------LINKS & COLORS-----------------
% Color handling package
\usepackage{xcolor}

% Configure hyperref
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    pdftitle={Hamza Memon - Software Developer},
    pdfauthor={Hamza Memon}
}

%------------CONSTANTS---------
% Space before section titles
\def\beforesectionspace{5pt}

% Space after section titles
\def\aftersectionspace{2pt}

% Space before project entries
\def\beforesubsectionprojectspace{3pt}

% Space after project entries
\def\aftersubsectionprojectspace{0pt}

% Space above horizontal rule
\def\beforesectionheaderhrulespace{3pt}

% Thickness of horizontal rule
\def\sectionheaderhruleheight{0.5pt}

%----------SECTIONS-----------------
% Section customization package
\usepackage{titlesec}

% Format sections
\titleformat{\section}
    {\bfseries\uppercase}
    {}
    {0em}
    {}[\titlerule\vspace{5pt}]
\titlespacing{\section}
    {0pt}
    {\beforesectionspace}
    {\aftersectionspace}

%-------------------------
% Custom commands
\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=*]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItem}[2]{
  \item\small{
    \textbf{#1}{: #2 \vspace{-2pt}}
  }
}
\newcommand{\resumeSubItem}[2]{\resumeItem{#1}{#2}\vspace{-4pt}}

\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}

% Print subsection
% Standard job entry
% Uses tabularx with X Z Y column types
% X = left-aligned (job title)
% Z = centered (company)
% Y = right-aligned (dates)
\newcommand{\resumeSubheading}[4]{
    \vspace*{\beforesubsectionprojectspace}
    \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-5pt}
}

\newcommand{\resumeSubSubheading}[2]{
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      \textit{\small#1} & \textit{\small #2} \\
    \end{tabular*}\vspace{-5pt}
}

\NewDocumentCommand{\cvproject}{m}{
    \vspace*{\beforesubsectionprojectspace}

    \textbf{#1}

    \vspace*{\aftersubsectionprojectspace}
}