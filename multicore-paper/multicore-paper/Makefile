all:
	make tex
	make bib
	make tex
	make tex
	#make ps
	#make pdf

bib:
	bibtex multicore

tex:
	pdflatex multicore

ps:
	dvips -Pdownload35 -Pcmz -Ppdf -G0 -t letter -o \
       	multicore.ps multicore.dvi

pdf:
	ps2pdf -dMaxSubsetPct=100 \
	-dCompatibilityLevel=1.4  \
	-dSubsetFonts=true \
	-dEmbedAllFonts=true \
	-dAutoFilterColorImages=false \
	-dAutoFilterGrayImages=false \
	-dColorImageFilter=/FlateEncode \
	-dGrayImageFilter=/FlateEncode \
	-dMonoImageFilter=/FlateEncode \
	multicore.ps multicore.pdf

clean:
	\rm *.aux *.dvi *.log *.blg *.bbl *.out *.toc *.ps *.brf *.lbl
