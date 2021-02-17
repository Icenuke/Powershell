# --==[ Powershell ]==--
## Description:
> That are differents Powershell scripts and Cheatsheets

## Files:
> * CIR_v1.ps1 					-> Recorde and export many informations from the computer
> * EventFinder.ps1 			-> Record and export many 'Error' and 'Warning' event Windows
> * FreeSPace.ps1 				-> Show the free space from disks and the cumulate free space
> * PowershellCheatsheets.txt  	-> All is in the name x)
> * Encode&DecodeCommand.txt 	-> Command to encode and decode the Base64 powershell cli

## CheatSheet:
### Registry:
> * HKCU - HKEY_CURRENT_USER:
>>> Software\Microsoft\Windows\CurrentVersion\Run<br>
` Execute script/prog at boot`
>>> Software\Microsoft\Windows\CurrentVersion\RunOnce<br>
` Execute script/prog once time at reboot`
> * HKLM - HKEY_LOCAL_MACHINE:
>>> Software\Microsoft\Windows\CurrentVersion\Run<br>
` Execute script/prog at boot`
>>> Software\Microsoft\Windows\CurrentVersion\RunOnce<br>
` Execute script/prog once time at reboot`
> * HKROOT - HKEY_ROOT: 
>>> \*\shell<br>
` Add shortcut/command line a for file with mouse right click`
>>> Directory\Background\shell<br>
` Add shortcut/command line for a directory with mouse right click`
### Path:
> * Start binaries at boot 
>>> `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`<br>
>>> `C:\Users\[USER]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`<br>
