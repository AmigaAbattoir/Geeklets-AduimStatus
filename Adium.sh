#!/usr/bin/osascript
#
# This will check the status, copy an icon to tmp/, and report back what it is
#
tell application "System Events" to set thecount to the count of (processes whose name is "Adium")

if thecount = 1 then
    tell application "Adium"
        set myStatusTitle to status message of account "ACCOUNT_EMAIL_OR_USERNAME" as string
        set myStatusType to status type of account "ACCOUNT_EMAIL_OR_USERNAME" as string
    end tell

    if myStatusType = "available" then
        set myStatus to "Available"
    else if myStatusType = "away" then
        set myStatus to "Away"
    else if myStatusType = "invisible" then
        set myStatus to "Invisible"
    else if myStatusType = "idle" then
        set myStatus to "Idle"
    else
        set myStatus to "Is offline"
    end if

    do shell script "cp ~/Library/Application\\ Support/Geeklet-Adium\\ Status\\ Icons/" & myStatusType & ".png /tmp/AdiumStatus.png"
    if myStatusTitle = "" then
        set output to myStatus
    else
        set output to myStatus & " - " & myStatusTitle
    end if
else
    do shell script "cp ~/Library/Application\\ Support/Geeklet-Adium\\ Status\\ Icons/offline.png /tmp/AdiumStatus.png"
    set output to "Adium: Is not running"
end if