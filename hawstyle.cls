\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{hawstyle}[2020/03/12 v0.1 HAW MP Thesis Style]

%% Template based on scrbook ------------------------------------------------ %%
\LoadClass{scrbook}
\RequirePackage[
   a4paper,
   twoside,
   bindingoffset=1cm,
   inner=2.5cm,
   outer=2.5cm,
   top=1.5cm,
   bottom=3.5cm,
  %  headsep=1.2cm
]{geometry}
\renewcommand\familydefault{\sfdefault} % Sans-Serif font as default

%% Template options (printet/digital) --------------------------------------- %%
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=haw,
  prefix=haw@
}

\DeclareBoolOption{print}

\ProcessKeyvalOptions{haw}
\def\@print{haw@print}

\DeclareOption{MA}{\def\@ThesisType{MA}}
\DeclareOption{BE}{\def\@ThesisType{BE}}
\ProcessOptions\relax

%% Loading cover and abstract page template --------------------------------- %%
\RequirePackage{template/cover}
\RequirePackage{template/abstract}

%% Define Thesis specific Variables ----------------------------------------- %%
\def\ThesisTitle#1#2{\def\@deTitle{#1}\def\@enTitle{#2}}

\def\firstExaminer#1{\def\@firstExaminer{#1}}
\def\secondExaminer#1{\def\@secondExaminer{#1}}
\def\supervisor#1{\def\@supervisor{#1}}
\supervisor{} % if no supervisor

% \def\ThesisType#1{\def\@ThesisType{#1}}
\def\DegreeProgram#1{\def\@DegreeProgram{#1}}
\def\company#1{\def\@company{#1}}
\company{} % if no cooperation

\def\deUniversityName{Hochschule f\"ur Angewandte Wissenschaften Hamburg}
\def\enUniversityName{Hamburg University of Applied Sciences}

\def\deFacultyName{Fakult\"at Technik und Informatik}
\def\enFacultyName{Faculty of Engineering and Computer Science}

\def\deDepartmentName{Department Maschinenbau und Produktion}
\def\enDepartmentName{Department of Mechanical Engineering and Production Management}


