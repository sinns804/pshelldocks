#######################
#HELLO
#
#This is for updating windows. 
#
#By: Paul Braunschweig
#
#######################
#Version 1.0
#Details:
#
#Copies the update module to the correct location and then imports and runs the the scripts. 
#
#######################




#Move the Module to the modules dir if it is not already there

#$here = $PSScriptRoot

#Copy-Item -Path "$here\PSWindowsUpdate" -Recurse -Destination C:\Windows\System32\WindowsPowerShell\v1.0\Modules -Verbose


#import the Module
Import-Module PSWindowsUpdate -Verbose

#Start the updates
Get-WUInstall
