#!/bin/bash
pandoc resume.md -s --pdf-engine=xelatex -o resume.pdf
pandoc resume.md -s --highlight-style tango -f markdown+multiline_tables+grid_tables+pipe_tables+table_captions --reference-doc=resume_format.docx -o resume.docx
