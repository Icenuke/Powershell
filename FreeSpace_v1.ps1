# Script to calculate the free space of any logical disk 
write-host "--==[ IceFreeSpace ]==--"
write-host "[+] Calcul the free space of any disk
and the cumulated free space in this computer.
"

# create WMI object instance
$elements = Get-WmiObject Win32_LogicalDisk

$totalSize = 0 # init var

# loop to iter in all disk
foreach ( $disk in $elements ) {
    # calculate the size in Giga
    $size = $disk.freespace / (1024*1024*1024)
    $size = [math]::round($size, 1) # around the size to 1 decimal

    $name=$disk.Name
    $totalSize = $totalSize + $size

    write-host "	[>] $name Disk have $size Go of free space"
}

write-host "	[>] Cumulated free space size -> $totalSize Go"

# check if usb key in pluged and
# if an usb key is, then check the free space  
# gwmi Win32_USBControllerDevice <- show usb device who plugged before and used wmiControler
