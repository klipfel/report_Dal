\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapport}[2014/10/08]

\LoadClass[pdftex,11pt,a4paper,twoside]{report}
\RequirePackage{etex}
\RequirePackage[a4paper,vdivide={*,22cm,4cm}]{geometry}

\RequirePackage{minitoc}  %précis.

\RequirePackage[stable]{footmisc}   %footnotes in section title

\RequirePackage{datetime}  %access to UTC dates.

\RequirePackage[center,it,hang,small,bf]{caption}  %customize the displays of caption.

\RequirePackage{placeins} %for Floatbarrier

\RequirePackage{diagbox} %diagbox remplace slashbox

\RequirePackage{xcolor}

\RequirePackage{subfig}  %enables to put subfigures.

\RequirePackage{pifont}  %pour des symboles

\RequirePackage{pdfpages} % insert pdfpages

%additional package needed for excecl tab to latex tab convertion
%-----------------------------beginning
\RequirePackage{colortbl}

\RequirePackage{rotating}

\RequirePackage{booktabs}
%-----------------------------end

\RequirePackage{makeidx} % creation d'index
\RequirePackage[english]{babel} % style francais
\RequirePackage[english]{varioref}  %enhanced references.
%\RequirePackage{clerveref}  %but issue, I have to install it.
% pas d'espace automatiques avant les signes de ponctuation doubles !

% graphicx avec la bonne option, le chemin des images 
% et les types d'images valides
\RequirePackage{graphicx}
%\RequirePackage[pdftex]{graphicx}--> ligne d'avant, mais enlevé car conflit avec
%le package rotating. L'option, était juste pour obliger la compilation avec pdflatex.
\graphicspath{{pdfs/}{pngs/}{imgs/}}
\DeclareGraphicsExtensions{.pdf,.png,.mps}

\pdfpageattr {/Group << /S /Transparency /I true /CS /DeviceRGB>>}


\RequirePackage{amsmath,amssymb,amsthm,euscript}
% page de garde
\RequirePackage{pageGardeEnsta}

\RequirePackage{tabularx}  %long tables handlings.
\RequirePackage{supertabular}
\RequirePackage{longtable}  %long tables handling for rotatings package.
\RequirePackage{pdflscape}  %for tables rotations.


\RequirePackage{eurosym} % pour le symbole euro
\RequirePackage{float}
\RequirePackage{multicol}

\RequirePackage{tipa}
\RequirePackage{lettrine}
\RequirePackage{Typocaps,Rothdn}

