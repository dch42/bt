# bt
Lazy script to enable/disable Bluetooth

## Installation

Clone the repo and run `setup.sh`:
~~~
git clone https://github.com/dch42/bt.git && cd ./bt
~~~

`setup.sh` will create a personal binary directory at '/Users/$USER/bin' (if it doesn't already exist) and add it to $PATH, adding executable permissions and copying the script there as `bt`.

## Usage
~~~
Enable/Disable Bluetooth
Usage: bt [hed] 

  -h  help, show usage info
  -e  enable, turn BlueTooth on
  -d  disable, turn BlueTooth off
~~~