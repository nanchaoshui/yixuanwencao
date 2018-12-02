# ------------------------------------------------
# ->> Set Compiler
# ------------------------------------------------
Compiler="xelatex"
# ------------------------------------------------
# ->> Set build directory
# ------------------------------------------------
BuildPath=build
if [ ! -d "./$BuildPath" ]
then
    mkdir $BuildPath
fi
# ------------------------------------------------
# ->> Get source filename
# ------------------------------------------------
FileName=`ls *.tex`
# ------------------------------------------------
# ->> Build textual content
# ------------------------------------------------
$Compiler -synctex=1 -interaction=nonstopmode -output-directory=$BuildPath ${FileName}
$Compiler -synctex=1 -interaction=nonstopmode -output-directory=$BuildPath ${FileName}
# ------------------------------------------------
# ->> View compiled file
# ------------------------------------------------
echo ------------------------------------------------
echo $Compiler ${FileName} finished...
echo ------------------------------------------------
