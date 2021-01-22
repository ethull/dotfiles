# haskell
    setup haskell
    statitically typed, functional
## links
    https://www.haskell.org/platform/
        https://www.haskell.org/platform/contents.html
    https://wiki.archlinux.org/index.php/Haskell
    cabal v stack
        https://stackoverflow.com/questions/30913145/what-is-the-difference-between-cabal-and-stack
        https://www.fpcomplete.com/blog/2015/06/why-is-stack-not-cabal/
        https://kowainik.github.io/posts/2018-06-21-haskell-build-tools
        https://medium.com/@edmundnoble/cabal-or-stack-25886c0ac74f
        https://www.reddit.com/r/haskell/comments/guecax/confused_by_the_haskell_installation_options/
    https://gitlab.haskell.org/haskell/ghcup-hs
        https://www.haskell.org/ghcup/
    https://www.haskell.org/cabal/
        https://cabal.readthedocs.io
        http://wiki.haskell.org/Cabal-Install
    https://docs.haskellstack.org/en/stable/README/

    https://wiki.haskell.org/Vim
    https://github.com/haskell/haskell-language-server#installation
    https://github.com/neoclide/coc.nvim/wiki
    https://github.com/dense-analysis/ale/tree/master/ale_linters/haskell

## components
    haskell-platform: haskell, a ghc version, cabal (hence with cabal install), stack, 35 core packages, and other components in a bundle
    ghc: haskell compiler
    Cabal library: build system for (fetching, configuration, compilation and installation)
        frontends (build tools, haskell package manager)
            main differences cb vs sk: pick package versions differently, stack can manage ghc versions but cabal needs ghcup, cabal can install globally or to sandbox and stack always installs to sandbox
            cabal: similar to pyenv
                cabal-install: package that adds the cabal cli tool
                installs from hackage
                process: works via dependancy resolution
                    get dependancies from .cabal -> get compatible versions of each pkg -> install each pkg and then index via version
                    modern versions allow for sandbox
                part of ecosystem, EG relies on ghcup to install ghc versions
                uses: .cabal file
            stack: similar to pyenv
                installs from stackage
                process: curated snapshots
                    fetch stackage snapshot (hackage pkgs subset with fixed compatible versions) from stack.yaml -> pkgs registered in separate db (rather than indexed in same one)
                adv/disadv: less setup flexibility, easier to specify build config, less cmds
                full build env: ties to do everything, including managing ghc versions and docker integration
                uses: .cabal file, .stack.yaml file
    ghcup: install/manage specific ghc versions, bootstrap haskell dev environment, install full haskell programs, similar to rustup,pyenv,jenv
        use with cabal, not neccessary with stack

## setup
### haskell
    sudo apt install haskell-platform #will install one version of ghc and cabal
    cabal update

    sudo apt install haskell-stack #install stack
    #curl -sSL https://get.haskellstack.org/ | sh

    # install ghcup manually, use if also want to use haskell platform
    #wget https://downloads.haskell.org/~ghcup/0.1.12/x86_64-linux-ghcup-0.1.12
    #wget https://downloads.haskell.org/~ghcup/0.1.12/SHA256SUMS
    #wget https://downloads.haskell.org/~ghcup/0.1.12/SHA256SUMS.sig

    # install ghcup, use if not using haskell platform
    #curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    echo 'export PATH="$HOME/.ghcup/bin:$PATH"' >> ~/.profile

    #install lsp manually after installing ghc/cabal/stack
    #wget https://github.com/haskell/haskell-language-server/releases/download/0.8.0/haskell-language-server-Linux-0.8.0.tar.gz
### vi
#### lsp
    //no lsp extension

    //install haskell lang server for most ghc versions
    ghcup install hls
    :CocConfig
    "languageserver": {
      "haskell": {
        "command": "haskell-language-server-wrapper",
        "args": ["--lsp"],
        "rootPatterns": ["*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml"],
        "filetypes": ["haskell", "lhaskell"]
      }
    }
