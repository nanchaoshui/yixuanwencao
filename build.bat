@rem ------------------------------------------------
@echo off
@rem ------------------------------------------------
@rem ->> Source and dist file names
@rem ------------------------------------------------
set PDFFileName=ÒËÐùÎÄÆH
set TEXFileName=yixuanwencao
@rem ------------------------------------------------
@rem ->> TEX compiler
@rem ------------------------------------------------
set Compiler=xelatex
@rem ------------------------------------------------
@rem ->> Build directory
@rem ------------------------------------------------
set BuildPath=build
if not exist .\%BuildPath% (
md %BuildPath%
)
@rem ------------------------------------------------
@rem ->> Build textual content
@rem ------------------------------------------------
@rem %CompileName% -synctex=1 -interaction=nonstopmode -output-directory=%BuildPath% %FileName%
%Compiler% -synctex=1 -output-directory=%BuildPath% %TEXFileName%
if exist .\%BuildPath%\%PDFFileName%.pdf (
del .\%BuildPath%\%PDFFileName%.pdf
)
if exist .\%BuildPath%\%TEXFileName%.pdf (
rename .\%BuildPath%\%TEXFileName%.pdf %PDFFileName%.pdf
)
@rem ------------------------------------------------
@rem ->> View compiled file
@rem ------------------------------------------------
if exist .\%BuildPath%\%PDFFileName%.pdf (
start  " " /max .\%BuildPath%\%PDFFileName%.pdf
)
echo ------------------------------------------------
echo %Compiler% %TEXFileName%.tex finished...
echo ------------------------------------------------
