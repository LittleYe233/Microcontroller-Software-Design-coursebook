\LoadClass[fontset=custom, oneside]{ctexbook}

\RequirePackage{booktabs}
\usepackage[shortlabels]{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage[
    a4paper,
    top=1in, bottom=1in, left=.75in, right=.75in
]{geometry}
\usepackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{lastpage}
\RequirePackage[newfloat]{minted}
\RequirePackage{setspace}
\RequirePackage[svgnames]{xcolor}

% See: https://tex.stackexchange.com/a/130797
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\urlstyle{same}

\definecolor{listingbg} {HTML}{FDF6E3}

% See: https://tex.stackexchange.com/a/368971
% Create a new environment for breaking code listings across pages.
\newenvironment{longlisting}{\captionsetup{type=listing}}{}
\AtBeginEnvironment{longlisting}{\linespread{1}}

% See minted source code
\setminted{linenos, breaklines, frame=lines, bgcolor=listingbg, breakafter=/}
\SetupFloatingEnvironment{listing}{name={Listing}}
\usemintedstyle{solarized-light}

\setmonofont{LigalexMono}[
    Path=fonts/,
    Extension=.ttf,
    ItalicFont=LigalexMono-Italic,
    BoldFont=LigalexMono-Bold
]

\hypersetup{colorlinks=true}

% Fancyhdr style for the first page
% See: https://tex.stackexchange.com/a/30229
% Set fancyhdr style after the first page.
\fancyhf{}
\fancyhead[C]{\kaishu 哈尔滨工业大学 (深圳) 电子与信息工程学院}
\fancyfoot[C]{\thepage\ /\ \begin{NoHyper}\pageref{LastPage}\end{NoHyper}}
% Set page style after the first page.
\pagestyle{fancy}
% See: https://tex.stackexchange.com/a/642994
\fancypagestyle{plain}{}
% Remove the horizontal bar of footer.
% \renewcommand{\headrulewidth}{0pt}
% Resolve fancyhdr head height too small
% See: https://tex.stackexchange.com/a/327298
\setlength{\headheight}{13pt}

\setlist{nosep}
