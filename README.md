# bt
Script to quickly enable/disable Bluetooth

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