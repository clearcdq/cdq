%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo off 
color 1f 
title 关闭20 135 137 138 139 445 1900端口
echo. 
echo. 
echo. 
echo 正在关闭20端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 20 - TCP" dir = in action = block protocol = TCP localport = 20
echo. 
netsh advfirewall firewall add rule name = "Disable port 20 - UDP" dir = in action = block protocol = UDP localport = 20
echo.
echo 正在关闭135端口 请稍候…
netsh advfirewall firewall add rule name = "Disable port 135 - TCP" dir = in action = block protocol = TCP localport = 135
echo. 
netsh advfirewall firewall add rule name = "Disable port 135 - UDP" dir = in action = block protocol = UDP localport = 135
echo. 
echo 正在关闭137端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 137 - TCP" dir = in action = block protocol = TCP localport = 137
echo. 
netsh advfirewall firewall add rule name = "Disable port 137 - UDP" dir = in action = block protocol = UDP localport = 137
echo. 
echo 正在关闭138端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 138 - TCP" dir = in action = block protocol = TCP localport = 138
echo. 
netsh advfirewall firewall add rule name = "Disable port 138 - UDP" dir = in action = block protocol = UDP localport = 138
echo. 
echo 正在关闭139端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 139 - TCP" dir = in action = block protocol = TCP localport = 139
echo. 
netsh advfirewall firewall add rule name = "Disable port 139 - UDP" dir = in action = block protocol = UDP localport = 139
echo. 
echo 正在关闭445端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 445 - TCP" dir = in action = block protocol = TCP localport = 445
echo. 
netsh advfirewall firewall add rule name = "Disable port 445 - UDP" dir = in action = block protocol = UDP localport = 445
echo.
echo 正在关闭1900端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 1900 - TCP" dir = in action = block protocol = TCP localport = 1900
echo. 
netsh advfirewall firewall add rule name = "Disable port 1900 - UDP" dir = in action = block protocol = UDP localport = 1900
echo.
echo 正在关闭3389端口 请稍候… 
netsh advfirewall firewall add rule name = "Disable port 3389 - TCP" dir = in action = block protocol = TCP localport = 3389
echo. 
netsh advfirewall firewall add rule name = "Disable port 3389 - UDP" dir = in action = block protocol = UDP localport = 3389
echo.
echo 按任意键退出
pause>nul