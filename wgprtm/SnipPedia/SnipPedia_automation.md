# SnipPedia

Quotes YT short automation

tutor: https://www.youtube.com/watch?v=PeelSIEewUY
docker container id: 68fc8bc052476a9acc50a1ea604a2efa56f00f77d5971d9081bb6562b506d83f


### Deepseek prompt
``` bash
Can you generate me 100 short motivational quotes, and also the video title for it. Please provide me two columns, the 1st column is the video title, the second one is the quote. Please output in a format that I can copy and paste to the Google Sheet directly. Do not provide the number at the beginning.


Can you generate me 100 short motivational quotes from certain figure, and also the video title for it. Please provide me two columns, the 1st column is the video title, the second one is the quote with the figure name separate by -. Please output in a format that I can copy and paste to the Google Sheet directly. Do not provide the number at the beginning. Create a short title from quote as video title. And please don't and any double quote or single quote to mark the quotes.
```

``` bash
# install FFmpeg
docker exec -it -u root 68fc8bc052476a9acc50a1ea604a2efa56f00f77d5971d9081bb6562b506d83f apk add --update python3 py3-pip gcc python3-dev musl-dev curl ffmpeg

# install yt-dlp
docker exec -it -u root 68fc8bc052476a9acc50a1ea604a2efa56f00f77d5971d9081bb6562b506d83f apk add --update yt-dlp

# copy font
docker cp ~/Downloads/Noto_Serif/static/NotoSerif_Condensed-BlackItalic.ttf 68fc8bc052476a9acc50a1ea604a2efa56f00f77d5971d9081bb6562b506d83f:/home/node/NotoSerif_Condensed-BlackItalic.ttf

# see docker files from cli
docker exec -it 68fc8bc052476a9acc50a1ea604a2efa56f00f77d5971d9081bb6562b506d83f /bin/bash
```