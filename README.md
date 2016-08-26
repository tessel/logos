# Tessel Logos

[![Code of Conduct](https://img.shields.io/badge/%E2%9D%A4-code%20of%20conduct-blue.svg?style=flat)](https://github.com/tessel/project/blob/master/CONDUCT.md)

**Go to the [Releases Page](https://github.com/tessel/logos/releases)** to directly download SVG, 200px PNG, and 1000px PNG versions of these logos. You can also download the `1-tessel-logos.tar.gz` archive of all these generated versions.

This repository contains all Tessel and module logos in their original .ai source formats. The `Makefile` converts these programmatically into various image formats.

## Generating .svg and .png manually

You can generate SVG and PNG assets from the command line, by installing a few conversion tools.

On OS X, install these through brew:

```
brew install optipng pdf2svg gs librsvg
```

To run the conversion, simply run make:

```
make
```

Images will result in the `generated/` folder.

## License

Copyright Tessel Project, 2014–2016. Anyone may freely distribute the contents of this repo, but the contents may not be modified may only be used to refer to the original, "1st party" products to which they are associated.

The "hexagon" logo is a trademark of Tessel Project and is not licensed for use on 3rd party creations of any kind, including but not limited to modules, web pages, and swag.
