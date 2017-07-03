<#
.SYNOPSIS
    A script to gather Wifi SSIDs and passwords from the computer the script is run on.
.DESCRIPTION
    A script to gather Wifi SSIDs and passwords from the computer the script is run on. Uses the
    netsh wlan external command.
.EXAMPLE
    PS C:\> .\WifiInfo.ps1
    Gets both the SSID name and password for each Wifi network stored on the computer running the script.
.EXAMPLE
    $Results = .\WifiInfo.ps1
    Gathers the SSID and password storing them in a variable named $Results.
.NOTES
    Outputs as JSON of SSID name and passwod.
#>
$WirelessSSIDs = (netsh wlan show profiles | Select-String ': ' ) -replace ".*:\s+"
$WifiInfo = foreach($SSID in $WirelessSSIDs) {
    $Password = (netsh wlan show profiles name=$SSID key=clear | Select-String 'Key Content') -replace ".*:\s+"
    New-Object -TypeName psobject -Property @{"SSID"=$SSID;"Password"=$Password}
}  
$WifiInfo | ConvertTo-Json
