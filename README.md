# AltSIM

Bash script for Gammu SMSD.

In your SMSD Configuration File, set the RunOnReceive option to the path of this script (gammu-receive.sh).

Replace ``<YOUR_TELEGRAM_BOT_TOKEN>` and `<YOUR_CHAT_ID>` according to your Telegram bot settings. Give the script execution privilege.

The script runs every time gammu-smsd.service receives new SMS. Gammu SMSD divides a long SMS to several parts. This script stitches SMS parts together, stores them in a string with the sender number as the first line, and pass them to Telegram API.
