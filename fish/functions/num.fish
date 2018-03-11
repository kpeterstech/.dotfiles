# Defined in - @ line 0
function num --description 'alias num=ls -1 | wc -l'
	ls -1 | wc -l $argv;
end
