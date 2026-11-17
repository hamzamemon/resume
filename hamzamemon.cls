\ProvidesClass{hamzamemon}[2026/11/09 class]
\ProcessOptions\relax

%----------BASIC SETUP-----------------
\LoadClass[letterpaper,11pt]{article}

% Typography enhancement package
\usepackage{microtype}

% Use Helvetica font
\usepackage[english]{babel}
\babelfont{rm}{TeX Gyre Heros}
\babelfont{sf}{TeX Gyre Heros}
\babelfont{tt}{Latin Modern Mono}

%----------DOCUMENT SETUP-----------------
% Set document margins
\usepackage[margin=0.5in]{geometry}

% Paragraph spacing
\setlength{\parskip}{0pt}
\setlength{\parsep}{0pt}

% Suppress page numbers
\pagestyle{empty}
\raggedbottom
\raggedright

%----------TABLES & LISTS-----------------
% Required for boldface (\bf and \bfseries) in tabular columns
\usepackage{array}

% Flexible tables
\usepackage{float,tabularx}

% Remove space from tables
\setlength{\tabcolsep}{0in}

% Customize lists
\usepackage{enumitem}
\setlist{
    leftmargin=*,
    itemsep=3pt,
    parsep=0pt,
    topsep=0pt,
    partopsep=0pt,
    after=\vspace{2pt}
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

%------------CONSTANTS----------
% Spacing between start of Section and previous block
\newlength{\beforesectionspace}
\setlength{\beforesectionspace}{7pt}

% Spacing between Section's text and horizontal rule
\newlength{\beforesectionheaderhrulespace}
\setlength{\beforesectionheaderhrulespace}{3pt}

% Height of horizontal rule in Section header
\newlength{\sectionheaderhruleheight}
\setlength{\sectionheaderhruleheight}{0.5pt}

% Spacing after Section header content
\newlength{\aftersectionspace}
\setlength{\aftersectionspace}{7pt}

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
\titlespacing*{\section}
    {0pt}
    {\beforesectionspace}
    {0pt}

% Company information
\NewDocumentCommand{\resumeCompany}{mm}{
    \begin{tabularx}{\textwidth}[t]{@{}Xr@{}}
        \textbf{#1} & #2 \\
    \end{tabularx}
}

% Position information
\NewDocumentCommand{\resumePosition}{mm}{
    \begin{tabularx}{\textwidth}[t]{@{}Xr@{}}
        \textit{\small #1} & \textit{\small #2} \\
    \end{tabularx}
}

% Project title
\NewDocumentCommand{\cvproject}{m}{
    \textbf{#1}\par
}

% Skill label and text
\NewDocumentCommand{\skill}{mm}{
    \textbf{#1:} #2\par
}