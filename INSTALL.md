![BEWD_Logo](assets/BEWD_Logo.png)

# BEWD Installfest

We are going to install the tools necessarily to program with Ruby and Rails on your computer.

If you are unsure or run into problems during installation, don't worry; We will finish up any of the loose ends during Class Zero.


## Verify your install

If you have already experimented with ruby or rails before, verify your versions are correct for this upcoming class. If you can see the correct version numbers when you run the commands in Terminal below, you are good to go. 

**Verify you are running 2.0 of ruby**

`ruby -v`

Should be "ruby 2.1.2" (other versions above 2.1.0 are acceptable)

**Verify you are running version 3 of Rails**

`rails -v`

Should be "rails 4.1.4". If you do not have the correct version of Ruby or Rails, follow the instructions below to install it.

# Mac Instructions


**Table of Contents**

* Install XCode
* Install Homebrew
* Install git
* Install RVM and Rails

## Install Xcode

* Create an account on Mac App Store if you haven't already.
* Upgrade your OS to the latest version (if possible using the Mac App Store; you must be on 10.7 or above)
* Open the Mac App Store and install Xcode
￼￼￼￼￼￼￼￼￼￼￼￼￼* Open Xcode, Choose Preferences, Downloads and then Install The Command Line Tools


**Note: If you are an advanced user, you can skip this step and download the latest Command Line Tools from Apple's developer site.**


## Install Homebrew

**Note: DO NOT use `sudo` to run this! It will mess up your future.**

* Open up the application Terminal and run the command below to install Homebrew

`ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`

* Copy and paste this in the command line: `echo 'export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"' >> ~/.bash_profile`


* Verify that your Homebrew installed by running `brew --version`. It should be version 0.9.5.


## Sign up for Github

Sign up for an account on http://www.github.com. We will be using github.com for for keeping track of code. 

**Note: Remember your username and email, you will need it in the next step.**

## Installing git

* Install git: `brew install git`
* Follow these instructions to update your git information using the username and email address you used to sign up for Github.

```
￼git config --global user.name "YOUR-USERNAME"
git config --global user.email YOUR-EMAIL-ADDRESS
git config --global credential.helper cache
```

## Installing RVM & Ruby

RVM is a Ruby Version Manager. It lets you easily switch between ruby versions.

**Install RVM with Ruby** 

*If you get stuck, see http://www.rvm.io for full instructions.*

Running the following command will install the latest version of Ruby as well as the RVM envionment into your session.

`\curl -L https://get.rvm.io | bash -s stable --ruby`

**Note: Do note use `sudo` for this command!**

## Installing Rails

**Note: Do note use `sudo` for this command!**

`gem install rails -v 4.1.4`


# Ubuntu Instructions

**Install curl**

`sudo apt-get install curl`

**Install git**

`sudo apt-get install git-core`

**Install RVM**

`\curl -L https://get.rvm.io | bash -s stable --ruby`

**Add .profile as a source in your .bash_profile**

`echo "source ~/.profile" >> /home/developer/.bash_profile`

**Login Shell preference**

1. In terminal go to Edit -> Profile Preferences
1. Under Title and Command check Run command as a login shell 
1. Close preferences and restart terminal

**Install Rails**

`gem install rails -v 4.1.4`

**Update git config information**

```
￼git config --global user.name "YOUR-USERNAME"
git config --global user.email YOUR-EMAIL-ADDRESS
git config --global credential.helper cache
```
# Windows Instructions

**Installing Ruby**

The install on Windows is actually very with the bundle from http://rubyinstaller.org

Just be sure to grab the 2.0.0-p481 version, as that will be the version we will be using in class. This will set up your environment and you can start running ruby files right away.

**Installing Rails**

`gem install rails -v 4.1.4`

**Installing Gow**

We will be using the command line a lot here. Gow is a bunch of unix command line tools ported to Windows. It will make it easy to follow in class with the same commands as your Mac buddies.

https://github.com/bmatzelle/gow/wiki
