# ------------------------------------------------
# ->> Source and dist file names
# ------------------------------------------------
PDFFileName=宜轩文艸
TEXFileName=yixuanwencao
# ------------------------------------------------
# ->> Set Compiler
# ------------------------------------------------
Compiler=xelatex
# ------------------------------------------------
# ->> Set build directory
# ------------------------------------------------
BuildPath=build
if [ ! -d ./${BuildPath} ]
then
    mkdir ${BuildPath}
fi
# ------------------------------------------------
# ->> Build textual content
# ------------------------------------------------
$Compiler -synctex=1 -interaction=nonstopmode -output-directory=${BuildPath} ${TEXFileName}
# ------------------------------------------------
# ->> Rename output PDF filename
# ------------------------------------------------
if [ -f ./${BuildPath}/${PDFFileName}.pdf ]
then
    rm ./${BuildPath}/${PDFFileName}.pdf
fi
if [ -f ./${BuildPath}/${TEXFileName}.pdf ]
then
    mv ./${BuildPath}/${TEXFileName}.pdf ./${BuildPath}/${PDFFileName}.pdf
fi
echo ------------------------------------------------
echo $Compiler ${TEXFileName} finished...
echo ------------------------------------------------
