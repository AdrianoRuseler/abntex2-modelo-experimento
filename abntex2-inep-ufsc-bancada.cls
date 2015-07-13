%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
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
\ProvidesClass{abntex2-inep-ufsc-bancada}[2015/07/13 v1.0 Modelo para relatório de bancada baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}



\RequirePackage{caption}
\RequirePackage{layouts}

% Fonte 'Times New Roman'
\RequirePackage{mathptmx}

\RequirePackage{hyperref}


\RequirePackage{amsthm}
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


\renewcommand{\familydefault}{cmr} % Fonte padrão utilizada no texto
\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
\renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
\renewcommand{\ttdefault}{cmtt} % Selects a monospaced (“typewriter”) font family


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

% Comandos de dados - Código Experimento
\providecommand{\imprimircodexp}{}
\newcommand{\codexp}[1]{\renewcommand{\imprimircodexp}{#1}}


% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% IMPRESSOES PADROES 
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% ---
% Impressão da Capa
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
  				\large \imprimirprograma  \\[4pt]
  				%	\vspace{0.5cm}
  				\imprimirlaboratorio  \par
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
  		Matrícula: \imprimirmatricula  \par
  		Código de experimento: \imprimircodexp \par
  		Data: \today \par
  	\end{minipage}
  	\par
  	\bigskip
  
%  \maketitle
}
% ---


\makeatother