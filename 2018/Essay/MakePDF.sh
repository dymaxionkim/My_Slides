#!/bin/bash
#############################################################
# Script to convert every documents
# 20180517, DymaxionKim
# Pre-Requisites : TexLive, Pandoc, Noto Sans CJK KR

# Variables
A="Essay"
PDF="--latex-engine=xelatex -s -S --dpi=600 --table-of-contents --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions"
HTML="--latex-engine=xelatex -s -S --dpi=600 --table-of-contents --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions"

echo "Start MakePDF..."

# md 2 pdf
echo "Making PDF files.."
pandoc ${A}.md -o ./${A}.pdf ${PDF}

# md 2 html
echo "Making HTML files.."
pandoc ${A}.md -o ./${A}.html ${HTML}


echo "Finished !"
exit 0
