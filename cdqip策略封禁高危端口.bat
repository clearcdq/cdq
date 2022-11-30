@echo off
 
title 创建IP安全策略，屏蔽135、139 . . . 等端口 (win7，win10)
 
netsh ipsec static add policy name=cdq
 
netsh ipsec static add filterlist name=Filter1
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=135 protocol=TCP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=139 protocol=TCP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=445 protocol=TCP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=1443 protocol=TCP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=1444 protocol=TCP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=135 protocol=UDP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=139 protocol=UDP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=445 protocol=UDP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=1443 protocol=UDP
 
netsh ipsec static add filter filterlist=Filter1 srcaddr=any dstaddr=Me dstport=1444 protocol=UDP
 
netsh ipsec static add filteraction name=FilteraAtion1 action=block
 
netsh ipsec static add rule name=Rule1 policy=cdq filterlist=Filter1 filteraction=FilteraAtion1
 
netsh ipsec static set policy name=cdq assign=y
 
exit