@echo off
cls
echo Fixing Time Synchronization Issue...

:: Stop the time service
echo Stopping Windows Time service...
net stop w32time

:: Unregister and re-register the service
echo Unregistering Windows Time service...
w32tm /unregister

echo Registering Windows Time service...
w32tm /register

:: Set service to start automatically
echo Setting time service to start automatically...
sc config w32time start= auto

:: Start the time service
echo Starting Windows Time service...
net start w32time

:: Resetting time configuration with reliable NTP servers
echo Resetting time configuration...
w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com,0x8 time.nist.gov,0x8 time.google.com,0x8" /reliable:YES /update

:: Clear time cache and rediscover sources
echo Clearing time cache...
w32tm /config /update
w32tm /resync /rediscover

:: Set correct time zone (optional, change as needed)
echo Setting time zone to SE Asia Standard Time (UTC+7)...
tzutil /s "SE Asia Standard Time"

:: Open NTP port (UDP 123) in firewall
echo Opening NTP port in firewall...
netsh advfirewall firewall add rule name="Allow NTP" protocol=UDP dir=out localport=123 action=allow

:: Force resync with servers
echo Resyncing time...
w32tm /resync

:: Display status
echo Checking status...
w32tm /query /status
w32tm /query /configuration

echo.
echo Time synchronization fix completed!
