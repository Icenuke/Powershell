# this script search the event of application
echo "--==[ IceEventFinder ]==--"
echo ""

echo "/!\ "

echo "[+] List of event log:"

$cnt = 0
$arrName = Get-EventLog -list | Select-Object Log | ForEach {$_.Log}
foreach ($line in $arrName){
	$cnt += 1
	echo "	[$cnt] $line"

}

echo ""
$choice = read-host "[!] Enter number of event name"

$cnt2 = 0
foreach ($li in $arrName){
	$cnt2 += 1
	if ($cnt2 -eq $choice){
		echo $li
		$path = pwd
		$hostname = hostname
		$warnFile = $hostname +"WarnFile.txt"
		$errFile = $hostname +"ErrFile.txt"

		echo "[#] Record Warnings Events!!"
		Try {
			echo "==========================================="  >> $warnFile
			echo "			Warning Events"  >> $warnFile
			echo "===========================================" >> $warnFile
			Get-EventLog -LogName $li -EntryType Warning -ErrorAction STOP | Format-List >> $warnFile 

		}Catch {
			Write-Warning -Message "[!] No Warnings Events!!"

		}

		echo "[#] Record Errors Events!!"
		Try{
			echo "==========================================="  >> $errFile
			echo "			Errors Events"  >> $errFile
			echo "===========================================" >> $errFile
			Get-EventLog -LogName $li -EntryType Error -ErrorAction STOP | Format-List >> $errFile 
		
		}Catch {
			Write-Warning -Message "[!] No Errors Events!!"

		}

		echo "[!] $errFile and $warnFile Created in $path."

	}
}
