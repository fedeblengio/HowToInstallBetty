  
#!/bin/bash

git add . --all

git config --global credential.helper store

#------------------------------------------------------

if [ "$1" == '' ];
then
        git commit -m "auto add"
else
	git commit -m $1
fi

#------------------------------------------------------

if [ "$2" == '' ];
then
	git push origin main
else
	git push origin $2
fi
