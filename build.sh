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
FileName=yinxuanwencao
# ------------------------------------------------
# ->> Build textual content
# ------------------------------------------------
$Compiler -synctex=1 -interaction=nonstopmode -output-directory=$BuildPath ${FileName}.tex
$Compiler -synctex=1 -interaction=nonstopmode -output-directory=$BuildPath ${FileName}.tex
# ------------------------------------------------
# ->> View compiled file
# ------------------------------------------------
start  " " /max "./$BuildPath/${FileName}.pdf"
echo ------------------------------------------------
echo $Compiler ${FileName}.tex finished...
echo ------------------------------------------------
