%
% LaTeX class for ETH Zurich PhD theses
% Copyright (C) 2009 Mario Strasser <mariost@ee.ethz.ch>
% Updated 2015 by Claudio Marforio <maclaudi@inf.ethz.ch>
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ETHdissertation}[2012/06/14]
% process options
\newif\ifwatermark
\DeclareOption{watermark}{\watermarktrue}
\newif\ifcropmarks
\DeclareOption{cropmarks}{\cropmarkstrue}
\ProcessOptions\relax

% define page layout
\LoadClass[10pt,twoside,final]{book}
\RequirePackage[a5paper,heightrounded,headsep=3mm,marginparwidth=0mm,
                left=20mm,top=20mm,right=20mm,bottom=20mm]{geometry}
\ifcropmarks
\RequirePackage[a4,cam,center]{crop}
\fi

% define page header and footer
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyhead[RO,LE]{\thepage}
\fancyhead[RE]{\leftmark}
\fancyhead[LO]{\rightmark}
%\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
% \markboth{\chaptername~\thechapter\;\;--\;\;#1}{}%
  \markboth{\thechapter\;\;#1}{}%
}
\renewcommand{\sectionmark}[1]{%
  \markright{\thesection\;\;#1}%
}
\addtolength{\headwidth}{8mm}
% make sure that the empty, part, and chapter pages suppress the header/footer
\RequirePackage[clearempty,explicit]{titlesec}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
% remove enforced uppercase for toc and bibliography
\renewcommand\tableofcontents{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname\@mkboth{\contentsname}{\contentsname}}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
}
\renewcommand\listoffigures{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listfigurename\@mkboth{\listfigurename}{\listfigurename}}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
}
\renewcommand\listoftables{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listtablename\@mkboth{\listtablename}{\listtablename}}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
}
\renewenvironment{thebibliography}[1]
{\chapter*{\bibname\@mkboth{\bibname}{\bibname}}%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}

% get some reason to float placing
\renewcommand{\topfraction}{.9}
\renewcommand{\bottomfraction}{.9}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{10}
% avoid single lines
\clubpenalty = 20000
\widowpenalty = 20000
% align float pages on top
\setlength{\@fptop}{0pt}
% set separation between floats and text
\setlength{\textfloatsep}{10pt plus5pt minus3pt}
% set maximal space between paragraphs
%\setlength{\parskip}{0pt plus3pt}
\setlength{\parskip}{0pt plus1pt minus1pt}

% define a title page that conforms to the regulations of ETH Zurich
\renewcommand\maketitle{
  \begin{titlepage}
    \setlength{\baselineskip}{8mm}
    \begin{center}
      \large Diss.~ETH No.~\dissnumstring \\
    \end{center}
    \vfill
    \begin{center}
      \textbf{\huge\titlestring}
    \end{center}
   \vfill
    \begin{center}
      \large A thesis submitted to attain the degree of
    \end{center}
    \vspace{0.5\fill}
    \begin{center}
      \large Doctor of Sciences of \textsc{ETH Zurich}
    \end{center}
    \vspace{0.5\fill}
    \begin{center}
      \large presented by \\[1.5ex]
      \textsc{\Large\authorstring} \\[1.5ex]
      \acatitlestring \\[1.5ex]
       born on \dateofbirthstring \\[1.5ex]
      citizen of \citizenstring
    \end{center}
    \vspace{0.5\fill}
    \begin{center}
      \large accepted on the recommendation of \\[1.5ex]
      \examinerstring \\ \coexaminerstring
    \end{center}
    \vspace{0.5\fill}
    \begin{center}
      \large\datestring
    \end{center}
    \if@twoside
      \newpage
      \thispagestyle{empty}
    \fi
  \end{titlepage}
}

\newif\ifpdf
\ifx\pdfoutput\undefined
   \pdffalse
\else
   \pdfoutput=1
   \pdftrue
