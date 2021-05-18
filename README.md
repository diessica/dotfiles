# dotfiles.
My personal tweaks on **macOS**. Tweak it as you like it, [dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked).

Repo includes:
- homebrew to install Mac applications, command-line tools and fonts.
- system preferences
- editor settings, for backup purposes.

## let's go
**1.** Check for software updates.
```sh
$ sudo softwareupdate -i -r
```

**2.** Get this project somehow and go to its directory. Using [Git](http://www.git-scm.com/):
```sh
$ git clone https://github.com/diessica/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
```

**3.** Install Mac applications (see [caskfile](brew/caskfile)) and fonts (see [fontfile](brew/fontfile)).

```sh
$ sh ./install-apps
```

**4.** Install dotfiles (see [brewfile](brew/brewfile)).

```sh
$ sh ./install-dotfiles
```

**5.** Tell Git who you are.
> I prefer doing it in a separate `gitlocal` file, which is included in my `gitconfig`.

```sh
$ git config -f ~/.gitlocal user.email "{Your email}"
$ git config -f ~/.gitlocal user.name "{Your name}"
```

**6.** Tell [npm](https://www.npmjs.com/) who you are.
```sh
$ npm set init.author.name "{Your name}"
$ npm set init.author.email "{Your email}"
$ npm set init.author.url "{Your URL}"
$ npm adduser
```

# thanks
Inspired by [Holman](https://github.com/holman), [Mathias Bynens](https://github.com/mathiasbynens/dotfiles), [Deny Dias](https://github.com/denydias/dotfiles) and [this question](http://stackoverflow.com/questions/171563/whats-in-your-zshrc).

###### LICENSE
[![CC0](http://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
