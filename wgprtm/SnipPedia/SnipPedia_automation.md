# SnipPedia

Quotes YT short automation

tutor: https://www.youtube.com/watch?v=PeelSIEewUY
docker container id: n8n


### Deepseek prompt
``` bash
Can you generate me 100 short motivational quotes, and also the video title for it. Please provide me two columns, the 1st column is the video title, the second one is the quote. Please output in a format that I can copy and paste to the Google Sheet directly. Do not provide the number at the beginning.


Can you generate me 100 short motivational quotes from certain figure, and also the video title for it. Please provide me two columns, the 1st column is the video title, the second one is the quote with the figure name separate by -. Please output in a format that I can copy and paste to the Google Sheet directly. Do not provide the number at the beginning. Create a short title from quote as video title. And please don't and any double quote or single quote to mark the quotes.
```

``` bash
# install FFmpeg & gTTS
docker exec -it -u root n8n apk add --update python3 py3-pip py3-gtts gcc python3-dev musl-dev curl ffmpeg

# install yt-dlp
docker exec -it -u root n8n apk add --update yt-dlp

# copy font
docker cp ~/Dev/n8n/wgprtm/assets/fonts/NotoSerif_Condensed-BlackItalic.ttf n8n:/home/node/NotoSerif_Condensed-BlackItalic.ttf

# see docker files from cli
docker exec -it n8n /bin/sh
```