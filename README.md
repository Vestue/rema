# repository-observer
The repository-observer prints information about your local repositories when there is a new commit avaible.

## Usage
Add your local repositories to a watchlist in the repository-observer.

Run the command repository-observer to get information about commits that are avaible for the watched repositories.

You can set individual settings for each repository depending on how you want to handle incomming commits.
* Pull directly, and which pull method to use.
* Pull if there are no local commits or uncommitted changes.

You can do git commands by using the watchlist.

## Example
* `ro pull linux-configs`
* `ro push linux-configs`
Where "linux-configs" is a repository in the watchlist.
You don't need to type the path no matter where you are as the repository-observer already knows the path.
