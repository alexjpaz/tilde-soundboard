# Installing

```
brew install mplayer
```

```
git clone https://github.com/alexjpaz/tilde-soundboard.git ~/.tilde/plugins/tilde-soundboard
```

Add the following to your `.bashrc`

```
source ~/.tilde/plugins/tilde-soundboard/bashrc
```

# Actions

## list sounds

```
soundboard --list
```

Tab completion is also available.

## play a sound

```
soundboard hold_up
```

## play a random sound

```
soundboard --random
```

## announce someone's name

```
soundboard --name "John Cena"
```

## updating

```
soundboard --update
```

Note: If this command doesn't not work try doing `git pull` 

# Configuration

## sounds.yml

The this file contains the sounds to be used by the sound board. There must be a url for the player to reference.


## aliases.yml

Alias to a sound in sounds.yml

# Art

You can use the service http://www.text-image.com/convert/ascii.html to convert pictures to ascii.

Then you can add an `artUrl` to the ascii text file

# Contributing

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
