# Geeklets-AduimStatus

![](screenshot.png)

Geeklet script for displaying a user's status in Adium with a little icon. Something I whipped up because I kept forgetting to change my GTalk status. It copies an image for the status, as well as writes out your status.


## Setup
1. Copy *Geeklet-Adium Status Icon* folder to `~/Library/Application Support`
2. Copy the *Adium.sh* file somewhere, I put it in `~/Documents/Geeklets`
3. Edit the **Adium.sh** and change `ACCOUNT_EMAIL_OR_USERNAME` to the username of that you want to check. 

## Usage
For these, you can set the refresh to about 30 seconds, or whatever you prefer.

1. Create a Shell Geeklet and set the command to `~/Documents/Geeklets/Adium.sh`
2. Create an Image Geeklet with the URL set to `file:///private/tmp/AdiumStatus.png` 
