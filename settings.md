← [back to **dotfiles**](https://github.com/diessica/dotfiles)

## Settings index

##### Installed packages
- [Homebrew](#homebrew)
- [npm globals](#npm)
- [Gems](#gems)
- [Atom packages](#atom)
- [Sublime packages](#sublime-text)

##### Miscellaneous features
- [EditorConfig](misc/.editorconfig)
- [Git](git)
  - Config
  - Attributes
  - Global .gitignore
- [JSHint](misc/.jslintrc)
- [ESLint](misc/.eslintrc)

##### Defaults
- Operational system
  - [System interface and behaviour](#system-interface-and-behaviour)
  - [SSD-specific tweaks](#ssd-specific-tweaks)
  - [Trackpad, mouse and keyboard](#trackpad-mouse-and-keyboard)
  - [Screen](#screen)
  - [Text format and input](#text-format-and-input)
  - [Dock and Dashboard](#dock-and-dashboard)
  - [Hot corners](#hot-corners)
- Preferences on apps
  - [Finder](#finder)
  - [Activity Monitor](#activy-monitor)
  - [Time Machine](#time-machine)
  - [Safari and Webkit](#safari-and-webkit)
  - [Transmission.app](#transmissionapp)


## Installed packages

#### Homebrew
> See [`brewfile`](brew/brewfile).

Command-line tweaks and utils, development tools...

#### npm
> See [`npmGlobals`](npm/npmGlobals).

Volume and brightness control on OS X, TODOs management, development tools and helpers... Everything through command line.

#### Gems
> See [`gemfile`](ruby/gemfile).

I play with [RUBYRUBYRUBYRUBY!](https://www.youtube.com/watch?v=qObzgUfCl28) sometimes.

#### Atom
> See [`atomfile`](atom/atomfile).


#### Sublime Text
> See [`subl` folder](subl).

## Defaults
### Operational system
###### System interface and behaviour
- Use dark theme
- Disable the sound effects on boot
- Hide some icons from menu bar: Time Machine and Volume
- Disable the *"Are you sure you want to open this application?"* dialog
- Check for software updates daily, not just once per week
- Set sidebar icon size to small
- Save to disk (not to iCloud) by default
- Disable the crash reporter
- Restart automatically if the computer freezes
- Disable smart quotes and dashes, as they’re annoying when typing code

###### SSD-specific tweaks
- Disable local Time Machine snapshots
- Disable hibernation (speeds up entering sleep mode)
- Remove the sleep image file to save disk space
- Disable the sudden motion sensor as it’s not useful for SSDs

###### Trackpad, mouse and keyboard
- Enable tap to click
- Enable full keyboard access for all controls *(e.g. enable Tab in modal dialogs)*
- Disable "natural" (Lion-style) scrolling

###### Screen
- Require password immediately after sleep or screen saver begins
- Enable subpixel font rendering on non-Apple LCDs
- Save screenshots to a folder called Screenshots
- Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)

###### Text format and input
- Set to metric units

###### Dock and Dashboard
- Put Dock on the right side of the screen
- Enable highlight hover effect for the grid view of a stack (Dock)
- Add a spacer tile in the Dock
- Set the icon size of Dock items to 36 pixels
- Change minimize/maximize window effect
- Minimize windows into their application's icon
- Enable spring loading for all Dock items
- Show indicator lights for open applications in the Dock
- Don't animate opening applications from the Dock
- Speed up Mission Control animations
- Don't group windows by application in Mission Control
- Disable Dashboard and don't show it as a space
- Don't automatically rearrange Spaces based on most recent use
- Remove the auto-hiding Dock delay
- Remove the animation when hiding/showing the Dock
- Automatically hide and show the Dock
- Make Dock icons of hidden applications translucent
- Add iOS Simulator to Launchpad

###### Hot corners
- Bottom
  - Right → Mission Control
  - Left → Desktop
- Top
  - Right → Launchpad
  - Left → (empty)

### Preferences on apps

###### Mac App Store
- Enable the WebKit Developer Tools in the Mac App Store
- Enable Debug Menu in the Mac App Store

###### Finder
- Allow quitting via ⌘ + Q (doing so will also hide desktop icons)
- Disable window animations and Get Info animations
- Use list view in all Finder windows
- Empty Trash securely by default
- Set the default location for new Finder windows (current: `file://${HOME}`)
- Don't show icons for hard drives, servers, and removable media on the desktop
- Show:
  - Filename extensions
  - Hidden files
  - Status bar
  - Path bar
  - Folder `~/Library`
- Allow text selection in Quick Look
- Display full POSIX path as Finder window title
- When performing a search, search the current folder
- Disable the warning when changing a file extension
- Enable spring loading for directories
- Remove the spring loading delay for directories
- Avoid creating .DS_Store files on network volumes
- Disable disk image verification
- Automatically open a new Finder window when a volume is mounted
- Show item info near icons on the desktop and in other icon views
- Show item info to the right of the icons on the desktop
- Enable snap-to-grid for icons on the desktop and in other icon views
- Increase grid spacing for icons on the desktop and in other icon views
- Increase the size of icons on the desktop and in other icon views
- Expand the File Info panes:
  - “General"
  - “Open with"

###### Activity Monitor
- Show the main window when launching Activity Monitor
- Visualize CPU usage in the Activity Monitor Dock icon
- Show all processes in Activity Monitor
- Sort Activity Monitor results by CPU usage

###### Time Machine
- Prevent Time Machine from prompting to use new hard drives as backup volume
- Disable local Time Machine backups

###### Safari and Webkit
- Privacy: don’t send search queries to Apple
- Press Tab to highlight each item on a web page
- Show the full URL in the address bar (note: this still hides the scheme)
- Set Safari's home page to `about:blank` for faster loading
- Prevent Safari from opening ‘safe’ files automatically after downloading
- Allow hitting the Backspace key to go to the previous page in history
- Hide Safari’s bookmarks bar by default
- Hide Safari’s sidebar in Top Sites
- Disable Safari's thumbnail cache for History and Top Sites
- Enable Safari's debug menu
- Make Safari's search banners default to Contains instead of Starts With
- Remove useless icons from Safari's bookmarks bar
- Enable the Develop menu and the Web Inspector in Safari
- Add a context menu item for showing the Web Inspector in web view

###### Transmission.app
- Use `~/Documents/Torrents` to store incomplete downloads
- Don't prompt for confirmation before downloading
- Trash original torrent files
- Hide the donate message and legal disclaimer
