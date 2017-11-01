﻿$SHARED_NAME = "QlikSenseShare"
$SHARED_FOLDER = "C:\"+$SHARED_NAME
Write-Host 'Creating a shared folder on' $SHARED_FOLDER
New-Item $SHARED_FOLDER –type directory
New-SmbShare –Name $SHARED_NAME –Path $SHARED_FOLDER –FullAccess Everyone  

Write-Host 'Download and start Qlik Sense installer...'
# . { iwr -useb 'https://qliktechnologies365-my.sharepoint.com/personal/mbj_qlik_com/_layouts/15/guestaccess.aspx?docid=07856511345d94c879526d0704de32982&authkey=AeXFme3frDQT9_63NE_-XOY' -OutFile 'C:\Qlik_Sense_setup.exe' } | 

& 'c:\Qlik_Sense_setup.exe' -s -l ".\log.txt" spc='.\spc.cfg' userwithdomain='QLIK-AB0Q2URN5T\Qlikexternal' userpassword='Database3'