#!/bin/bash

# Mise à jour initiale
sudo apt update

phpfunction(){
    echo "---------installation de php--------------------"
    sudo apt install --no-install-recommends php8.1 php8.1-curl php8.1-xml php8.1-pgsql php8.1-pdo php8.1-mbstring php8.1-bcmath php8.1-zip
    php -v
    echo "
    -------------------✅✅✅-- Fin d'installation & de configuration de php reussi--✅✅✅---------
    "
}

nodejsfunction(){
    echo "---------installation de nodejs----------------"
    sudo snap install curl
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get update && sudo apt-get install -y nodejs yarn
    echo "
    -------------------✅✅✅-- Fin d'installation & de configuration de nodejs reussi--✅✅✅---------
    "
}

composerfunction(){
    echo "---------installation de Composer--------------"
    sudo apt install curl unzip
    sudo apt install php php-curl
    curl -sS https://getcomposer.org/installer -o composer-setup.php
    sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
    composer -V
    echo "
    -------------------✅✅✅-- Fin d'installation & de configuration de Composer reussi--✅✅✅---------
    "
}

vscodefunction(){    
    echo "---------installation de vscode----------------"
    sudo snap install code --classic
    echo "
    -------------------- Fin d'installation de VSCODE--✅✅✅---------
    "
}

chromefunction(){
    echo "---------installation de google chrome---------"
    sudo apt install wget
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    echo "
    -------------------- Fin d'installation de google-chrome--✅✅✅---------
    "
}

javafunction(){
    echo "---------installation de java & javac-----------"
    sudo apt install -y openjdk-17-jdk
    echo "-----java11 installé-----"
    sudo apt install -y openjdk-17-jre
    echo "---javac installé---"
    echo "
    -------------------- Fin d'installation de JAVA & JAVAC--✅✅✅---------
    "
}

postgresqlfunction(){
    echo "---------installation de PostgreSQL-------------"
    sudo apt update
    sudo apt install postgresql postgresql-doc
    echo "
    -------------------- Fin d'installation de POSTGRESQL--✅✅✅---------
    "
}

reseaufunction(){
    echo "---------installation de serveur réseau---------"
    sudo apt install net-tools apache2
    echo "
    -------------------- Fin d'installation du serveur réseau--✅✅✅---------
    "
}

gitfunction(){
    echo "---------installation de Git---------------------"
    echo "--configuratin de git--"
    sudo apt install git
    echo "--Entrer le nom d'utilisateur pour git--"
    read -r username
    git config --global user.name "$username"
    echo "--Entrer le user-email de git ---------"
    read -r useremail
    git config --global user.email "$useremail"
    git config --global color.diff auto 
    git config --global color.status auto 
    git config --global color.branch auto 

    echo "
    -------------------✅✅✅-- Fin d'installation & de configuration de git reussi--✅✅✅---------
    "
}

pythonfunction(){
    echo "---------installation de Python & outils---------"
    sudo apt install python-pip
    pip install -U pip
    pip install psycopg2-binary
    sudo apt install libpq-dev
    pip3 install psycopg2-binary

    echo "
    -------------------- Fin d'installation de Python & ses outils--✅✅✅---------
    "
}

textmakerfunction(){
    echo "---------installation de Texmaker----------------"
    sudo apt update
    sudo apt install texmaker texlive-lang-french texlive-fonts-extra
    echo "
    -------------------- Fin d'installation de Texmaker--✅✅✅---------
    "
}

decorationterminal(){
    echo "---------décoration du terminal------------------"
    sudo apt install figlet
    echo "figlet dev-gtfod" >> ~/.bashrc
    echo "
    -------------------✅✅✅-- Fin de la décoration reussi--✅✅✅---------
    "
}

androidfunction(){
    echo "---------installation de Android Studio----------"
    sudo snap install android-studio --classic
    echo "
    -------------------✅✅✅-- Fin d'installation de Android Studio--✅✅✅---------
    "
}

flutterfunction(){
    echo "---------installation de Flutter-----------------"

    sudo apt-get update -y && sudo apt-get upgrade -y;
    sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa


    sudo apt-get install \
    libc6:i386 libncurses5:i386 \
    libstdc++6:i386 lib32z1 \
    libbz2-1.0:i386


    sudo snap install flutter --classic
    flutter sdk-path
    flutter doctor
    flutter doctor --android-licenses
    flutter doctor
    echo "
    -------------------✅✅✅-- Fin d'installation de Flutter--✅✅✅---------
    "
}

newversionjava(){
    sudo apt install curl
	curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	sudo apt update
	sudo apt -y install yarn
	#sudo apt install --no-install-recommends yarn
	yarn --version
}

newobsidian(){
    sudo snap install obsidian --classic
}

newinsommnia(){
    echo "---------installation de insomnia----------"
    sudo apt update && sudo apt upgrade
    sudo apt install apt-transport-https
    echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee /etc/apt/sources.list.d/insomnia.list
    sudo apt update
    sudo apt install insomnia

}

functiondocker(){
    sudo apt install gnome-terminal
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


    sudo chmod 777 /var/run/docker.sock

    #version de docker
    sudo docker --version

    #création d'une image helloworld
    sudo docker run hello-world

}

djangofunction(){
    echo "---------installation de django----------"
    sudo apt update
    sudo apt install python3-pip
    sudo apt install python3-venv
    python3 -m venv .venv

}

main(){
    phpfunction
    nodejsfunction
    composerfunction
    vscodefunction
    chromefunction
    javafunction
    postgresqlfunction
    reseaufunction
    gitfunction
    pythonfunction
    textmakerfunction
    newversionjava
    newobsidian
    newinsommnia
    functiondocker
}


main
