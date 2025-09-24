all: pdf

install:
	cargo install --locked presenterm
	sudo apt install weasyprint

pdf:
	presenterm rev_eng_ie_lang.md -e
	presenterm pca_ai.md -e

html:
	presenterm rev_eng_ie_lang.md -E
	presenterm pca_ai.md -E

clean:
	rm -f *html *pdf

# vim:ft=make
#

