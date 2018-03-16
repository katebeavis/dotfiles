# dotfiles

For when I ~~lose my computer~~ have my computer stolen. Inevitably.

### To install Xcode, Homebrew, Git, RVM, Ruby & Rails

https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac

### To associate your computer with your Github account

``git config --global user.email "email@example.com"``

**If you have 2-factor-authentication enabled:**

Create a personal token (Github profile > Developer Settings > Personal Access Tokens & select repo) & use it in place of password when pushing.

### To associate your computer with your Enterprise Github account

https://help.github.com/enterprise/2.11/user/articles/connecting-to-github-with-ssh/

### To install zsh, oh-my-zsh, z & zsh-syntax-highlighting

http://jilles.me/badassify-your-terminal-and-shell/

### To customise Bullet Theme for zsh shell :bullettrain_front:

https://github.com/caiogondim/bullet-train.zsh

Don't forget to install Powerline fonts from [here](https://github.com/powerline/fonts).

My latest set-up is **Pro** (don't forget to set as default & change background opacity), with Inconsolata-dz for Powerline 16pt (with Antialias text).

### To create a symlink for Sublime

``ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl``

Now you can open the current project in Sublime from the terminal using ``subl .`` :tada:

### To install Node & npm

``brew install node`` (This installs both).

### Sublime Packages

* SidebarEnhancements
* RuboCop
* Babel

### To find Home folder & save it to favourites

Go > Home. Cmd ^ to go up one folder & drag & drop into favourites sidebar

### To save screenshots in a folder

``defaults write com.apple.screencapture location drag_and_drop_folder_here``