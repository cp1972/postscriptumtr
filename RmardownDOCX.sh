#!/bin/sh

# Convert Markdown/RMarkdown files to docx with bib and csl files in yaml preamble

#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-ChapVDB.docx Chapter-VDB-ENG.rmd

pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Vorwort.docx Vorwort.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-1-Einführung.docx Kap-1-Einführung.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-2-Gabe.docx Kap-2-Gabe.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-3-Kunst.docx Kap-3-Kunst.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-4-Stars.docx Kap-4-Stars.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-5-Religion.docx Kap-5-Religion.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-6-Transformers.docx Kap-6-Transformers.rmd
#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Kap-7-Exkurs-Ungleichheiten.docx Kap-7-Exkurs-Ungleichheiten.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Schlusswort.docx Schlußwort.rmd
pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Klappentext.docx Klappentext.rmd

# Make the TOC

for i in Kap*.rmd; do grep "title:" "$i" | sed 's/^.*: "//' | sed 's/"$//' | sed 's/^/Kapitel /' && grep '#' "$i" && echo " "; done > Inhaltsverzeichnis.rmd
sed -i '1 i\Vorwort\n' Inhaltsverzeichnis.rmd
echo "Kapitel Schlussbetrachtung" >> Inhaltsverzeichnis.rmd

# Add per hand following header to Inhaltsverzeichnis.rmd and numbers after 'Kapitel'

#---
#title: "Inhaltsverzeichnis"
#indent: true
#output:
#    html_document: default
#csl: chicago-author-date.csl
#bibliography: Rel-Bib.bib
#lang: de-De
#header-includes:
#- \usepackage[german=quotes]{csquotes}
#---

# Convert Inhaltverzeichnis.rmd to docx

#pandoc --to docx --from markdown --filter pandoc-citeproc -s -o CP-EMS-PS-Inhaltsverzeichnis.docx Inhaltverzeichnis.rmd
