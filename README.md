# installing

```
brew install mplayer
```

```
git clone https://github.com/alexjpaz/tilde-soundboard.git ~/.tilde/plugins/tidle-soundboard
```

Add the following to your `.bashrc`

```
source ~/.tilde/plugins/tilde-soundboard/bashrc
```

## list sounds

```
soundboard --list
```

Tab completion is also available.


## play a sound

```
soundboard --key hold_up
```

## sounds.yml

The this file contains the sounds to be used by the sound board. There must be a url for the player to reference.

## aliases.yml

Alias to a sound in sounds.yml
