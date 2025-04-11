### DWM
This is my build of dwm + dwmblocks + dmenu.
I used the color palette and wallpapers of [this person](https://github.com/Edesem).
The goal of this build is to make the user feel like they are using a beautiful, simple, fast and **intuitive** tiling DE

### Setup
- Use my .dotfiles to setup the `.xinitrc` file and utilities like `kitty-terminal`
- `cd` into `dwm` `dmenu` & `dwmblocks` and execute `sudo make clean install` in each of them
- reboot the pc

- (will mention all utils that my dwm build uses (like maim, feh, etc.) later)

### Features
- Opaque status bar
- Clickable status bar
- Awesomebar functionality
- The color theme matches perfectly with almost any wallpaper
- Lots of self-written dmenu scripts to improve life quality (like configure wifi or change wallpapers with hotkeys)

### Todo
- Add more modules to the status bar
- Make dmenu scripts for all sb modules
- Remove center dmenu patch since it doesn't work on my machine and replace it with dmenu-xyw
- Add mouse support for dmenu
- Add vim motions for dmenu?? (Shift+j,Shift+k)??
- Make dmenu scroll in vertical mode each time arrows or vim-motions pressed respectively
- Make a script that will open kitty in fullscreen if dwm is in tiling mode (for some reason kitty resizes very slow and I need it to be opened with specific size in floating mode)
- Add autostart for certain apps when user switches to a respective desktop (ex. obsidian for desktop 4, and put an obsidian unicode nerd-font character instead of 4)
- Make dmenu sb modules scripts open respective to the mouse coordinates
- Add dmenu dropdown when a user right clicks on the wallpaper
