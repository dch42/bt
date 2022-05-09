# bt
Script to quickly enable/disable Bluetooth on MacOS.

## Installation 🔧

Clone the repo and run `setup.sh`:
~~~
git clone https://github.com/dch42/bt.git && cd ./bt
~~~

If running MacOS or Linux, and using bash or zsh, setup.sh can be run to quickly make the script available in $PATH.

Add exec permissions and run setup.sh:

~~~
chmod +x ./setup.sh && ./setup.sh
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