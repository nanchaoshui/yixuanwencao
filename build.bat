@rem ------------------------------------------------
@echo off
@rem ------------------------------------------------
@rem ->> Set tex compiler
@rem ------------------------------------------------
set CompilerOrder="2"
@rem ------------------------------------------------
if %CompilerOrder% == "1" (
set CompileName="pdflatex"
) else (
set CompileName="xelatex"
)
@rem ------------------------------------------------
@rem ->> Get source filename
@rem ------------------------------------------------
for %%F in (*.tex) do (
set FileName=%%~nF
)
@rem ------------------------------------------------
@rem ->> Set build directory
@rem ------------------------------------------------
set BuildPath=build
if not exist "./%BuildPath%" (
 md %BuildPath%
 )
@rem ------------------------------------------------
@rem ->> Build textual content
@rem ------------------------------------------------
%CompileName% -synctex=1 -interaction=nonstopmode -output-directory=%BuildPath% %FileName%
%CompileName% -synctex=1 -interaction=nonstopmode -output-directory=%BuildPath% %FileName%
@rem ------------------------------------------------
@rem ->> View compiled file
@rem ------------------------------------------------
start  " " /max "./%BuildPath%/%FileName%.pdf"
echo ------------------------------------------------
echo %CompileName% %FileName%.tex finished...
echo ------------------------------------------------
