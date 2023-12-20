#!/bin/sh

# convert Markdown/RMarkdown files to docx with bib and csl files in yaml preamble

pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-ChapVDB.docx Chapter-VDB-ENG.rmd
