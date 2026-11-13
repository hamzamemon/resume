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
\def\beforesectionspace{10pt}

% Space after section titles
\def\aftersectionspace{5pt}

% Space before project entries
\def\beforesubsectionprojectspace{6pt}

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
    {\scshape\bfseries\Large}
    {}
    {0em}
    {}[\vspace*{\beforesectionheaderhrulespace}
       \hrule height \sectionheaderhruleheight
       \vspace*{\aftersectionspace}]
\titlespacing{\section}
    {0pt}
    {\beforesectionspace}
    {0pt}

%-------------------------
%------------RESUME SUBHEADING------------
\NewDocumentCommand{\resumeCompany}{mm}{
    \vspace*{\beforesubsectionprojectspace}

    \begin{tabularx}{\textwidth}[t]{@{}XY@{}}
        \textbf{#1} & #2 \\
    \end{tabularx}
}

%------------RESUME POSITION------------
\NewDocumentCommand{\resumePosition}{mm}{
    \begin{tabularx}{\textwidth}[t]{@{}XY@{}}
        \textit{\small #1} & \textit{\small #2} \\
    \end{tabularx}
}

\NewDocumentCommand{\cvproject}{m}{
    \vspace*{\beforesubsectionprojectspace}

    \textbf{#1}

    \vspace*{\aftersubsectionprojectspace}
}