%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% resume.cls %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026 IIT Resume]

\LoadClass[9pt,a4paper]{extarticle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Packages %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[
a4paper,
left=0.35cm,
right=0.35cm,
top=0.2cm,
bottom=0.15cm
]{geometry}
\RequirePackage[none]{hyphenat}

\sloppy
\emergencystretch=2em
\RequirePackage{paracol}
\RequirePackage{fontawesome5}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{ragged2e}
\RequirePackage{tikz}
\RequirePackage{calc}
\RequirePackage{etoolbox}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{menukeys}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Colours %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{headingblue}{HTML}{1D007F}
\definecolor{subheadingblue}{HTML}{1D007F}
\definecolor{textgray}{HTML}{555555}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Hyperlinks %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\hypersetup{
colorlinks=true,
urlcolor=headingblue,
linkcolor=headingblue
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Font %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\familydefault}{\sfdefault}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{empty}
\RaggedRight

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Columns %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\columnratio{0.50}
\setlength{\columnsep}{0.4cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlist[itemize]{
leftmargin=1.15em,
label=\textbullet,
labelsep=0.5em,
itemsep=0.05ex,
topsep=0pt,
parsep=0pt,
partopsep=0pt
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Helper Sizes %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\SectionSpace}{1.2mm}
\newcommand{\EntrySpace}{1.0mm}
\newcommand{\ItemSpace}{0.3ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Resume Heading %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\resumeHeading}[6]{%

\noindent
\begin{minipage}[c]{1.15cm}
\includegraphics[width=1.15cm]{iitm_logo.png}
\end{minipage}%
\hfill
\begin{minipage}[c]{\linewidth - 1.3cm}
\centering

{\fontsize{13}{15}\selectfont\bfseries #1}

\vspace{0.3mm}

{\small #2}

\vspace{0.3mm}

{\footnotesize
\ifstrempty{#3}{}{\faGraduationCap\ CGPA: #3\hspace{0.25cm}}%
\ifstrempty{#4}{}{\href{#4}{\faGithub\ GitHub}\hspace{0.25cm}}%
\ifstrempty{#5}{}{\href{#5}{\faLinkedin\ LinkedIn}}%
\ifstrempty{#6}{}{\hspace{0.25cm}\href{#6}{\faKaggle\ Kaggle}}%
}

\end{minipage}

\vspace{0.5mm}

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Section Heading %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\resumeSection}[2]{%
\vspace{0mm}

{\large\bfseries\color{headingblue}#1\hspace{0.45em}#2}

\vspace{-2mm}

{\color{headingblue}\rule{\linewidth}{1pt}}

\vspace{0mm}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Education %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\resumeEducation}[4]{%

\noindent
\begin{tabular*}{\linewidth}{@{\extracolsep{\fill}}p{0.725\linewidth}r}

$\bullet$~\textbf{#1} &
{\small #2}
\\[0.5mm]

\hspace*{0.6em}#3 &
{\small #4}

\end{tabular*}

\vspace{1mm}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Experience %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\resumeExperience}[4]{%

\textbf{#1}

\vspace{0.1mm}

\begin{tabular*}{\linewidth}{@{\extracolsep{\fill}}lr}

\textit{#2}
&
{\small\faCalendar*\hspace{0.3em}#3}

\end{tabular*}

\vspace{0.4mm}

#4

\vspace{0.8mm}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Itemize %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{resumeItemize}
{
\justifying
\begin{itemize}
[
leftmargin=1.15em,
label=\textbullet,
labelsep=0.5em,
itemsep=0.05ex,
topsep=0pt,
parsep=0pt,
partopsep=0pt
]
}
{
\end{itemize}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Projects %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\resumeProject}[5]{%

\noindent
\textbf{#1}
\hfill
#5

\vspace{0.2mm}

\begin{tabular*}{\linewidth}{@{\extracolsep{\fill}}lr}
{\small\color{subheadingblue}\textit{#2}}
&
{\small\faCalendar*\hspace{0.35em}#3}
\end{tabular*}

\vspace{0.4mm}

#4

\vspace{0.1mm}

}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Courses %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\resumeCourse}[2]{%

$\bullet$~\textbf{#1}

\hfill

{\small #2}

\vspace{0.8mm}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Skills Row %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\skillRow}[2]{%

\textbf{#1}

#2

\vspace{0.8mm}

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Tight Spacing %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titlespacing*{\section}
{0pt}
{0pt}
{0pt}

\setlength{\tabcolsep}{0pt}

\renewcommand{\arraystretch}{1.0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\resumeDivider}{%
\vspace{-2mm}
\noindent
\begin{tikzpicture}
\draw[gray!60, dash pattern=on 2pt off 2pt, line width=0.4pt]
(0,0) -- (\linewidth,0);
\end{tikzpicture}
\vspace{-4.3mm}
}