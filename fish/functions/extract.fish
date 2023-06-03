function extract
    for file in $argv
        switch $file
            case "*.tar.bz2"
                tar xjf $file

            case "*.tar.gz"
                tar xzf $file

            case "*.bz2"
                bunzip2 $file

            case "*.rar"
                unrar e $file

            case "*.gz"
                gunzip $file

            case "*.tar"
                tar xf $file

            case "*.tbz2"
                tar xjf $file

            case "*.tgz"
                tar xzf $file

            case "*.zip"
                unzip $file

            case "*.Z"
                uncompress $file

            case "*.7z"
                7z x $file

            case "*"
                echo "unknown extension: $file"
        end
    end
end
