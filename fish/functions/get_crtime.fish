function get_crtime
	for target in $argv
		set -l inode (stat -c '%i' "$target")
		set -l fs (df --output=source $target | tail -1)
		set -l crtime (sudo debugfs -R "stat <$inode>" "$fs" 2>/dev/null | grep -oP 'crtime.*--\s*\K.*')
		echo "$target $crtime"
	end
end