% aeguill correspond a ea plus les guillemets francais
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\normalfont %to load T1lmr.fd 
\DeclareFontShape{T1}{lmr}{bx}{sc} { <-> ssub * cmr/bx/sc }{}
\RequirePackage{yfonts}
\RequirePackage{textcomp}
\font\Cal=cmsy10 at 50pt
%\newcommand{\enluminure}[2]{\lettrine[lines=3]{\small \initfamily \cal #1}{#2}}
%\RequirePackage{arabtex} % qq mots en arabe
\RequirePackage[utf8]{inputenc} % pour taper les accents directement
%\RequirePackage[annataritalic]{tengwarscript} % pour ecrire en elfique
% \frenchbsetup{AutoSpacePunctuation=false}  %frenchb recent
% paquetage ntheorem : permet de generer une table des theoremes
% attention : ntheorem a des bugs dans les algos de cesure (Overfull hbox)
%\RequirePackage[hyperref]{ntheorem}

%\RequirePackage{backref}

\RequirePackage[hyphens]{url}
\urlstyle{same}
\RequirePackage[pdftex,colorlinks,breaklinks]{hyperref}
\hypersetup{%
  pdftitle={rapport},
  pdfauthor={Arnaud KLIPFEL},
  pdfkeywords={rapport de projet},
  bookmarksnumbered,
  pdfstartview={FitH},
  citecolor=blue,
  breaklinks=true
}%


\RequirePackage[xindy,acronymlists={glo},toc]{glossaries} % glossaires
\newglossary{glo}{acr1}{acn1}{Glossaire}
%\newglossary{gloen}{acr2}{acn2}{English glossary}


\RequirePackage{longtable,booktabs}

\unitlength 1cm

% ensembles
\RequirePackage{dsfont}
\def\nbR{\mathds{R}}
\def\nbN{\mathds{N}}
\def\nbQ{\mathds{Q}}
\def\nbZ{\mathds{Z}}

\def\Coup{\ensuremath{\mathcal C}} 
\def\Cont{\ensuremath{\EuScript C}}
\def\Dom{\ensuremath{\EuScript D}}

\def\mcT{\ensuremath{\mathcal T}}
\def\mcF{\ensuremath{\mathcal F}}
\def\mcP{\ensuremath{\mathcal P}}
\def\Bo{\ensuremath{\mathring{B}}}


\theoremstyle{plain}
\newtheorem{theo}{Théorème}
\newtheorem{theoreme}{Théorème}
\newtheorem{lemme}{Lemme}
\newtheorem{corollaire}{Corollaire}
\newtheorem*{iremarque}{Remarque}
\newtheorem*{iremarques}{Remarques}
\theoremstyle{definition}
\newtheorem{defi}{Définition}
\theoremstyle{remark}
\newtheorem{exemple}{Exemple}
\newtheorem{exemples}{Exemples}
\newtheorem*{remarque}{Remarque}
\newtheorem*{remarques}{Remarques}
\newtheorem{prop}{Propriété}
\newtheorem*{prop*}{Propriétés}

\RequirePackage{framed}
\newenvironment{thinleftbar}{%
  \def\FrameCommand{\hspace{5mm}\vrule width 1pt \hspace{10pt}}%
  \MakeFramed {\advance\hsize-\width \FrameRestore}}%
 {\endMakeFramed}
\newenvironment{preuve}[1] {%\pagebreak[1]
{\sc \flushleft Preuve } #1~:\begin{thinleftbar}\noindent\small\sffamily
} { 
\hspace*{\fill}$\qed$\end{thinleftbar}\par}


\RequirePackage{listings}
\definecolor{green_comment}{rgb}{0.25,0.5,0.5}
\lstset{  basicstyle=\small\ttfamily\upshape,
          keywordstyle=\color{blue}\bfseries,
          identifierstyle=,
          commentstyle=\ttfamily\color{green_comment},
          stringstyle=\ttfamily\color{red},
          showstringspaces=false,
%          numbers=left,
%          firstnumber=1,
%          numberstyle=\tiny,
%          stepnumber=5,
          frame=single,
          language=SQL}

\RequirePackage{csquotes}

%Concerning the bibliography settings.
\RequirePackage[autolang=other, backend=bibtex, style=alphabetic,hyperref,backref]{biblatex}
%réglage de la bibliothèque
\addbibresource{bib/guide.bib}

\RequirePackage[toc,page]{appendix}
%%% cesures dans les references biblio avec apalike
% ne fonctionne qu'en pdf
%\makeatletter
%\let\@cite@ofmt\relax
%\makeatother 

\makeatletter
% espace avant les ":" dans les figures
\renewcommand{\fnum@figure}{\figurename~\thefigure~}
\makeatother


\RequirePackage[algo2e,lined,algoruled,english]{algorithm2e}
\SetAlgoSkip{bigskip}

\SetKwIF{If}{ElseIf}{Else}{si}{alors}{sinon si}{sinon}{fin si}
\SetKwFor{For}{pour}{faire}{fin pour}
\SetKwFor{While}{tant que}{faire}{fin tant que}
\SetKwFor{ForAll}{pour tous}{faire}{fin pour tous}
\SetKwRepeat{Repeat}{répéter}{jusqu'à}
\SetKwInput{KwData}{Données}
\SetKwInput{KwIn}{Entrées}

%\RequirePackage[square]{natbib}

\RequirePackage{ifthen}


%-------------------------------------------------------------------------------
%-------------------------------------------------------------------------------
%New commands

\newcommand{\frstg}[0]{\guillemotleft{}}
\newcommand{\lstg}[0]{\guillemotright{}}