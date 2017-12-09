# About
Based on
[Adrien Friggeri's CV template](https://www.latextemplates.com/template/friggeri-resume-cv).

[//]: # (typeset in Helvetica and using colors inspired by Monokai note: there)
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
# License

Copyright (C) 2012, Adrien Friggeri

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
