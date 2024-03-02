@echo off
setlocal EnableExtensions EnableDelayedExpansion

:main_menu
cls
echo -----------------------------------
echo Windows Command-Line Tool Launcher
echo -----------------------------------
echo 1. Network Tools
echo 2. System Information
echo 3. Process Management
echo 4. Firewall Settings
echo 5. User and Share Management
echo 6. Scheduled Tasks
echo 7. System Management
echo 8. Exit
echo -----------------------------------
set /p main_choice="Choose a category: "

if "%main_choice%"=="1" goto network_menu
if "%main_choice%"=="2" goto system_info_menu
if "%main_choice%"=="3" goto process_management_menu
if "%main_choice%"=="4" goto firewall_menu
if "%main_choice%"=="5" goto user_share_management_menu
if "%main_choice%"=="6" goto scheduled_tasks_menu
if "%main_choice%"=="7" goto system_management_menu
if "%main_choice%"=="8" goto exit

echo Invalid category. Please try again.
goto main_menu

:network_menu
cls
echo -----------------------------------
echo Network Tools
echo -----------------------------------
echo 1. Display IP Configuration (ipconfig)
echo 2. Ping a host (ping)
echo 3. Traceroute (tracert)
echo 4. List network adapters (netsh interface)
echo 5. Change network adapter settings (netsh interface ip)
echo 6. List network connections (netsh wlan)
echo 7. Manage wireless networks (netsh wlan)
echo 8. Back to main menu
echo -----------------------------------
set /p network_choice="Choose an option: "

if "%network_choice%"=="1" goto ipconfig
if "%network_choice%"=="2" goto ping
if "%network_choice%"=="3" goto tracert
if "%network_choice%"=="4" goto netsh_interface
if "%network_choice%"=="5" goto netsh_interface_ip
if "%network_choice%"=="6" goto netsh_wlan
if "%network_choice%"=="7" goto netsh_wlan_manage
if "%network_choice%"=="8" goto main_menu

echo Invalid option. Please try again.
goto network_menu

:system_info_menu
cls
echo -----------------------------------
echo System Information
echo -----------------------------------
echo 1. Display system information (systeminfo)
echo 2. List system drivers (driverquery)
echo 3. List system environment variables (set)
echo 4. List system time and date (time /t & date /t)
echo 5. List system power settings (powercfg /l)
echo 6. List system performance counters (typeperf)
echo 7. Back to main menu
echo -----------------------------------
set /p system_info_choice="Choose an option: "

if "%system_info_choice%"=="1" goto systeminfo
if "%system_info_choice%"=="2" goto driverquery
if "%system_info_choice%"=="3" goto set_env
if "%system_info_choice%"=="4" goto time_date
if "%system_info_choice%"=="5" goto powercfg_list
if "%system_info_choice%"=="6" goto typeperf
if "%system_info_choice%"=="7" goto main_menu

echo Invalid option. Please try again.
goto system_info_menu

:process_management_menu
cls
echo -----------------------------------
echo Process Management
echo -----------------------------------
echo 1. List running processes (tasklist)
echo 2. Find and kill a process (taskkill)
echo 3. Back to main menu
echo -----------------------------------
set /p process_management_choice="Choose an option: "

if "%process_management_choice%"=="1" goto tasklist
if "%process_management_choice%"=="2" goto taskkill
if "%process_management_choice%"=="3" goto main_menu

echo Invalid option. Please try again.
goto process_management_menu

:firewall_menu
cls
echo -----------------------------------
echo Firewall Settings
echo -----------------------------------
echo 1. Firewall settings (netsh advfirewall)
echo 2. Back to main menu
echo -----------------------------------
set /p firewall_choice="Choose an option: "

if "%firewall_choice%"=="1" goto netsh_advfirewall
if "%firewall_choice%"=="2" goto main_menu

echo Invalid option. Please try again.
goto firewall_menu

:user_share_management_menu
cls
echo -----------------------------------
echo User and Share Management
echo -----------------------------------
echo 1. List user accounts (net user)
echo 2. Manage user accounts (net user /?)
echo 3. List sharing settings (net share)
echo 4. Manage shares (net share /?)
echo 5. Back to main menu
echo -----------------------------------
set /p user_share_management_choice="Choose an option: "

