# Neovim tips and tricks

- Use gx to open a link under the cursor in your browser

# New computer setup

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
