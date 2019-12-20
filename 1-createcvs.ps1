$List = Import-Csv .\Desktop\bigapl.csv -Delimiter ";"

$Farm = "172.19.167.130" 
Connect-VIServer $Farm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null
"HOSTNAME;OLDPORTGROUP;NEWPORTGROUP;MAC;OLDIP;NEWIP" > .\desktop\prova.csv 

$List | foreach {
    $name = $_.HOSTNAME.trim()
	$newip = $_.NEW.trim()
	$vm = get-vm $name
    $vm | Get-NetworkAdapter | where {$_.NetworkName -like '*pvlan*'} | %{
        $mac = $_.MacAddress
        $portgroup = $_.NetworkName
        $ip = (($vm|get-view).guest.net | where {$_.macaddress -like $mac}).ipaddress
        "$($vm.name);$portgroup;43 - 172.19.175.0/24 - PVlan Isolated;$mac;$ip;$newip" >> .\desktop\prova.csv
    }
}