if "%user_share_management_choice%"=="1" goto net_user
if "%user_share_management_choice%"=="2" goto net_user_manage
if "%user_share_management_choice%"=="3" goto net_share
if "%user_share_management_choice%"=="4" goto net_share_manage
if "%user_share_management_choice%"=="5" goto main_menu

echo Invalid option. Please try again.
goto user_share_management_menu

:scheduled_tasks_menu
cls
echo -----------------------------------
echo Scheduled Tasks
echo -----------------------------------
echo 1. List scheduled tasks (schtasks /query /fo LIST /v)
echo 2. Manage scheduled tasks (schtasks /?)
echo 3. Back to main menu
echo -----------------------------------
set /p scheduled_tasks_choice="Choose an option: "

if "%scheduled_tasks_choice%"=="1" goto schtasks_query
if "%scheduled_tasks_choice%"=="2" goto schtasks_manage
if "%scheduled_tasks_choice%"=="3" goto main_menu

echo Invalid option. Please try again.
goto scheduled_tasks_menu

:system_management_menu
cls
echo -----------------------------------
echo System Management
echo -----------------------------------
echo 1. Open Windows Event Viewer (eventvwr)
echo 2. Open Device Manager (devmgmt.msc)
echo 3. Open Disk Management (diskmgmt.msc)
echo 4. Open Local Users and Groups (lusrmgr.msc)
echo 5. Open Services (services.msc)
echo 6. List, start, or stop services (sc)
echo 7. Manage system drivers (pnputil /?)
echo 8. Manage system environment variables (setx /?)
echo 9. Set system time and date (time & date)
echo 10. Manage system power settings (powercfg /?)
echo 11. Manage system performance counters (typeperf /?)
echo 12. Back to main menu
echo -----------------------------------
set /p system_management_choice="Choose an option: "

if "%system_management_choice%"=="1" goto eventvwr
if "%system_management_choice%"=="2" goto devmgmt
if "%system_management_choice%"=="3" goto diskmgmt
if "%system_management_choice%"=="4" goto lusrmgr
if "%system_management_choice%"=="5" goto services
if "%system_management_choice%"=="6" goto sc
if "%system_management_choice%"=="7" goto pnputil
if "%system_management_choice%"=="8" goto setx
if "%system_management_choice%"=="9" goto set_time_date
if "%system_management_choice%"=="10" goto powercfg
if "%system_management_choice%"=="11" goto typeperf_manage
if "%system_management_choice%"=="12" goto main_menu

echo Invalid option. Please try again.
goto system_management_menu

:ipconfig
cls
echo ---------------------------
echo IP Configuration (ipconfig)
echo ---------------------------
ipconfig
pause
goto network_menu

:ping
cls
set /p host="Enter the host to ping: "
echo ---------------------------
echo Pinging %host% (ping)
echo ---------------------------
ping %host%
pause
goto network_menu

:tracert
cls
set /p host="Enter the host for traceroute: "
echo ---------------------------
echo Traceroute to %host% (tracert)
echo ---------------------------
tracert %host%
pause
goto network_menu

:systeminfo
cls
echo ---------------------------
echo System Information (systeminfo)
echo ---------------------------
systeminfo
pause
goto system_info_menu

:driverquery
cls
echo ---------------------------------------
echo List System Drivers (driverquery)
echo ---------------------------------------
driverquery
pause
goto system_info_menu

:set_env
cls
echo ---------------------------------------
echo List System Environment Variables (set)
echo ---------------------------------------
set
pause
goto system_info_menu

:time_date
cls
echo ---------------------------------------
echo List System Time and Date (time /t & date /t)
echo ---------------------------------------
time /t & date /t
pause
goto system_info_menu

:powercfg_list
cls
echo ---------------------------------------
echo List System Power Settings (powercfg /l)
echo ---------------------------------------
powercfg /l
pause
goto system_info_menu

:typeperf
cls
echo ---------------------------------------
echo List System Performance Counters (typeperf)
echo ---------------------------------------
typeperf
pause
goto system_info_menu

:tasklist
cls
echo ---------------------------
echo List Running Processes (tasklist)
echo ---------------------------
tasklist
pause
goto process_management_menu

:taskkill
cls
set /p process="Enter the process name or PID to kill: "
echo ---------------------------
echo Killing process %process% (taskkill)
echo ---------------------------
taskkill /F /IM %process%
pause
goto process_management_menu

