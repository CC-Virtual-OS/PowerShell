$Lista =  Import-Csv .\Desktop\prova.csv -Delimiter ";"

$Farm = "172.19.167.130" 
Connect-VIServer $Farm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null


#SULLA DESTINAZIONE RINOMINO IL PORTGROUP CON LO STESSO IDENTICO NOME DEL SORGENTE 

$Lista | foreach {
	$name = $_.HOSTNAME.trim()
	$mac = $_.MAC.trim()
	$pg = $_.NEWPORTGROUP.trim()
	$newip = $_.NEWIP.trim()
	#echo "$name , $mac , $pg, $newip"
	$vm = get-vm $name
	#$vm |Get-NetworkAdapter |Where {$_.MacAddress -eq $mac } |Set-NetworkAdapter -NetworkName $pg -Confirm:$false
	$cmdbkp = "
			   mkdir -p /root/backup_network
               netstat -rn > /root/backup_network/netstat-rn.`$(date +%Y-%m-%d-%H:%M:%S)
               cp -prf /etc/sysconfig/network-scripts /root/backup_network/network-scripts
               cp -prf /etc/hosts /root/backup_network/hosts.`$(date +%Y-%m-%d-%H:%M:%S)
			   if [ -e /root/backup_network ];
			   then
			      echo `"Backup on `$HOSTNAME executed`"
			   else
			      echo `"Backup missing on `$HOSTNAME`"
			   fi
              "
	get-vm $vm |invoke-vmscript -guestUser root -guestPassword performance -ScriptText $cmdbkp
	#$int = "ip a | grep -i -B1 $mac | head -1 | awk '{ print `$2 }' | cut -f 1 -d ':'"
	$cmdnet = "
			   INT=`$(ip a | grep -i -B1 $mac | head -1 | awk '{ print `$2 }' | cut -f 1 -d ':')
			   #echo `"Hostname `$HOSTNAME ha ip `$INT`"
			   echo `"TYPE=Ethernet`" > /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"IPADDR=$newip`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"NETMASK=255.255.255.0`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"IPV4_FAILURE_FATAL=no`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"IPV6INIT=no`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"NAME=`$INT`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"DEVICE=`$INT`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   echo `"ONBOOT=YES`" >> /etc/sysconfig/network-scripts/ifcfg-`$INT
			   ifdown `$INT
			   ifup `$INT
			  "
	get-vm $vm |invoke-vmscript -guestUser root -guestPassword performance -ScriptText $cmdnet  
}              


$Farm = "172.19.253.10" 
Connect-VIServer $Farm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null


$Lista | foreach {
	$check = " echo `"hostname vale `$HOSTNAME`" "
	$name = $_.HOSTNAME.trim()
	$ip = $_.IP.trim()
	$vm = get-vm $name
	get-vm $vm |invoke-vmscript -guestUser root -guestPassword performance -ScriptText $check 
}
