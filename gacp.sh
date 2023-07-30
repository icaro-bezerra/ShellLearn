#!/bin/bash
read -p 'What do you want to add to the pack? ' vAdd
if [ -z "$vAdd" ] 
then 
	echo 'Nothing was added to the pack' 
	exit 1
else 
	echo 'Added to the pack'
fi
read -p 'What message do you want to write to the pack? ' vMsg
if [ -z "$vMsg" ]
then 
	echo 'Nothing was commited to the pack'
	exit 1
else
	echo 'Commited the pack'
fi
git add "$vAdd"
git commit -m "$vMsg"
git push
