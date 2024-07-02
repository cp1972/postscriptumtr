#!/bin/sh

# convert Markdown/RMarkdown files to docx with bib and csl files in yaml preamble

#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-ChapVDB.docx Chapter-VDB-ENG.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Vorwort.docx Vorwort.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-1-Einführung.docx Einführung.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-2-Gabe.docx Kap-2-Gabe.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-3-Kunst.docx Kap-3-Kunst.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-4-Stars.docx Kap-4-Stars.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-5-Religion.docx Kap-5-Religion.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-6-Transformers.docx Kap-6-Transformers.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-7-Exkurs-Ungleichheiten.docx Kap-7-Exkurs-Ungleichheiten.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Schlusswort.docx Schlußwort.rmd
