# Defined in /home/beard/.config/fish/functions/mkalias.fish @ line 1
function mkalias --argument key value
	echo alias $key=$value
	alias $key=$value
	funcsave $key
end
