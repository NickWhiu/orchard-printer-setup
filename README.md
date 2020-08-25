# Orchard printer setup

<img src="https://media.giphy.com/media/3hetVnNSl0IBa/source.gif" />

## For MacOS

This works in macOS Catalina v10.15.x, may or may not work on v10.14 or older.

1. Open a terminal
    - Press `CMD`+`Space` keys to open application launcher
    - Search "terminal"
    - Open the Terminal app
2. Run the install script
    - In the terminal, copy/paste the following text: `/bin/bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/NickWhiu/orchard-printer-setup/master/install-orchard-printer-mac.sh')"`
    - press `Enter` in the terminal to run the above command
    - It will ask for your password in the terminal. Type it in, but note it will not appear in the terminal (not even as `********`). Press enter.
    - ![screenshot-password.png](screenshot-password.png)
    - It will likely ask permission, allow it by clicking `OK`
3. Add the printer
    - The `Printers & Scanners` settings dialog will have opened
    - Click the `[+]` button on the bottom/left of settings dialog
    - Click the `IP` icon with the globe icon
    - ![screenshot-IP.png](screenshot-IP.png)
    - Select the `Address` input box and enter `10.1.0.20`
    - Select `Protocol` dropdown and choose `Line Printer Daemon - LPD`
    - Click `Add` button at bottom/right
4. Open the system print dialog
    - Try to print something such as this instruction page you are reading now
    - `File` => `Print...`
    - In Chrome and some other applications, you need to get to the system print dialog. Only the system print dialog works at the Orchard. For Chrome, click `More settings` => `Print using system dialog`
    - ![screenshot-printer-dialog.png](screenshot-printer-dialog.png)
5. Configure printer presets
    - If you see `Show details` button click it
    - ensure the `Printer` dropdown has `10.1.0.20` printer selected
    - click click the dropdown that says `Layout` and select `Job Log`
    - Enable the `Enable User Code` checkbox
    - Select the `User Code` input box and type your printer user code (ask the Orchard)
6. Save black & white preset
    - click the dropdown that says `Job Log` and select `Printer Features`
    - Ensure the `Color Mode` is set to `Black and White`
    - Open the `Presets` dropdown and click `Save Current Settings as Preset`
    - Enter `Orchard - black & white` and click `OK`
7. Save colour preset
    - Ensure the `Color Mode` is set to `Color`
    - Open the `Presets` dropdown and click `Save Current Settings as Preset`
    - Enter `Orchard - colour` and click `OK`
   
If everything went well, you can print stuff (using the system print dialog) by selecting either b&w or colour preset and click Print.

## For other operating systems

Ask the Orchard staff. They have an easy process for Windows.
