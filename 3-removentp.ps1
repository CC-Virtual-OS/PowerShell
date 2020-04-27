#Cancella tutti i server ntp configurati su un ESX e ne configura di nuovi

$Farm = "vcl8prep-sp.lottomatica.net"
Connect-VIServer $Farm -User virtosadmin -Password "xxx" -WarningAction SilentlyContinue | Out-Null

echo "connecting to $($Farm)"

$newntp1 = "172.26.99.212"
$newntp2 = "172.24.110.200"

$esx = get-vmhost 


$esx | foreach {
    $name = $_
	$current = get-vmhostntpserver -VMHost $name
	remove-VmHostNtpServer -VMHost $name -NtpServer $current -Confirm:$false
	Add-VmHostNtpServer -VMHost $name -NtpServer $newntp1
    Add-VmHostNtpServer -VMHost $name -NtpServer $newntp2
	Get-VmHostService -VMHost $name | Where-Object {$_.key -eq "ntpd"} | restart-VMHostService -Confirm:$false
}

Disconnect-VIServer $Farm -confirm:$false
