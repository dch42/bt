#!/bin/sh

declare personal_bin="/Users/$USER/bin" 
declare cfg=".bash_profile"
declare script="bt"

declare grn="\e[0;92m"
declare red="\e[0;91m"
declare reset="\e[0m"

printf "\nAttempting install of script '$script'...\n"

[ -n $ZSH_VERSION ] && 
cfg=".zprofile" 

[[ -d $personal_bin ]] || 
mkdir $personal_bin && 
printf "Adding script '$script' to \$PATH in $cfg...\n" & 
echo export PATH="$personal_bin:\$PATH" >> /Users/$USER/$cfg 

chmod +x ./${script}.sh &&
cp ./${script}.sh $personal_bin/bt &&
printf "\n${grn}[SUCCESS]${reset} Script $script installed at '$personal_bin/$script'!\nInvoke with '$script -h' for more information.\n" ||
printf "\n${red}[ERROR]${reset} Something went wrong...\n"