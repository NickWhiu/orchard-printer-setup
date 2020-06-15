# Orchard printer setup

## For MacOS

1. Open a terminal
    - Press `CMD`+`Space` keys to open application launcher
    - Search "terminal"
    - Open the Terminal app
2. Run the install script
    - In the terminal, copy/paste the following text: `/bin/bash -c "$(curl -fsSL 'https://raw.githubusercontent.com/Developers-Institute/orchard-printer-setup/master/install-orchard-printer-mac.sh?token=AAPJLDT6SLSU3TCNE7DCSK265VKUK')"`
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
    - Select the `User Code` input box and type `7098`
6. Save black & white preset
    - click the dropdown that says `Job Log` and select `Printer Features`
    - Ensure the `Color Mode` is set to `Black and White`
    - Open the `Presets` dropdown and click `Save Current Settings as Preset`
    - Enter `Orchard - black & white` and click `OK`
7. Save colour preset
    - Ensure the `Color Mode` is set to `Color`
    - Open the `Presets` dropdown and click `Save Current Settings as Preset`
    - Enter `Orchard - colour` and click `OK`
   


## For other operating systems

As we've only used MacOS so far, no other operating systems have been catered for by us yet.
Figure a process out using Orchard staff, and document it here.
