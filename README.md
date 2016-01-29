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

## Contributing files

Checkout the `files` branch
```
git checkout files
```

commit and push your new file

```
git add my-new-file.ogg
git commit -m 'Adding new file'
git push
```

update the `sounds.yaml` file to use `rawgithub.com`

```
"my-new-file":
  title: "My New File"
  url: "http://cdn.rawgit.com/alexjpaz/tilde-soundboard/files/my-new-file.ogg

```

Commit and push to `master` and you are done!
