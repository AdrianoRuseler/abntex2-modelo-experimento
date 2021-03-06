%%
%% Customiza��es do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Adriano Ruseler, ruseler@inep.ufsc.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-inep-ufsc-bancada}[2015/08/08 v1.0 Modelo para relat�rio de bancada baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


% ---
% Pacotes fundamentais 
% ---
\RequirePackage{lmodern}			% Usa a fonte Latin Modern
\RequirePackage[T1]{fontenc}		% Selecao de codigos de fonte.

\RequirePackage{indentfirst}		% Indenta o primeiro par�grafo de cada se��o.
\RequirePackage{nomencl} 			% Lista de simbolos
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclus�o de gr�ficos
\RequirePackage{microtype} 			% para melhorias de justifica��o
\RequirePackage{datetime}           % Tempo e hora.
\RequirePackage{epstopdf}
% ---

% ---
% Pacotes adicionais, usados apenas no �mbito do Modelo Can�nico do abnteX2
% ---
\RequirePackage{lipsum}				% para gera��o de dummy text
% ---

\RequirePackage{caption}
\RequirePackage{layouts}

% Fonte 'Times New Roman'
\RequirePackage{mathptmx}
\RequirePackage{hyperref}
\RequirePackage{amsthm}

\RequirePackage{listings}
\RequirePackage{amsmath}		
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{booktabs} % Para Tabelas
\RequirePackage{subfig}  % permite ter subfiguras
\RequirePackage{float}
\RequirePackage{tikz,pgfplots}
\RequirePackage{pdfpages}
\RequirePackage{longtable}


% Defini��o de cores
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}




