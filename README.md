# Retrieve-Windows-Wifi-Passwords
Retreives the SSID names and passwords in cleartext for each Wifi network stored on the computer running the script. Will work with any user in Windows 10 but will need to be run as an administrator for Windows 7/8.

[![Twitter](https://img.shields.io/badge/twitter-@codingo__-blue.svg)](https://twitter.com/codingo_)

# Synopsis

Windows networks allow you to print the passwords of historical wifi networks that you have joined in cleartext with the following:

> netsh wlan show profiles

> netsh wlan show profile name=<profile> key=clear

This script aims to  take that information and output only the ssid and passwords in json format to allow for better integration with blue team operations, or for use with bash bunnies / rubber ducky like devices.

# Example Usage / Output
```
PS C:\> .\WifiInfo.ps1
[
    {
        "Password":  "password1",
        "SSID":  "The lan before time"
    },
    {
        "Password":  "hunter2",
        "SSID":  "Pretty fly for a wifi"
    }
]
```
