function dbdr
	set -l name $argv
	docker build -t $name .;
	docker run $name;
end
