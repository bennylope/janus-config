# Janus Customization

Keep your [Janus](https://github.com/carlhuda/janus) customization in
source control.

## Installation

First, clone this repository. The location on your system doesn't matter
so long as you don't plan on moving it after installing.

Then run the setup script:

```bash
$ ./setup.sh
```

This will create symlinks from `.janus`, `.vimrc.before`, `.vimrc.after`,
`.gvimrc.before`, and `.gvimrc.after` to the respective paths in your
customization directory.

## Customizing

Use the vim config files and the `plugins` directory in your copy of the
respository to update your configuration.

Tip: use git submodules for your plugins to keep them up to date.

## LICENSE

This is project is entered into the public domain by the author.
