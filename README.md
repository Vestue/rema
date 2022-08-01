# rema - (Repository manager)
The repository-observer prints information about your local repositories when there is a new commit avaible.

## Usage
Add your local repositories to a watchlist in the repository-observer.

Run the command repository-observer to get information about commits that are avaible for the watched repositories.

You can set individual settings for each repository depending on how you want to handle incomming commits.
* Pull directly, and which pull method to use.
* Pull if there are no local commits or uncommitted changes.

You can do git commands by using the watchlist.

### Specific clone
- Pull a specific file or directory from a github repository.

### Categorization
* `rema status gameRepos`

### Sync files
* Set up specific files or directories to be synced from your local machine and into the repository.

Either by manually triggering the sync via `rema sync all` or `rema sync gameRepos` or by using a timer to sync it daily, weekly, etc.

This is useful for syncing smaller files that you want availble anywhere, for example dotfiles or other configuration files.

### Default clone location
Set a default location for your repositories.

Example:
* `rema --default ~/Repos`
* `rema clone https://github.com/Vestue/repository-observer.git`

Will cause the cloned repository to be placed in the default directory.
- The example would clone it into `~/Repos/repository-observer`

## Example
Assuming "linux-configs" is a repository in the watchlist.
* `rema pull linux-configs`
* `rema push linux-configs`
* `rema status linux-configs`

This will use all the git commands with the intended directory.
You don't need to type the path no matter where you are as *rema* already knows the path.

This can also be done for all watched repositories at the same time, giving details for each repo in the watchlist.
* `rema status`

It can also be done for categories.
* `rema status gameRepos`
* `rema pull gameRepos`
* `rema push gameRepos`

## Interface
- Plenty of colorful options
- The user can configure it from a configuration guide.
- Pretty icons if the user wants, this requires a nerd-patched font.

### Font
I recommend installing a [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) patched font as it will allow icons to be properly displayed.
- You can either download a font that is available on [nerdfonts.com](https://www.nerdfonts.com/font-downloads)
- Or patch your own font with their [font-patcher](https://github.com/ryanoasis/nerd-fonts#font-patcher)

## Installation
* `rema --config`
* `rema --configure`

### Dependencies
* git
* rg - (ripgrep)
* sed
