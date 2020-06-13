#!/bin/bash

# usage: installdmg https://example.com/path/to/pkg.dmg
function installdmg {
    set -x
    curl $1 > ./pkg.dmg
    listing=$(sudo hdiutil attach ./pkg.dmg | grep Volumes)
    volume=$(echo "$listing" | cut -f 3)
    if [ -e "$volume"/*.app ]; then
      sudo cp -rf "$volume"/*.app /Applications
    elif [ -e "$volume"/*.pkg ]; then
      package=$(ls -1 "$volume" | grep .pkg | head -1)
      sudo installer -pkg "$volume"/"$package" -target /
    fi
    sudo hdiutil detach "$(echo "$listing" | cut -f 1)"
    rm -rf ./pkg.dmg
    set +x
}

installdmg 'http://support.ricoh.com/bb/pub_e/dr_ut_e/0001316/0001316696/V3900/Ricoh_PS_Printers_Vol4_EXP_LIO_3.9.0.0.dmg'

#cupsctl WebInterface=yes

open -b "com.apple.systempreferences" /System/Library/PreferencePanes/PrintAndScan.prefPane/

osascript -e 'tell application (path to frontmost application as text) to display dialog "Printer is nearly setup:\n => Click plus [+] icon\n => IP\n => enter 10.1.0.20 into address\n => select LPD protocol\n => Add\n => Now go to print a document, open the system print dialogue with all the options\n => click dropdown with Layout\n => select Job Log\n => click `Enable user code`\n => enter 7098 in User Code field\n => Click presets dropdown\n => Save as preset\n => PRINT!!" buttons {"OK"} with icon stop'