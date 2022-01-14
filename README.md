# dotfiles

For when I ~~lose my computer~~ have my computer stolen. Inevitably.

### To install Xcode, Homebrew, Git, RVM, Ruby & Rails

https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac

zlib errors were fixed here https://github.com/rvm/rvm/issues/4206#issuecomment-456790782

### To install Postgresql

https://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/

(Don't forget to follow the Terminal instructions).

### To create a new db

`psql`

`CREATE_DATABASE database_name;`

`\list` to see all databases.

`\q`

if you have no db available `createdb` to create a db under your username.

### To associate your computer with your Github account

`git config --global user.email "email@example.com"`

`git config --global credential.helper osxkeychain`

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

**If you have 2-factor-authentication enabled:**

Create a personal token (Github profile > Developer Settings > Personal Access Tokens & select repo) & use it in place of password when pushing.

### To associate your computer with your Enterprise Github account

https://help.github.com/enterprise/2.11/user/articles/connecting-to-github-with-ssh/

Add Identity using Keychain

`ssh-add -K ~/.ssh/id_rsa`

### To install zsh, oh-my-zsh, z & zsh-syntax-highlighting

http://jilles.me/badassify-your-terminal-and-shell/

### To customise Bullet Theme for zsh shell :bullettrain_front:

https://github.com/caiogondim/bullet-train.zsh

Don't forget to install Powerline fonts from [here](https://github.com/powerline/fonts).

My latest set-up is **Pro** (don't forget to set as default & change background opacity), with Inconsolata-dz for Powerline 16pt (with Antialias text).

### To create a symlink for Sublime

`ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl`

Now you can open the current project in Sublime from the terminal using `subl .` :tada:

### To install Node & npm

`brew install node` (This installs both).

### Sublime Packages

- Package Control
- SidebarEnhancements
- RuboCop
- 10% Too Dull for My Tastes Color Scheme
- A File Icon
- Material Theme
- BracketHighlighter
- rspec-snippets
- Side Bar

### VSCode extensions

- Auto Close Tag
- Bracket Pair Colorizer
- Debugger for Chrome
- Docker
- DotENV
- Editor Config for VS Code
- ES7 React/Redux/GraphQL/React-Native snippets
- ESLint
- Git History
- GitLens
- HTML Snippets
- indent-rainbow
- JavaScript (ES6) code snippets
- Jest snippets
- Markdown Pdf
- Material Icon Theme
- npm
- npm Intellisense
- Path Intellisense
- Prettier
- Sublime Text Keymap and Settings Importer
- WakaTime

### To find Home folder & save it to favourites

Go > Home. Cmd ^ to go up one folder & drag & drop into favourites sidebar

### To save screenshots in a folder

`defaults write com.apple.screencapture location drag_and_drop_folder_here`
