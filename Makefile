LOGOS := $(wildcard ./*-logo.ai)

PNGS_1000 := $(patsubst %.ai, generated/%-1000.png, $(LOGOS))
PNGS_200 := $(patsubst %.ai, generated/%-200.png, $(LOGOS))
SVGS := $(patsubst %.ai, generated/%.svg, $(LOGOS))
ALL := $(PNGS_1000) $(PNGS_200) $(SVGS) 

all: folders $(ALL)

generated/%-1000.png: %.ai
	convert -density 600 $^ -resize 1000x1000 $@
	optipng -o7 $@

generated/%-200.png: %.ai
	convert -density 600 $^ -resize 200x200 $@
	optipng -o7 $@

generated/%.svg: %.ai
	pdf2svg $^ $@

folders:
	@mkdir generated || true

clean:
	rm $(ALL)

.PHONY: all clean
