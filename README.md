# dotfiles.
My personal tweaks on **macOS**. Tweak it as you like it, [dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked).

Includes:
- homebrew to install GUI applications, CLI tools and fonts
- terminal & shell settings
- macOS system preferences


## let's go
**1.** Check for software updates.
```sh
$ sudo softwareupdate -i -r
```

**2.** Install it all.
> don't just like _run_ this, [check the file contents!](bootstrap.sh).

```sh
$ curl -L https://raw.github.com/diessica/dotfiles/master/bootstrap.sh | sh
```


**3.** Tell Git who you are.
> I prefer doing it in a separate `.gitlocal` file, referred by `.gitconfig`.

```sh
$ git config -f ~/.gitlocal user.email "{Your email}"
```

**4.** Generate SSH keys and [add them to GitHub](https://github.com/settings/keys).
```sh
ssh-keygen -t work -C "{Work email}"
ssh-keygen -t personal -C "{Personal email}"
```

**5.** Tell [npm](https://www.npmjs.com/) who you are.
```sh
$ npm set init.author.name "{Your name}"
$ npm set init.author.email "{Your email}"
$ npm set init.author.url "{Your URL}"
$ npm adduser
```

Have fun!

<img width="871" alt="Terminal with fish shell and starship theme" src="https://user-images.githubusercontent.com/62347788/193208577-484a81a7-32c6-4732-b182-47c0e9193b57.png">


# thanks
Inspired by [Holman](https://github.com/holman), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), [Deny Dias](https://github.com/denydias/dotfiles) and [this question](http://stackoverflow.com/questions/171563/whats-in-your-zshrc).

###### LICENSE
[![CC0](http://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
