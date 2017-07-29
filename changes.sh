# example: bash change.sh HEAD~3
echo "Changed pages only first! (main-changesonly.pdf)"
git-latexdiff --ignore-latex-errors -b --main main.tex -o main-changesonly.pdf -s ONLYCHANGEDPAGE --math-markup=3 $1
echo "Complete document! (main-diffs.pdf)"
git-latexdiff --ignore-latex-errors -b --main main.tex -o main-diffs.pdf --math-markup=3 $1^
