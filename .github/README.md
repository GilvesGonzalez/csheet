# cheatsheets

This repository contains personal cheatsheets to be used with [cheat][].

## Installation and Usage

### Install cheat

```sh
brew install cheat
```

or check the [cheat installation] page.

### Install this cheatsheets

> First verify cheat's conf.yml file, generally at `~/.config/cheat/conf.yml`.
> Run `cheat -d` to see the paths.

```sh
git clone https://github.com/sauljabin/cheatsheets.git ~/.config/cheat/cheatsheets/personal
cheat -l -p personal
```

### Usage

To view a cheatsheet:

```sh
cheat tar
```

To view a cheatsheet inside a path:

```sh
cheat -p community tar
cheat -p personal tar
```

To view a cheatsheet inside all paths:

```sh
cheat -a tar
```

To view the configured cheatpaths:

```sh
cheat -d
```

To list all available cheatsheets:

```sh
cheat -l
```

To list all cheatsheets that are tagged with "networking":

```sh
cheat -l -t networking
```

To list all cheatsheets on the "personal" path:

```sh
cheat -l -p personal
```

To search for the phrase "ssh" among cheatsheets:

```sh
cheat -s ssh
```

To search (by regex) for cheatsheets that contain an IP address:

```sh
cheat -r -s '(?:[0-9]{1,3}\.){3}[0-9]{1,3}'
```

Flags may be combined in intuitive ways. Example: to search sheets on the
"personal" cheatpath that are tagged with "networking" and match a regex:

```sh
cheat -p personal -t networking --regex -s '(?:[0-9]{1,3}\.){3}[0-9]{1,3}'
```

## Format

Cheatsheets are plain-text files that begin with an optional "front matter"
header in YAML format. The header may be used to assign "tags" to a sheet, and
to specify the sheet's syntax (`bash`, `python`, `go`, etc).

When possible, cheatsheets should conform to this format:

```sh
---
syntax: bash
tags: [ vcs, development ]
---
# To stage all changes in the current directory:
git add --all

# To commit staged changes:
git commit -m <message>
```

As a guideline, it is preferred to use [docopt][] syntax when specifying
parameter placeholders. In edge-cases where that syntax may cause confusion, it
is permissible to use placeholder values (`foo.txt`, `example.com`, etc.) as
necessary.

## License

Cheatsheets are licensed under [Creative Commons CC0 1.0][cc0]. See
[LICENSE][] for the full license text.

## Other links

- [cheat][]
- [community cheatsheets][]

[LICENSE]: https://github.com/sauljabin/cheatsheets/blob/main/.github/LICENSE
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[cheat]:  https://github.com/cheat/cheat
[docopt]: http://docopt.org
[community cheatsheets]: https://github.com/cheat/cheatsheets
[cheat installation]: https://github.com/cheat/cheat/blob/master/INSTALLING.md
