#!/bin/bash

while getopts cdbrl opt; do
  case $opt in
    c)
      cd ../../xartika/Jobs/CV/
      rm *.aux *.idx *.ind *.lof *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.bbl *.bak *.blg *.log *.ps *.pdf
      xelatex.exe -quiet -interaction=nonstopmode -shell-escape Petros_Aristidou_CV.tex
      bibtex.exe -quiet articles.aux
      bibtex.exe -quiet bookchap.aux
      bibtex.exe -quiet conferences.aux
      bibtex.exe -quiet other.aux
      bibtex.exe -quiet submitted.aux
      bibtex.exe -quiet techrep.aux
      xelatex.exe -quiet -interaction=nonstopmode -shell-escape Petros_Aristidou_CV.tex
      cd ../../../WebPages/paristidou
      cp ../../xartika/Jobs/CV/Petros_Aristidou_CV.pdf static/files/
      ;;
    b)
      #rm -r content/publication/*
      cat ../../Xartika/Jobs/CV/articles.bib ../../Xartika/Jobs/CV/incollection.bib ../../Xartika/Jobs/CV/inproceedings.bib ../../Xartika/Jobs/CV/other.bib ../../Xartika/Jobs/CV/techrep.bib > all_my_pubs_abs.bib
      python parse_bib.py -i all_my_pubs_abs.bib
      rm all_my_pubs_abs.bib
      ;;
    d)
      ./hugo.exe
      cd public
      git add -A && git commit -m "Website update"
      cd ..
      ;;
    l)
      ./hugo_0.18.1_windows_amd64.exe server --watch
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
