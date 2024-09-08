# COM Port terminal utility
# Creates connection w/ MCU via onboard USB-COM interface

$portArray = [System.IO.Ports.SerialPort]::getportnames()
Write-Host "Select a port to connect:"
Write-Host $portArray