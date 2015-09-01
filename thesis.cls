\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions
\LoadClass{\baseclass}

%%%% Required packages %%%%
\RequirePackage{microtype}
%\RequirePackage{amsthm}

%%% Definition of abstract environment %%%
\RequirePackage{fancyhdr}
\RequirePackage[german,english]{babel}
\pagestyle{empty}
\newenvironment{abstract}%
{\cleardoublepage\null\vfill\begin{center}%
\bfseries\abstractname\end{center}}%
{\vfill\null}

%%% Definition of commands for adding notes, todos, fixmes... %%%
\RequirePackage{todonotes}
\newcommand\addinlinenote[2][]{\todo[inline, color=green!40,caption={NOTE}, #1]{
\begin{minipage}{\textwidth-1em}#2\end{minipage}}}
\newcommand\addmarginnote[2][]{\todo[caption={NOTE}, #1]{
\begin{minipage}{\textwidth-4pt}#2\end{minipage}}}

%%%% Definition of theorem like structures %%%%
\RequirePackage{amsthm}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{example}[theorem]{Example}
\endinput
