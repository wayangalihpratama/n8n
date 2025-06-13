#!/bin/bash

CONTAINER_NAME=n8n
PORT=5678
FONT_PATH=~/Dev/n8n/wgprtm/assets/fonts/NotoSerif_Condensed-BlackItalic.ttf
DEST_FONT_PATH=/home/node/NotoSerif_Condensed-BlackItalic.ttf

# Start the n8n container in the background
docker run -d --rm --name $CONTAINER_NAME -p $PORT:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n

# Wait until the container is up and running
echo "Waiting for the $CONTAINER_NAME container to be ready..."
while ! docker exec -it $CONTAINER_NAME echo "n8n is up" 2> /dev/null; do
    sleep 5
done

# Install FFmpeg, gTTS, yt-dlp, and related dependencies
echo "Installing FFmpeg, gTTS, yt-dlp, and dependencies..."
docker exec -it -u root $CONTAINER_NAME apk add --update python3 py3-pip py3-gtts gcc python3-dev musl-dev curl ffmpeg yt-dlp

# Copy font file into the container
if [ -f "$FONT_PATH" ]; then
    echo "Copying font file..."
    docker cp "$FONT_PATH" $CONTAINER_NAME:$DEST_FONT_PATH
else
    echo "Font file not found: $FONT_PATH"
fi

echo "All setup steps completed successfully."
