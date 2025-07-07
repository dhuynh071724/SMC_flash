***** Important Notice *****


* Supermicro no longer supports the BIOS update method in DOS.

The following instructions describe the BIOS upgrade process of the H11
EPYC BIOS flash package.  Please follow the instructions carefully to
prevent the need of any RMA repair or replacement.

================================================
Standard BIOS Update Procedure under UEFI Shell
================================================

1. Save the BIOS update package to your computer.

2. Extract the files from the UEFI folder of the BIOS package to a USB stick. 
   (Note: The USB stick doesn't have to be bootable, but has to be formatted
   with the FAT/FAT32 file system.)

3. Plug the USB stick into a USB port, boot to the Build-In UEFI Shell, and
   type FLASH.nsh BIOSname#.### to start the BIOS update:

     Shell> fs0:
     fs0:\> cd UEFI
     fs0:\UEFI> flash.nsh H11DSU9.709_D32

4. Do not interrupt the process until the BIOS update is complete.

5. Perform an A/C power cycle after the message indicating the BIOS update
   has completed.

6. Go to the BIOS configuration, and restore the BIOS settings.

********* BIOS Naming Convention **********

BIOS name  : PPPPPSSY.MDD
PPPPP      : 5-Bytes for project name
SS         : 2-Bytes supplement for PPPPP (if applicable)
Y          : Year, 5 -> 2015, 6-> 2016, 7->2017
MDD        : Month + Date, for months, A -> Oct., B -> Nov., C -> Dec.

E.g., For BIOS with the build date, 7/09/2019:
        H11DSU-iN -> H11DSU9.709_D32
        


---Last Update on: 07/09/2019---