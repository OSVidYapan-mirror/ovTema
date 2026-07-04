### oviTheme
Here are my own themes including my icon themetheme made by me.
Recoverying wInuxcons project.

### Benefits of this icon theme;
1. Easy editable (64 pixels only)
2. Png files so no .svg nonsense
3. Honest app icons (both i dont have the wantage and time to do that)
4. Includes free (as in freedom) cursors ready if you want to copy it

### How to install?
Just put this on ~/.local/share/icons folder for the icon theme or cursor theme

### How to build
No neccessary build needed for icon theme
For cursors see below

To make the cursors yourself you need xcursorgen installed.
AFter installing it (depends on the distro) you should use these
commands to turn png's to .cursor and then the true xorg cursor file

$ 'echo "64 10 5 [name].png" > [name].cursor'
$ xcursorgen ''[name].cursor [name]'

Putting that to 'ovİcons/cursors' directory should make it work
Keep in mind you have to replace one of the symlinks or default ones
as you can't name freely

To make symlinks yourself (this icon theme has deleted some unneccary symlinks like xterm)
ln -s [name] [name2]

### License
See LICENSE file.