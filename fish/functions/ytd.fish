function ytd
     yt-dlp -f bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best -o '%(upload_date)s - %(channel)s - %(id)s - %(title)s.%(ext)s' \
 --sponsorblock-mark "all" \
 --geo-bypass \
 --sub-langs 'all' \
 --embed-subs \
 --embed-metadata \
 --convert-subs 'srt' \
 $argv

end