:netsh_advfirewall
cls
echo ---------------------------------------
echo Firewall Settings (netsh advfirewall)
echo ---------------------------------------
netsh advfirewall show allprofiles
echo.
set /p choice="Enter a command (e.g., 'set rule name=... new enable=yes') or press ENTER to go back: "
if not "%choice%"=="" netsh advfirewall %choice%
pause
goto firewall_menu

:netsh_interface
cls
echo ---------------------------------------
echo List Network Adapters (netsh interface)
echo ---------------------------------------
netsh interface show interface
pause
goto network_menu

:netsh_interface_ip
cls
echo ---------------------------------------
echo Change Network Adapter Settings (netsh interface ip)
echo ---------------------------------------
set /p choice="Enter a command (e.g., 'set address name=... source=static addr=...') or press ENTER to go back: "
if not "%choice%"=="" netsh interface ip %choice%
pause
goto network_menu

:netsh_wlan
cls
echo ---------------------------------------
echo List Network Connections (netsh wlan)
echo ---------------------------------------
netsh wlan show interfaces
pause
goto network_menu

:netsh_wlan_manage
cls
echo ---------------------------------------
echo Manage Wireless Networks (netsh wlan)
echo ---------------------------------------
set /p choice="Enter a command (e.g., 'connect name=...') or press ENTER to go back: "
if not "%choice%"=="" netsh wlan %choice%
pause
goto network_menu

:net_user
cls
echo ---------------------------------------
echo List User Accounts (net user)
echo ---------------------------------------
net user
pause
goto user_share_management_menu

:net_user_manage
cls
echo ---------------------------------------
echo Manage User Accounts (net user /?)
echo ---------------------------------------
net user /?
pause
goto user_share_management_menu

:net_share
cls
echo ---------------------------------------
echo List Sharing Settings (net share)
echo ---------------------------------------
net share
pause
goto user_share_management_menu

:net_share_manage
cls
echo ---------------------------------------
echo Manage Shares (net share /?)
echo ---------------------------------------
net share /?
pause
goto user_share_management_menu

:schtasks_query
cls
echo ---------------------------------------
echo List Scheduled Tasks (schtasks /query /fo LIST /v)
echo ---------------------------------------
schtasks /query /fo LIST /v
pause
goto scheduled_tasks_menu

:schtasks_manage
cls
echo ---------------------------------------
echo Manage Scheduled Tasks (schtasks /?)
echo ---------------------------------------
schtasks /?
pause
goto scheduled_tasks_menu

:eventvwr
cls
echo ---------------------------------------
echo Open Windows Event Viewer (eventvwr)
echo ---------------------------------------
start eventvwr
goto system_management_menu

:devmgmt
cls
echo ---------------------------------------
echo Open Device Manager (devmgmt.msc)
echo
start devmgmt.msc
goto system_management_menu

:diskmgmt
cls
echo ---------------------------------------
echo Open Disk Management (diskmgmt.msc)
echo ---------------------------------------
start diskmgmt.msc
goto system_management_menu

:lusrmgr
cls
echo ---------------------------------------
echo Open Local Users and Groups (lusrmgr.msc)
echo ---------------------------------------
start lusrmgr.msc
goto system_management_menu

:services
cls
echo ---------------------------------------
echo Open Services (services.msc)
echo ---------------------------------------
start services.msc
goto system_management_menu

:sc
cls
echo ---------------------------------------
echo List, start, or stop services (sc)
echo ---------------------------------------
set /p choice="Enter a command (e.g., 'query', 'start', 'stop') or press ENTER to go back: "
if not "%choice%"=="" sc %choice%
pause
goto system_management_menu

:pnputil
cls
echo ---------------------------------------
echo Manage System Drivers (pnputil /?)
echo ---------------------------------------
pnputil /?
pause
goto system_management_menu

:setx
cls
echo ---------------------------------------
echo Manage System Environment Variables (setx /?)
echo ---------------------------------------
setx /?
pause
goto system_management_menu

:set_time_date
cls
echo ---------------------------------------
echo Set System Time and Date (time & date)
echo ---------------------------------------
time
date
goto system_management_menu

:powercfg
cls
echo ---------------------------------------
echo Manage System Power Settings (powercfg /?)
echo ---------------------------------------
powercfg /?
pause
goto system_management_menu

:typeperf_manage
cls
echo ---------------------------------------
echo Manage System Performance Counters (typeperf /?)
echo ---------------------------------------
typeperf /?
pause
goto system_management_menu

:exit
echo Goodbye!
endlocal
