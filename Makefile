# Adapated from https://github.com/sjtug/SJTUThesis/blob/master/Makefile
# now the following Makefile can work on Linux, MacOS, Windows
# Basename of thesis
THESIS = mythesis
TEMPLATE = hkustthesis

# Option for latexmk
LATEXMK_OPT = -quiet -file-line-error -halt-on-error -interaction=nonstopmode
LATEXMK_OPT_PVC = $(LATEXMK_OPT) -pvc

.PHONY : all clean FORCE_MAKE

all : $(THESIS).pdf

$(THESIS).pdf : $(THESIS).tex $(TEMPLATE).cls FORCE_MAKE
	@latexmk $(LATEXMK_OPT) $<

$(TEMPLATE).cls : $(TEMPLATE).dtx
	xetex $(TEMPLATE).dtx

clean :
	@rm -f     \
		*.acn  \
        *.acr  \
        *.alg  \
        *.aux  \
        *.bbl  \
        *.bcf  \
        *.blg  \
        *.fls  \
        *.glg  \
        *.glo  \
        *.gls  \
        *.gz   \
        *.hd   \
        *.idx  \
        *.ilg  \
        *.ind  \
        *.ins  \
        *.ist  \
        *.loa  \
        *.lof  \
        *.log  \
        *.lol  \
        *.lot  \
        *.nav  \
        *.out  \
        *.xdv  \
        *.snm  \
        *.toc  \
        *.run.xml \
	    *.fdb_latexmk
