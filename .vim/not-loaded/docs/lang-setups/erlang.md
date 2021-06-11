# erlang
    setup erlang
    dynamically typed, functional, concurrent
## links
B
    https://github.com/erlang/otp
    lsp
        https://erlang-ls.github.io/
            https://github.com/erlang/rebar3
            https://github.com/project-fifo/rebar3_lint
        https://github.com/erlang-ls/erlang_ls/releases
        https://github.com/hyhugh/coc-erlang_ls

wget https://github.com/erlang/rebar3/releases/download/3.14.4/rebar3
chmod +x rebar3
sudo mv rebar3 /usr/local/bin
rebar3 local install

#git clone https://github.com/erlang/rebar3.git
```sh
#cd rebar3
#./bootstrap
#sudo ln $PWD/rebar3 /usr/local/bin

wget https://github.com/erlang/rebar3/archive/3.14.3.zip
unzip 3.14.3.zip
./bootstrap
rebar3 local install
sudo ln -s $HOME/.cache/rebar3/bin/rebar3 /usr/local/bin/rebar3


wget https://github.com/erlang-ls/erlang_ls/archive/0.10.0.zip
unzip 0.10.0.zip
cd erlang-ls
make
#make install
cd  _build/default/bin
ln -s $PWD/erlang_ls /usr/local/bin/erlang_ls
```
vi coc-settings.json
    "languageserver": {
        "erlang": {
          "command": "erlang_ls",
          "filetypes": ["erlang"]
        }
      }
