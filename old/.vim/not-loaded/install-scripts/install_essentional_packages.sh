arch_essentional_packages(){
#essestional setup
    sudo pacman -S gvim lua
#js -> py -> java -> c
    sudo pacman -S nodejs npm 
    sudo pacman -S python
    sudo pacman -S openjdk-11-jdk lang maven
    sudo pacman -S clang
}

debian_essentional_packages(){
#essentional
    sudo apt install -y vim-gtk3
#js -> py -> java -> c -> lua
    sudo apt install -y nodejs
    sudo apt install -y python3
    sudo apt install -y openjdk-11-jdk checkstyle maven
    sudo apt install -y clang-tools-9
}




