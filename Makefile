book.html :
	asciidoctor -a toc=left book.adoc

book.pdf :
	asciidoctor -r asciidoctor-pdf -b pdf \
		-a doctype=book \
		-a toc \
		-a media=prepress \
		-a pdf-themesdir=themes \
		-a pdf-theme=print \
		book.adoc

clean :
	rm $(wildcard book.html book.pdf *~)
