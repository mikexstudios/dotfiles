# dotfiles

My dotfiles with a focus on simple and maintainable files.

## Installation

When installing on a new system, the strategy is to create a new git repository
in the home directory and fetch all files from an existing repository. If we
simply tried `git clone` into the home directory, it would fail because there
are existing files.

```
cd ~
git init
git remote add origin git@github.com:mikexstudios/dotfiles.git
git fetch
git checkout --track origin/master
```

After all the dotfiles have been installed, run the one-time setup script to
set up any one-time configuration.

```
./.setup.sh
```

Remember to update default editor:

```
sudo update-alternatives --config editor
```

## Usage

- When adding a few dotfile: `git add -f .my-dot-file`. The `-f` is needed
  since, by default, all files are ignored.

- After making a dotfile change, `git commit -a` to store the changes.

