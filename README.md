# Retrieve-Windows-Wifi-Passwords
Retreives the SSID names and passwords in cleartext for each Wifi network stored on the computer running the script. Will work with any user in Windows 10 but will need to be run as an administrator for Windows 7/8.

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