\lstset{ %
	aboveskip=3mm,
	belowskip=3mm,
	backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
	basicstyle={\small\ttfamily},        % the size of the fonts that are used for the code
	breakatwhitespace=true,         % sets if automatic breaks should only happen at whitespace
	breaklines=true,                 % sets automatic line breaking
	captionpos=t,                    % sets the caption-position to bottom
	commentstyle=\color{mygreen},    % comment style
	columns=flexible,
	deletekeywords={...},            % if you want to delete keywords from the given language
	escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
	extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	frame=tb,                        % adds a frame around the code
	keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
	keywordstyle=\color{blue},       % keyword style
	language=Matlab,                 % the language of the code
	morekeywords={*,...},            % if you want to add more keywords to the set
	numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,                   % how far the line-numbers are from the code
	numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
	rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showstringspaces=false,          % underline spaces within strings only
	showtabs=false,                  % show tabs within strings adding particular underscores
	stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
	stringstyle=\color{mymauve},     % string literal style
	tabsize=3,                       % sets default tabsize to 3 spaces
	texcl=true,						 % Permite o uso de acentua��o no c�digo
	title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

%By default, listings does not support multi-byte encoding for source code. The extendedchar option only works for 8-bits encodings such as latin1.
%
%To handle UTF-8, you should tell listings how to interpret the special characters by defining them like so
\lstset{literate=	
	{�}{{\'a}}1 {�}{{\'e}}1 {�}{{\'i}}1 {�}{{\'o}}1 {�}{{\'u}}1
	{�}{{\'A}}1 {�}{{\'E}}1 {�}{{\'I}}1 {�}{{\'O}}1 {�}{{\'U}}1
	{�}{{\`a}}1 {�}{{\`e}}1 {�}{{\`i}}1 {�}{{\`o}}1 {�}{{\`u}}1
	{�}{{\`A}}1 {�}{{\'E}}1 {�}{{\`I}}1 {�}{{\`O}}1 {�}{{\`U}}1
	{�}{{\"a}}1 {�}{{\"e}}1 {�}{{\"i}}1 {�}{{\"o}}1 {�}{{\"u}}1
	{�}{{\"A}}1 {�}{{\"E}}1 {�}{{\"I}}1 {�}{{\"O}}1 {�}{{\"U}}1
	{�}{{\^a}}1 {�}{{\^e}}1 {�}{{\^i}}1 {�}{{\^o}}1 {�}{{\^u}}1
	{�}{{\^A}}1 {�}{{\^E}}1 {�}{{\^I}}1 {�}{{\^O}}1 {�}{{\^U}}1	 
	{�}{{\oe}}1 {�}{{\OE}}1 {�}{{\ae}}1 {�}{{\AE}}1 {�}{{\ss}}1
	{u}{{\H{u}}}1 {U}{{\H{U}}}1 {o}{{\H{o}}}1 {O}{{\H{O}}}1
	{�}{{\c c}}1 {�}{{\c C}}1 {�}{{\o}}1 {�}{{\r a}}1 {�}{{\r A}}1
	{�}{{\EUR}}1 {�}{{\pounds}}1 {�}{{\~a}}1 {�}{{\~o}}1 {�}{{\~A}}1 {�}{{\~O}}1	
}


\renewcommand{\lstlistingname}{C�digo--fonte }% Listing -> Algorithm
\renewcommand{\lstlistlistingname}{Lista de c�digos--fonte}% List of Listings -> List of Algorithms



%%criar um novo estilo de cabe�alhos e rodap�s
\makepagestyle{LabStyle}

%%cabe�alhos
\makeevenhead{LabStyle}
{\imprimirtipotrabalho {} - \imprimircodexp} %%pagina par
{}
{P�gina \thepage\ de \thelastpage}
\makeoddhead{LabStyle} %%pagina �mpar ou com oneside
{\imprimirtipotrabalho {} - \imprimircodexp}
{}
{P�gina \thepage\ de \thelastpage}
\makeheadrule{LabStyle}{\textwidth}{\normalrulethickness} %linha
\makefootrule{LabStyle}{\textwidth}{\normalrulethickness}{1pt}

%% rodap�
\makeevenfoot{LabStyle} %%pagina par
{}
{}
{Compilado em {}\today {} �s \currenttime h}

\makeoddfoot{LabStyle} %%pagina �mpar ou com oneside
{}
{}
{Compilado em {}\today {} �s \currenttime h}


% ---

\newtheorem{axioma}{Axioma}[chapter]
\newtheorem{postulado}{Postulado}[chapter]
\newtheorem{teorema}{Teorema}[chapter]
\newtheorem{conjectura}{Conjectura}[chapter]
\newtheorem{corolario}{Coral\'ario}[teorema]
\newtheorem{lema}[teorema]{Lema}
\newtheorem{proposicao}{Proposi\c{c}\~ao}[teorema]


\theoremstyle{definition} % Commonly used in definitions, conditions, problems and examples.
\newtheorem{definicao}{Defini\c{c}\~ao}[section]
\newtheorem{exemplo}{Exemplo}[section]
\newtheorem{exercicio}{Exerc\'icio}[section]
\newtheorem{condicao}{Condi\c{c}\~ao}[section]

\theoremstyle{remark}
\newtheorem*{observacao}{Observa\c{c}\~ao}


% \def\<type>autorefname{<new name>}
\renewcommand{\tableautorefname}{Tabela}
\renewcommand{\figureautorefname}{Figura}
\renewcommand{\chapterautorefname}{Cap\'itulo}
\renewcommand{\equationautorefname}{Equa\c{c}\~ao}


\renewcommand{\familydefault}{cmr} % Fonte padr�o utilizada no texto
\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
\renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
\renewcommand{\ttdefault}{cmtt} % Selects a monospaced (�typewriter�) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
%\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}
\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{b}{n}}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}



% Comandos de dados - Universidade
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}

% Comandos de dados - Centro
\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

% Comandos de dados - Disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

% Comandos de dados - Professor
\providecommand{\imprimirprofessor}{}
\newcommand{\professor}[1]{\renewcommand{\imprimirprofessor}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}



% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Comandos de dados - Turma
\providecommand{\imprimirturma}{}
\newcommand{\turma}[1]{\renewcommand{\imprimirturma}{#1}}

% Comandos de dados - Laboratorio
\providecommand{\imprimirlaboratorio}{}
\newcommand{\laboratorio}[1]{\renewcommand{\imprimirlaboratorio}{#1}}

% Comandos de dados - Experimento
\providecommand{\imprimirexperimento}{}
\newcommand{\experimento}[1]{\renewcommand{\imprimirexperimento}{#1}}

% Comandos de dados - Matricula
\providecommand{\imprimirmatricula}{}
\newcommand{\matricula}[1]{\renewcommand{\imprimirmatricula}{#1}}

% Comandos de dados - C�digo Experimento
\providecommand{\imprimircodexp}{}
\newcommand{\codexp}[1]{\renewcommand{\imprimircodexp}{#1}}


% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% IMPRESSOES PADROES 
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% ---
% Impress�o da Capa
\newcommand{\imprimircabecalho}{%
	
%  \vspace{-10ex}
   \thispagestyle{plain}
  	\noindent
%  	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
  	\begin{minipage}[l]{.1\textwidth}%
  		\noindent
  		\includegraphics[width=2\textwidth]{logo-ufsc}
  	\end{minipage}
  	\hfill
  	\begin{minipage}[r]{.8\textwidth}%
  		\begin{center}
  			{\large \bfseries \imprimiruniversidade \par
				\vspace{0.25cm}
  				\large \textsc \imprimirprograma  \\[4pt]
  				%	\vspace{0.5cm}
  				\textsc \imprimirlaboratorio  \par
  				\vspace{0.5cm}
  				\Large \imprimirtipotrabalho 
  			}
  			%  \vspace{0.5cm}
  		\end{center}
  	\end{minipage}	
  	\par
  	\noindent
  	\noindent\makebox[\linewidth]{\rule{\textwidth}{1pt}}
  	\par
  	\bigskip
  	\begin{center}
  		\imprimirtitulo
  	\end{center}
  	
  	\begin{minipage}[t]{.5\textwidth}%
  		Autor: \imprimirautor \par
  		Orientador: \imprimirorientador \par
  		Coorientador: \imprimircoorientador\par
  		
  	\end{minipage}%
  	\hfill
  	\begin{minipage}[t]{.4\textwidth}%
  		Matr�cula: \imprimirmatricula  \par
  		C�digo de experimento: \imprimircodexp \par
  		Data: \today \par
  	\end{minipage}
  	\par
  	\bigskip
  
%  \maketitle
}
% ---


\makeatother