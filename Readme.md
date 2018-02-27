# About
Based on
[Adrien Friggeri's CV template](https://www.latextemplates.com/template/friggeri-resume-cv).

[//]: # (typeset in Overpass and using colors inspired by Monokai note: there)
[//]: # (is an `print` option which renders in black and white, and reverts the)
[//]: # (header to dark on light, if printing on paper is needed.)
[//]: # (Uses TikZ for the header, XeTeX and fontspec to use Helvetica Neue, biblatex to)
[//]: # (print publications and textpos for the aside.)

## Additions by gemabrow
* Updated friggeri-cv.cls for updates made to XeTeX
* Created friggeri-cover\_letter.cls for similarly stylized cover letters

# Usage
For a friggeri-cv document, set document class with
```
\documentclass[]{./friggeri-cv}
```

For a Friggeri-styled cover letter, set document class with
```
\documentclass[]{./friggeri-cover_letter}
```

Run `xelatex` on cv and cover letter `tex` files.

If header fails to appear to appear in resultant pdf, rerun `xelatex`.
