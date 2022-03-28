REM Clear Windows Cache
REM - Run the script as administrator

@echo off
echo ************************************
echo ************************************
echo **** Clear Windows Update Cache ****
echo ** This script will clear all Windows Update cache on your machine. GL! **
echo ************************************
echo ************************************

echo Checking if running as admin. If this fails you will receive an error message and the script will end...

net session

net stop "Windows Update" /y

echo Deleting Windows Update files...
rmdir C:\Windows\SoftwareDistribution\Download /s /q
mkdir C:\Windows\SoftwareDistribution\Download

net start "Windows Update" /y
