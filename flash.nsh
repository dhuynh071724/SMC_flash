echo -off

set Debug_Mode 0

if %1 == "" then
   goto Err_Print
endif

if not exist %1 then 
   goto No_File
endif

if %2 == "-d" then 
   set Debug_Mode 1
endif

if exist afuefi.smc then 
   mv afuefi.smc afuefix64.efi
endif

echo **************************************************************************
echo *
echo *  Program BIOS...
echo *
echo **************************************************************************

afuefix64.efi %1 /K /RLC:F

afuefix64.efi %1 /P /B /N /R /RLC:F

echo **************************************************************************
echo *
echo *  Program Non Boot BIOS...
echo *
echo **************************************************************************

afuefix64.efi %1 /x /atr /SSB:{NONBOOT16M} /RLC:e

mv afuefix64.efi afuefi.smc

goto END

:No_File
echo **************************************************************************
echo *
echo *  %1 doesn't exist and please double check.
echo *
echo **************************************************************************
goto END

:Err_Print
echo **************************************************************************
echo *
echo "*  Usage:"
echo "*         flash.nsh romfile"
echo *
echo **************************************************************************

:END

if exist afuefix64.efi then 
   mv afuefix64.efi afuefi.smc
endif

:END1

