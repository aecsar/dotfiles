# Neovim tips and tricks

- Use gx to open a link under the cursor in your browser
- Use gl to open a lsp error message in a new window
- Use gi to go to previous cursor insert position and gv to previous cursor
visual mode position
- Use gq to break a long line down to an easier ready format
- Use <C-a> / <C-x> to increment / decrement word under the cursor
- Use ZZ to save and quit and ZQ to q!

# New computer setup

### Install tmux tpm plugins
```bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux run '~/.tmux/plugins/tpm/tpm'
```
Start a tmux session then type `<Ctrl-b> I` to fetch the plugins

### Install mongodb

Installation [guide](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-os-x/)

```bash

 brew tap mongodb/brew

 # replace 8.0 by the latest version
 brew install mongodb-community@8.0

 brew services start mongodb/brew/mongodb-community

 # Edit mongodb config to enable replica set
 # in order to make it working with prisma
 sudo nvim /usr/local/etc/mongod.conf

 # Add the following content at the root
 replication:
   replSetName: "rs01"

 # Restart the service to apply updated config
 brew services restart mongodb-community@8.0

 # Connect to mongosh
 mongosh

 # Initiate the replica set
 rs.initiate()

 # Check the status
 rs.status()

 # Exit mongosh
 exit

```

### Install kanata for keyboard home row setups

Ignore, follow this instead :

https://github.com/jtroo/kanata/issues/1264#issuecomment-2763085239 and
https://github.com/jtroo/kanata/discussions/1537

also, make sure to rename username in the .kanata.plist file to your own username

---------------

Article : https://precondition.github.io/home-row-mods

Kanata repo : https://github.com/jtroo/kanata?tab=readme-ov-file

Context video by dreamsofcode : https://www.youtube.com/watch?v=sLWQ4Gx88h4

Dreams Of Code installation guide repo : https://github.com/dreamsofcode-io/home-row-mods/tree/main/kanata/macos

For macOs, don't forget do download the `Karabiner VirtualHiDDevice Driver` (see on the kanata docs)

```bash
# Tip
# You can set the kanata.kbd file type to "lisp" (i.e. nvim : set filetype=lisp)

# install kanata with cargo
cargo install kanata

# copy the kanata configuration file
sudo cp ./dev.moustapha.kanata.plist /Library/LaunchDaemons/

# Give kanata the authorizations
echo "$(whoami) ALL=(ALL) NOPASSWD: /Users/aecsar/.cargo/bin/kanata" | sudo tee "/etc/sudoers.d/kanata" >/dev/null

# Once copied over, you can then load it using sudo

sudo launchctl load /Library/LaunchDaemons/dev.moustapha.kanata.plist
sudo launchctl start dev.moustapha.kanata
```
Now, kanata should be running whenever your macbook starts up!


```bash
# Now run kanata with the config file

sudo kanata -c kanata.kbd
```
------------

You may forcefully exit kanata by pressing lctl+spc+esc at any time

Current mappings :
    - A : left-super, S : left-alt, D : left-shift, F : left-ctrl
    - Mirrored on the right part

Troubleshooting : https://www.reddit.com/r/ErgoMechKeyboards/comments/1fojvif/comment/lv8z7iu/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

## CLI tools
ripgrep : better `grep`
fd : `find` alternative
zoxide : faster `cd`