\fi
\ifpdf
   \usepackage{graphicx}
   \usepackage{epstopdf}
   \DeclareGraphicsRule{.eps}{pdf}{.pdf}{`epstopdf #1}
   \pdfcompresslevel=9
\else
   \usepackage{graphicx}
\fi


% define an imprint page
% \newcommand\makeimprint{
%   \noindent{}Bibliographic information published by the Deutsche
%   Nationalbibliothek.\\
%   The Deutsche Nationalbibliothek lists this publication in the Deutsche
%   Nationalbibliografie; detailed bibliographic data are available in the Internet
%   at http://dnb.d-nb.de.
%   \vfill
%   \noindent{\fontfamily{ptm}\selectfont\textcopyright}
%   \datestring~\authorstring\\[1.5ex]
%   ISBN \isbnstring\\[1.5ex]
%   \publisherstring
% }
% commands to set the information required for the title and imprint page
\renewcommand{\title}[1]{\renewcommand{\titlestring}{#1}}
\newcommand{\titlestring}{}
\newcommand{\dissnum}[1]{\renewcommand{\dissnumstring}{#1}}
\newcommand{\dissnumstring}{}
\newcommand{\tiknum}[1]{\renewcommand{\tiknumstring}{#1}}
\newcommand{\tiknumstring}{}
\newcommand{\dedication}[1]{\renewcommand{\dedicationstring}{#1}}
\newcommand{\dedicationstring}{}
\renewcommand{\author}[1]{\renewcommand{\authorstring}{#1}}
\newcommand{\authorstring}{}
\newcommand{\acatitle}[1]{\renewcommand{\acatitlestring}{#1}}
\newcommand{\acatitlestring}{}
\newcommand{\degree}[1]{\renewcommand{\degreestring}{#1}}
\newcommand{\degreestring}{}
\newcommand{\dateofbirth}[1]{\renewcommand{\dateofbirthstring}{#1}}
\newcommand{\dateofbirthstring}{}
\newcommand{\citizen}[1]{\renewcommand{\citizenstring}{#1}}
\newcommand{\citizenstring}{}
\newcommand{\examiner}[1]{\renewcommand{\examinerstring}{#1}}
\newcommand{\examinerstring}{}
\newcommand{\coexaminer}[1]{\renewcommand{\coexaminerstring}{#1}}
\newcommand{\coexaminerstring}{}
\renewcommand{\date}[1]{\renewcommand{\datestring}{#1}}
\newcommand{\datestring}{}
\newcommand{\isbn}[1]{\renewcommand{\isbnstring}{#1}}
\newcommand{\isbnstring}{}
\newcommand{\publisher}[1]{\renewcommand{\publisherstring}{#1}}
\newcommand{\publisherstring}{}

% define an abstract environment with multiple language support
% \RequirePackage[german,french,italian,english]{babel}
\RequirePackage[italian,german,english]{babel}
\newenvironment{abstract}[1][english]
  {\begin{otherlanguage}{#1}\cleardoublepage\thispagestyle{empty}%
    \chapter*{\abstractname}}{\end{otherlanguage}}

% define import commands
\usepackage{import}
% \newcommand{\workdir}{./}
% \newcommand{\import}[1]{\input{\workdir#1}}
% \newcommand{\subimport}[2]{%
%   \let\savedir\workdir%
%   \renewcommand{\workdir}{\savedir#1/}%
%   \graphicspath{{\savedir#1/}}%
%   \input{\workdir#2}%
%   \let\workdir\savedir%
% }
% \newcommand{\subinclude}[2]{%
%   \let\savedir\workdir%
%   \renewcommand{\workdir}{\savedir#1/}%
%   \graphicspath{{\savedir#1/}}%
%   \include{\workdir#2}%
%   \let\workdir\savedir%
% }

% enable subfigures and define caption layout
%\RequirePackage{subfig}
%\captionsetup{labelfont={bf},textfont={sl}}

% include some useful packages
\RequirePackage{graphicx}
\RequirePackage{amsmath}
%\RequirePackage{amssymb}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage[all]{xy}
\RequirePackage{xcolor}
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage{lettrine}
%\RequirePackage{cite}

% define some standard theorem environments
\RequirePackage{amsthm}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem{definition}{Definition}

% define some handy commands to reference chapters, sections, figures, etc.
\newcommand{\prtref}[1]{Part~\ref{#1}}
\newcommand{\chpref}[1]{Chapter~\ref{#1}}
\newcommand{\secref}[1]{Section~\ref{#1}}
\newcommand{\figref}[1]{Figure~\ref{#1}}
\newcommand{\tabref}[1]{Table~\ref{#1}}
\let\algref\relax
\newcommand{\algref}[1]{Algorithm~\ref{#1}}
\newcommand{\eqnref}[1]{Equation~\eqref{#1}}

% add draft watermark if enabled
\newcommand{\watermark}{Draft}
\ifwatermark
  \RequirePackage{draftwatermark}
  \SetWatermarkFontSize{72pt}
  \SetWatermarkText{\watermark}
\fi


% define alternative font
%\RequirePackage{kpfonts}
%\RequirePackage[sc]{mathpazo}
%\usepackage[varg]{txfonts}
%%\RequirePackage{mathptmx}
\RequirePackage[charter]{mathdesign}
%\RequirePackage[utopia]{mathdesign}
%\RequirePackage[garamond]{mathdesign}
\SetMathAlphabet{\mathcal}{normal}{OMS}{cmsy}{m}{n}

% define title formats
\RequirePackage[explicit]{titlesec}

\titlespacing*{\chapter}{0pt}{-7mm plus3pt}{1.5em}
\titlespacing*{\section}{0pt}{1.25em plus3pt minus5pt}{0.25em}
\titlespacing*{\subsection}{0pt}{1.25em plus3pt minus5pt}{0.25em}
\titlespacing*{\subsubsection}{0pt}{1.25em plus3pt minus5pt}{0.25em}

\titleformat{\chapter}[block]{\bfseries\LARGE\raggedleft}
  {\Large\chaptertitlename~\thechapter\\}{0pt}{#1}[\titlerule]
\titleformat{\section}[hang]{\bfseries\Large}{\thesection}{1ex}{#1}
\titleformat{\subsection}[hang]{\bfseries\large}{\thesubsection}{1ex}{#1}
\titleformat{\subsubsection}[hang]{\bfseries}{}{1ex}{#1}

% addition environments to support the editing process
%\newenvironment{todo}{\begin{itemize}\color{red!50!black}}{\color{black}\end{itemize}}
%\newenvironment{new}{\color{blue!50!black}}{\color{black}}
%\newenvironment{revised}{\color{green!50!black}}{\color{black}}
