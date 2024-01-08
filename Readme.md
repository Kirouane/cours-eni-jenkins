# Installation
1. Installer docker
   1. Windows https://docs.docker.com/desktop/install/windows-install/
   2. Ubuntu https://docs.docker.com/engine/install/ubuntu/
2. ```git clone git@github.com:Kirouane/cours-eni-jenkins.git```
3. ```cd cours-eni-jenkins```
4. ```docker pull```
5. ```docker build```
6. ```docker compose up```

# Configurer Gogs
1. Aller à http://localhost:3000/
2. Configuration
   3. Database type : SQLite 3
   4. Admin Account Settings
      5. Entrez vos coordonnées et mot de passe


# Configurer Jenkins
1. ```docker compose logs jenkins-blueocean -f```
   2. Copier le code
3. Allez à http://localhost:8080/
4. Install suggested plugins
5. Entrez vos coordonnées et mot de passe
5. Save and finish
