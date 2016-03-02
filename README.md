# Installing

Clone the repository 
```
git clone https://github.com/alexjpaz/tilde-soundboard.git ~/.tilde/plugins/tilde-soundboard
git checkout bash
```

Install a media player
```
brew install mplayer
export SOUNDBOARD_PLAYER=mplayer
```

Add the following to your `.bashrc`

```
source ~/.tilde/plugins/tilde-soundboard/bashrc
export SOUNDBOARD_API_KEY=<API_KEY>
```

# Soundboard bash client:

You will need an API key
```
export SOUNDBOARD_API_KEY=<API_KEY>
```

## Play sound
```
soundboard <sound>
```

## Upload sound
```
soundboard upload <key> <file>
```

## Redirect sound to a url
```
soundboard redirect <key> <url>
```
The url can be relative to the soundboard bucket

## Upload youtube sound
```
soundboard upload_youtube <key> <youtube_url>
```
Requires [https://github.com/rg3/youtube-dl](youtube-dl)

## List sounds
```
soundboard list all
```
Or you can view the index files
CSV: http://soundboard.alexjpaz.com.s3-website-us-east-1.amazonaws.com/index
JSON: http://soundboard.alexjpaz.com.s3-website-us-east-1.amazonaws.com/index
WEB: http://soundboard.alexjpaz.com.s3-website-us-east-1.amazonaws.com/index.html
