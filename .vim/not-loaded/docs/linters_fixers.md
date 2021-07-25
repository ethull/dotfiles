# sources
    https://github.com/collections/clean-code-linters

# intro
    linter: look for errors in code, can be syntax/logic or style
    fixer/autoformatter: automatically fix errors, normally style

    lint errs //lint for errs
    lint errs/style //lint for errs and style
    lint errs/style+ //lint for errs and style but focus on style

# list
c, c#, c++
    clang, clangd: lint errs
    ccls: lint errs //worse version of clangd
    gcc: lint errs //massive compiler
    clang format: fixer
c, c#, c++, java
    astyle: fixer
c, c#, c++, objectivec, d, java, pawn and vala
    uncrustify: fixer
html, css, js, ts, markdown, yaml, graphql
    prettier: fixer //mainly for web languages
        languages via plugins: apex, elm, java (uses js to parse), php, postgresql (sql files and within python/js files), ruby, swift, TOML, XML
python 
    pyflakes: lint errs
    pylint: lint errs/style 
    gjslint: lint errs
    pycodestyle: lint style        
    black: fixer //PSFs fixer, little config options
    yapf: fixer //more options than black
    autopep8: fixer //only looks for pep8 violations instead of reformating code (making it 100% uniform), outdated
    wrappers
        flake8: pyflakes, pycodestyle 
        prospector: pylint, pycodestyle, mccabe
        pylama:
            pycodestyle, pydocstyle, pyflakes, mccabe, 
            pylint, radon, gjslint, eradicate, Mypy 
html
    htmlhint: lint errs/style
html, xml
    htmltidy: fixer
css
    csslint: lint style (inefficiency, pre-errs)
    csscomb: fixer
html, css
    validator: lint errs
html, css, js
    js-beautify: fixer //can get individual html/css with html-beautify/css-beautify, good either use this or prettier
js
    eslint: lint errs/style, fixer //pain to config, prettier is a better fixer
    tslint 
    standard: lint errs/style+, fixer //no config, default style
    jshint: lint errs
    xo: lint errs/style, fixer //eslint wrapper
java
    javac: lint errs
    checkstyle: lint style
    google-java-format: fixer //google code style
shell:
    shellcheck: lint: style
    shfmt: fixer
multiple:
    coala: lint, fixer
php
    php: lint errs
    php-cs-fixer: fixer
php, css, js
    CodeSniffer/phpcs&phpcbf: lint style, errs
go
    gofmt: fixer
Dart
    dartfmt: fixer
markdown
    remark: fixer
assembly
    asmfmt: fixer
latex
    latexindent.pl: fixer
