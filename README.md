# README

#To clone, build and run insecure branch

git clone git@github.com:DylanBrennan92/sapProject.git 

cd sapProject/

git checkout remotes/origin/insecure

rake db:create

rake db:migrate

rails s

#########################################################
#To run secure branch

git clean  -d  -f .

git checkout remotes/origin/secure

rake db:create

rake db:migrate

rails s
