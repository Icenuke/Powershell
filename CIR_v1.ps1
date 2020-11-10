echo "--==[ Welcome to CIR ]==--"
echo "Computer Information Recorder"
echo "		Developped by Icenuke" ""

echo "	[+] Start recording Information"

# record basic computer information
$cinfo = gin

# record network adapter hardware information
$netHard = Get-NetAdapterHardwareInfo

# record general network adapter information
$netBase = Get-NetAdapter

# record advanced network adapter information 
$netAdvanced = Get-NetAdapterAdvancedProperty

# record information netIPaddress
$netAddr = Get-NetIPAddress

# record Net IP configuration
$netConf = Get-NetIPConfiguration

# record net Interface information
$netInt = Get-NetIPInterface

# record net neighbor
$netNeighbor = Get-NetNeighbor

# record net route
$netRoute = Get-NetRoute

# record net TCP Connection
$netTcp = Get-NetTCPConnection 

# record dns client cache
$dnsCache = Get-DnsClientCache

# record the module loaded
$module = Get-Module

# adding information in file
$hostname = hostname
$filename = "CIR_"+ $hostname +".txt"
echo Get-Host >> $filename
echo Get-LocalUser >> $filename
echo Get-LocalGroup >> $filename
echo Get-Date >> $filename
echo Get-Volume >> $filename
echo Get-Disk >> $filename
echo Get-PhysicalDisk >> $filename
echo $cinfo >> $filename
echo $netHard >> $filename
echo $netBase >> $filename
echo $netAdvanced >> $filename
echo $netAddr >> $filename
echo $netConf >> $filename
echo $netInt >> $filename
echo $netNeighbor >> $filename
echo $netRoute >> $filename
echo $netTcp >> $filename
echo $dnsCache >> $filename
echo $module >> $filename

$outPath = pwd
# record the second line of the pwd output
$path = ($outPath -split "\n", 2)
echo "	[>] You find the file in:"
echo "		|> $path\$filename"  ""

Read-Host "Tape Enter to finish"


# get-clipboard (interesting)

