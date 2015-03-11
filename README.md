# .bash_profiles

This folder contains scripts and settings that will be loaded when you open a terminal.

The scripts and settings were created for use within an OSX environment.


## Installation
Download or clone this repository within your home folder (/Users/<your username>).

Replace the .bash_profile folder within your home folder (/Users/<your username>/.bash_profile) with the .bash_profile file by removing the original file and replace it with a symlink.

```
$ mv ~/.bash_profile ~/.bash_profile.BAK
$ ln -s ~/.bash_profiles/.bash_profile ~/.bash_profile
```

Close and reopen the terminal window or reload the .bash_profile source by running the following command:

```
$ source ~/.bash_profile
```


