# bt
Script to quickly enable/disable Bluetooth on Mac OS-X. Compatible with bash or zsh.

## Installation

Clone the repo and run `setup.sh`:
~~~
git clone https://github.com/dch42/bt.git && cd ./bt
~~~
~~~
chmod +x ./setup.sh && ./setup.sh
~~~

`setup.sh` will create a personal binary directory at '/Users/$USER/bin' 
(if it doesn't already exist) and add it to $PATH, adding executable 
permissions and copying the script there as `bt`.

~~~
./setup.sh                         

Attempting installation of script 'bt'...

Creating dir /Users/user/bin...
Adding '/Users/user/bin' to $PATH in .zprofile...

[SUCCESS] Script bt installed at '/Users/user/bin/bt'!

Invoke with 'bt -h' for more information.
~~~

## Usage
~~~
Enable/Disable Bluetooth
Usage: bt [hed] 

  -h  help, show usage info
  -e  enable, turn Bluetooth on
  -d  disable, turn Bluetooth off
~~~

~~~
$ bt -e
To access defaults, you may be prompted for your password...
==> Bluetooth Enabled
Bluetooth daemon restarted.

$ bt -d
To access defaults, you may be prompted for your password...
==> Bluetooth Disabled
Bluetooth daemon restarted.
~~~