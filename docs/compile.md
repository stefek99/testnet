
# Ubuntu

Make sure that your system is up-to-date and that you are running Ubuntu 16 or later:

(earlier versions of ubuntu requires manually installing the latest version of erlang, because the package manager installs an old version)

Use this command to check your version number
```
lsb_release -a
```

```
sudo apt-get update
```
and
```
sudo apt-get upgrade
```

For Ubuntu, install following dependencies:

```
sudo apt-get install erlang libncurses5-dev libssl-dev unixodbc-dev g++ git erlang-base-hipe
```

Next, download Aeternity Testnet. Optionally you can run next steps with a non-root user, for better security.

```
git clone https://github.com/aeternity/testnet.git
```
Now you can go into the directory, and compile the aeternity testnet.

```
cd testnet/
sh install.sh
```

Installation should be done. Now you can run your node.


# Apple Max OS X

Tested on 10.12.3

You should have https://brew.sh/ installed, that makes installing other packages easier.

```
brew install erlang
brew install rebar
```

Then follow instructions as for Ubuntu:
```
cd testnet/
sh install.sh
```

It may happen that a command is not working, check if it is `./` issue, we actually asked on [Stack Overflow](https://superuser.com/questions/1196687/how-to-run-shell-scripts-starting-with-on-ubuntu-and-mac-without-any-modifica) how to make it versatile. 