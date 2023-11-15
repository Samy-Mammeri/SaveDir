# Savedir Package

## Overview

The `savedir` package provides a convenient set of scripts for saving and loading the last used directories in a shell environment. It includes `save_current_dir.sh` to save the current directory and `load_last_dir.sh` to load the last saved directory.

## Installation

### Adding the Repository

To install the `savedir` package via `apt`, you need to add the repository to your system's package sources. This can be done in one of two ways:

- By adding a line to your `/etc/apt/sources.list` file.
- By creating a new `.list` file under `/etc/apt/sources.list.d/`.

Add the following line to your sources list:

 ```
deb [trusted=yes] https://raw.githubusercontent.com/Samy-Mammeri/SaveDir/main/ ./
 ```

**Note**: The `[trusted=yes]` option is necessary because the repository is not signed. This is not recommended for production use due to security reasons but is suitable for personal or limited use.

### Installing the Package

After adding the repository, you can install the `savedir` package using the following commands:

 ```
 sudo apt update
 sudo apt install savedir
 ```

## Usage

After installation, you can use the following commands in your shell:

- `savecd`: Saves the current directory.
- `loadcd`: Loads the last saved directory.

## Contributing

Contributions to the `savedir` project are welcome. Please feel free to submit any issues and pull requests.
