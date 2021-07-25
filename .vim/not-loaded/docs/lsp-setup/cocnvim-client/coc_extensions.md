# coc setup
## coc plugins, dont need to manually install/setup lsp
    most ports of vscode plugins
    :CocInstall lspName
    coc-java
        based off eclipse JDT
        problems JAVA_HOME must point to JDK and not JDK/bin 
        JAVA_HOME=usr/lib/jvm/java-11-openjdk/bin;/usr/lib/jvm/java-11-openjdk 
    coc-python 
        includes linter
    coc-tsserver 
    coc-json 
    coc-html 
    coc-css 
    coc-phpls  
        intelephense php lsp
    coc-sh              
        mads-hartmann bash-language-server
        problems
            seems to work if you carry the erronous command yourself
            cd /home/emera/.config/coc/sh/tools   
            npm add bash-language-server
    coc-vimtex
        latex
    coc-sql
    coc-flutter

    features in competition with ale
        linters
            coc-eslint
        fixers
            coc-prettier    
    coc-git
    coc-marketplace           
##
    if not avaliable coc plugin, or want to manually setup lsp
        :CocConfig 
    get suggestest lsp config or setup custom if not avaliable
        https://github.com/neoclide/coc.nvim/wiki/Language-servers#register-custom-language-servers 
