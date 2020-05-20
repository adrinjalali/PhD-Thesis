\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions
\LoadClass{\baseclass}

%%%% Required packages %%%%

%\RequirePackage{amsthm}

%%% Definition of abstract environment %%%
\RequirePackage{fancyhdr}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[ngerman,english]{babel}

%%% Font 
%\RequirePackage{charter}
\RequirePackage[charter]{mathdesign}
%%% Resetting mathcal fonts
\DeclareSymbolFont{usualmathcal}{OMS}{cmsy}{m}{n}
\DeclareSymbolFontAlphabet{\mathcal}{usualmathcal}
%\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}

%%% Changing the cover page
% to show margins
\RequirePackage[pass]{geometry}
% to show labels
%\usepackage[inline]{showlabels}
\RequirePackage{eso-pic}
\RequirePackage{afterpage}
\renewcommand*{\maketitle}{%
%\AddToShipoutPictureBG*{\includegraphics[width=0.9\paperwidth]{Saar-Logo-bg}}
\newgeometry{margin=1in,top=1.5in}
\begin{titlepage}
\thispagestyle{empty}
%%% background
%{\raggedleft%
\par\vspace{1cm}\par
\centering\includegraphics[width=8cm]{figs/UdS-Logo}\par
%}
\vspace{1cm} \centering \vspace{1cm}
{\Huge\sffamily\bfseries\@title\unskip\strut\par} \vspace{2cm} {\Large
    A dissertation submitted towards the degree
    Doctor of Natural Science / Engineering
    of the Faculty of Mathematics and Computer Science
    of Saarland University
  \unskip\strut\par} 
\vspace{4cm} 
{\scshape by\par} 
\vspace{8mm}
{\Large\bfseries\@author\unskip\strut\par} 
\vspace{4cm}
%supervised by\par
%\@supervisor\unskip\strut\par
{\large Saarbr{\"u}cken, \@date\par}
\vfill
\end{titlepage}
\restoregeometry
%% add a blank page after the title page, adjust page numbers
\newpage{%
\null
\thispagestyle{empty}%
\newpage}
}

%%% for changinf the template of paragraphs
\RequirePackage{titlesec}

\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE]{\footnotesize\slshape\leftmark}
\fancyhead[LO]{\footnotesize\slshape\rightmark}
\fancyhead[LE,RO]{\thepage}
\newenvironment{abstract}%
{\cleardoublepage\null\vfill\begin{center}%
\bfseries\abstractname\end{center}}%
{\vfill\null}

%%% Definition of commands for adding notes, todos, fixmes... %%%
\RequirePackage{todonotes}
\RequirePackage{xspace}
\newcommand\addinlinenote[2][]{\todo[inline, color=green!40,caption={NOTE}, #1]{
\begin{minipage}{\textwidth-1em}#2\end{minipage}}}
\newcommand\addmarginnote[2][]{\todo[caption={NOTE}, #1]{
\begin{minipage}{\textwidth-4pt}#2\end{minipage}}}
\newcommand{\citeme}{[--]\xspace}              % missing citation
\newcommand{\tbd}{{\bf\textrm{TBD}}}

\makeatletter
\newcommand*\rel@kern[1]{\kern#1\dimexpr\macc@kerna}
\newcommand*\widebar[1]{%
  \begingroup
  \def\mathaccent##1##2{%
    \rel@kern{0.8}%
    \overline{\rel@kern{-0.8}\macc@nucleus\rel@kern{0.2}}%
    \rel@kern{-0.2}%
  }%
  \macc@depth\@ne
  \let\math@bgroup\@empty \let\math@egroup\macc@set@skewchar
  \mathsurround\z@ \frozen@everymath{\mathgroup\macc@group\relax}%
  \macc@set@skewchar\relax
  \let\mathaccentV\macc@nested@a
  \macc@nested@a\relax111{#1}%
  \endgroup
}
\makeatother

%%%% Definition of theorem like structures %%%%
\RequirePackage{amsthm}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{example}[theorem]{Example}


%%%% enumerate style for list of the main points in each chapter %%%%
\RequirePackage{enumitem}
\newlist{points}{enumerate}{2}
\setlist[points]{label=(\emph{\roman*}),ref=(\emph{\roman*})}


%%%% Definition of under bar %%%%
%\RequirePackage{accents}
%\newcommand{\ubar}[1]{\underaccent{\bar}{#1}}


%%%% Parapgraphs
%\titleformat{\paragraph}[runin]{\normalfont\normalsize\bfseries}{}{1em}{\theparagraph.}
\titleformat{\paragraph}[runin]{\normalfont\em}{\theparagraph}{0pt}{}[.]
%\titlespacing{\paragraph}{}{}{5pt}


\endinput

