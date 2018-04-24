function dbdrrm
	set -l name $argv
	docker build -t $name .
	docker run -it --rm $name
end
