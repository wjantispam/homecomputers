
# Standard settings
Change scroll direction



# Standard Installations

I'm using Homebrew to manage my application.  Install `xcode-select --install`  via 'Terminal App' first, then run `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`  

NB: I tried to use the Transfer Assistant to copy my files/application from Intel MBP to AMD M1 MBP that failed because the app do not support the AMD architecture.



```
# Let brew to manage packages
Install home-brew

brew install --cask google-chrome
brew install --cask google-drive
brew install --cask iterm2
brew install --cask visual-studio-code
brew install gh
brew install fish
- Enable as default
- echo $(which fish) | sudo tee -a /etc/shells
- chsh -s $(which fish) 

brew install --cask obsidian
brew install --cask sublime
brew install --cask foxitreader
brew install --cask microsoft-onenote
brew install mariadb

brew install tree
brew install fzf    # Key bindings (CTRL-T, CTRL-R, and ALT-C)
brew install bat
brew install rg     # ripgrep
brew install ripgrep
brew install rlwrap # useful for q commands

brew install exercism

# Install Nerd Front
# Ref: https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e
brew tap homebrew/cask-fonts && brew install --cask font-meslo-lg-nerd-font
```


##  Upgrade Issues
Disable firewall and run below to avoid gatekeeper error
`sudo spctl --master-disable`


# Install Fish Tide manager
## brew install fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install IlanCosman/tide@v5

# Install Terminal tools
brew install neovim

# Install lunarvim
First of all we need to install Cargo

— Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
— you might need to add this to that path
fish_add_path ~/.cargo/bin/

— install rpm
# Ref https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# 	Resolve EACCES permissions when installing packages globally to avoid error when installing packages with npm.
npm install -g npm

— Lunarvim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

—— you will then need to add it to the path
fish_add_path ~/.local/bin



— install node
brew install node












Settings: Keyboard Shortcuts -> remap Caps to Escape
Login Item -> Add item


Application Settings

Install iTerm2 — Snazzy theme
(curl -Ls https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors > /tmp/Snazzy.itermcolors && open /tmp/Snazzy.itermcolors)
Configure iTerm2 color theme:
iTerm2 Preferences: Profiles > Colors > Color Presets: Snazzy





brew install --cask freetube
brew install --cask deepl. # Like grammly
brew install --cask mactex # requires for Lyx
brew install --cask lyx


## Quickpreview plugins

`brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo`

`brew install toland-qlmarkdow`
``
Ref: https://nicktivity.gitbooks.io/coding-on-mac/content/sublime_text.html

## Config iTerm

Keys -> Hotkey -> Create a Dedicated Hotkey Window
this will create a new profile called "Hotkey Window"

In this "Hotkey Window" profile -> Style -> Right of Screen
Columns: 130
Rows: 30

General -> Badge: Hot
Colors -> Pastel Dark Background

### Enable right click paste
Preferences -> Pointer (Set right button click action to Paste from Clicpboard)


# Issues with iMac

## Disable popup accent in Ventura
You will get a pop up when you press and hold a key, and it won't let you repeately enter a string of keys. Not sure why there is no GUI way to disable this, so you will have to run the following from the terminal

`defaults write -g ApplePressAndHoldEnabled -bool false`

you will need to logout to take effect.

## Unable to create symlink for python in Ventura
The new MacOS doesn't allow to create a symlink in /usr/bin/python, and I created a symlink in /usr/local/bin that still undetected, and it promotes to install it via Mac Code.

	-- Assuming you have /usr/local/bin in the PATH. Check $PATH.
	-- fish_add_path /usr/local/bin

`ln -s /Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.9/bin/python3.9 /usr/local/bin/python`

## Alternatives for Alt+dot action
Tried Command + dot, Option + dot, and Control + dot none of them can repat the last arguments from the last command.

This is how to enable it in iTerm2
1.  Select Preferences -> Profiles -> (select the currently active profile, or Default) -> Keys
2.  Under the _Key Mappings_ menu press the small '+' button
3.  Click on _Keyboard Shortcut_
4.  Press Option+. (or whatever other key combination you want to use as your Alt+Dot)
5.  In _Action_ select _Send Hex Code_
6.  In the small text field that appears underneath type: `0x1b 0x2e`

Based here https://superuser.com/questions/84998/equivalent-alternatives-for-altdot-in-mac this is the set up in the Terminal but I haven't tried
Terminal.app, Preferences->Settings, select the Keyboard tab. Ensure "Use Option Key as Meta" is checked.

# Config Development Environment
## Install kdb+

```
$ unzip m64.zip -d $HOME/q
# Install the licence file
$ tree q
q
├── kc.lic
├── m64
│   └── q
└── q.k
$ cd spctl --add q/m64/q
$ xattr -d com.apple.quarantine q/m64/q
$ q/m64/q
```

with fish shell the alias is
`alias q='QHOME=~/q rlwrap -r ~/q/m64/q'`
using `alias --save` to write it to /Users/dean/.config/fish/functions/q.fish


## Config Python for Development


## Install virtualfish
```
1.  `python -m pip install virtualfish`
# with fish shell you might want to add the path
# fish_add_path /Users/dean/Library/Python/3.9/bin
2. vf install
# you will need to restart the fish shell to pick up the change
3. exec fish
4. vf new venv
# this installs /Users/dean/.virtualenvs/venv/bin/python3
# from now on, you can use the venv via
# vf activate venv
```

Issues: 
the right promte didn't display the actual virtual env name. I might be able to config it
https://github.com/IlanCosman/tide/wiki/Configuration#virtual_env
while doing research on existing problems I found https://wiki.nikiv.dev/unix/shell/fish is interesting site to storge knowledge.


## Other useful python tools
Once you are in the virtualenv (`vf activate venv`  here I have created an env called "venv")

Fancy REPL https://github.com/bpython/bpython
`$ pip install bpython`


# Quarks and Fun things with MacOS

## Tricks for Obsidian

1.  Use symlink
`ln -s /Users/dean/Documents/main/dev/py/project-euler/euler-problems.txt ~/Documents/main/notes/euler-problems.md` 


## Tricks with Citrix
Preference -> Disable "Show Workspace in menu bar"
Diable "Enable and match client DPI Scale settings" - let the client to manage it
Keyboard
	Send Control using ^Control
	Send Alt using Comamnd (left)
	Send Window logo key using Command (Right)
gor the Alt key to work with client's terminal you will need to restart Citrix


How to use Alt+Tab?
It is now Option + Tab because Comamnd + Tab switches between remote dekstop to local macos


## MacOS (Ventura 13.3) Tips
Command + Tab: Swithc applications
Command + backtick: Switch within the application
	I changed Mission Control -> Application windows -> Command + §