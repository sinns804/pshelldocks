#######################
#HELLO
#
#This is for Listing users from an AD Group. 
#
#By: Paul Braunschweig
#
#######################
#Version 1.0
#Details:
#
#This will look up an AD group and list you the users inside. It can include nested groups or not. 
#You will also be able to export the list to a text file. 
#
#######################

$group = Read-Host "What is the exact name of the group?"

$recurse = Read-Host "yes or no, would you like to see nested memberships as well?"



Import-Module ActiveDirectory

if ( $recurse -eq "yes" -or "y" ) { 
Get-ADGroupMember $group -Recursive | Format-Table -AutoSize 
$exportanswer = Read-Host "Would you like this list exported? yes or no"
        if ( $exportanswer -eq "yes" -or "y" ) {
Get-ADGroupMember $group -Recursive | Format-Table -AutoSize | Out-File C:\memberexport.txt -Verbose -Force
            write-host "A file called memberexport.txt has been created on the root of C with the results inside."
            pause
        }
    } 
else {
Get-ADGroupMember $group | Format-Table -AutoSize 
$exportanswer = Read-Host "Would you like this list exported? yes or no"
        if ( $exportanswer -eq "yes" -or "y" ) {
Get-ADGroupMember $group -Recursive | Format-Table -AutoSize | Out-File C:\memberexport.txt -Verbose -Force
            write-host "A file called memberexport.txt has been created on the root of C with the results inside."
            pause
        }
    }


clear
