%% Begining stuff
\ProvidesClass{mycv}[2016/07/12 my custom CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

\pagenumbering{gobble}

%% Basic Package Stuff
\RequirePackage[letterpaper, portrait, margin=0.5in]{geometry}
\RequirePackage{xcolor} 
\RequirePackage[colorlinks=true]{hyperref}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage[default,type1]{raleway}
\RequirePackage{enumitem}
\RequirePackage{setspace}

%% Colors
\definecolor{taupegrey}{HTML}{888989}
\definecolor{pastelgray}{HTML}{C9C9C9}
\definecolor{boldcolor}{HTML}{602440}      %%{9B7A80}
\definecolor{outerspace}{HTML}{464747}
\definecolor{link}{HTML}{95A1B2}         %%{288267}

%set URL link color
\newcommand{\changeurlcolor}[1]{\hypersetup{urlcolor=#1}} 

%% Change section and subsection formats 
\titleformat{\section}{\scshape\Large\raggedright}{}{0em}{\color{taupegrey}}%
            [\color{boldcolor}\titlerule]
\titleformat{\subsection}{\large\raggedright}{}{0em}{\color{outerspace}}[]
\titleformat{\subsubsection}{\raggedright}{}{0em}{\color{outerspace}}[]
            
\titlespacing{\section}{0pt}{3pt}{3pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

%% Add a dated option
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill \emph{#2}}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\emph{#1} \hfill \emph{#2}}%
}

\newcommand{\datedsubsubsection}[2]{%
  \subsubsection[#1]{#1 \hfill \emph{#2}}%
}

%% Make a name/header
\newcommand{\name}[2]{%
  \centerline{\Huge{#1}\Huge\bf\color{boldcolor}{#2}}%
}
\newcommand{\contact}[5]{
  \centerline{#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 {\Large} #4 \ {\Large} #5}
}

%% change bullet point style
\renewcommand{\labelitemi}{$\diamond$}

\endinput
