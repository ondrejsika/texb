# TexB (Tex Builder)

Easy tool for building LaTeX documents to PDF.

* Permanent homepage: <http://ondrejsika.com/projects/texb.html>
* GitHub repo: <https://github.com/ondrejsika/texb>
* DEB package: <https://drive.ondrejsika.com/debian/all/texb_1~ondrejsika-1_all.deb>


### Install from my repository

Add my repo to source lists

    echo "deb http://drive.ondrejsika.com/debian/ all/" >> /etc/apt/sources.list

Update sources

    apt-get update

And install package

    apt-get install texb

### Usage

Texb use 2 files for definition source tex file and output pdf name.

You add `_texb_source` which contains path to tex source (with .txt) file and `_texb_output` which contains name of new PDF (without .pdf) generated to `_build` directory.

Build is simple, just `texb`


### Example

You have a tex file `main.tex` and output is a `My_Book.pdf`.

You use this config

    echo 'main.tex' > _texb_source
    echo 'My_Book' > _texb_output

Build

    texb

And open the PDF

    evince _build/My_Book.pdf

