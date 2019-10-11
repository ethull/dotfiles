packages_install(){
#essentional
    sudo apt install -y gvim
#js -> py -> java -> c -> lua
    sudo apt install -y nodejs npm
    sudo apt install -y python3
    sudo apt install -y openjdk-11-jdk lang checkstyle maven
    sudo apt install -y clang
    sudo apt install -y lua5.3 liblua5.3 

}

java_setup(){
export JAVA_HOME=TODO add debian java location 
    "java code to install language server
    git clone https://github.com/georgewfraser/java-language-server.git
    cd java-language-server
    scripts/link_mac.sh
    "let g:ale_java_javalsp_executable = <path-to-java-language-server>/java-language-server/dist/mac/bin/launcher
}
language_setup(){
    java_setup
    #js setup, installs npm packages globally
    npm install eslint --save-dev -g
    npm install typescript -g
    #setup python linters
    sudo pip3 install jedi flake8
     
}

packages_install
language_setup
