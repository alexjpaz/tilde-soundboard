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

# Actions

## list sounds

```
soundboard list all
```

Tab completion is also available.

You can also view the [index file](http://soundboard.alexjpaz.com.s3-website-us-east-1.amazonaws.com/index) in your browser 

## play a sound

```
soundboard hold_up
```

## upload a sound
```
soundboard upload <key> <file>
```

## upload a sound (redirect)
```
soundboard redirect <key> <url>
```

The url can be relative to the soundboard filestore

