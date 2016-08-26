LOGOS := $(wildcard ./*-logo.ai)

PNGS_1000 := $(patsubst %.ai, generated/%-1000.png, $(LOGOS))
PNGS_200 := $(patsubst %.ai, generated/%-200.png, $(LOGOS))
SVGS := $(patsubst %.ai, generated/%.svg, $(LOGOS))
ALL := $(PNGS_1000) $(PNGS_200) $(SVGS)

all: folders $(ALL) tessel-logos.tar.gz

generated/%-1000.png: generated/%.svg
	rsvg-convert $^ -w 1000 -h 1000 -o $@
	optipng -o7 $@

generated/%-200.png: generated/%.svg
	rsvg-convert $^ -w 200 -h 200 -o $@
	optipng -o7 $@

generated/%.svg: %.ai
	pdf2svg $^ $@

folders:
	@mkdir generated || true

clean:
	rm $(ALL)

tessel-logos.tar.gz:
	tar cvf tessel-logos.tar.gz -C generated  .

.PHONY: all clean
