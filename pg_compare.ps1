$SrcFarm = "172.19.253.10"  #GNTN PRE-PRODUZIONE
Connect-VIServer $SrcFarm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null

$dvs = "dvSwitch-Production" #uso una singola variabile per il DVS perche su sorgente e destinazione il DVS di produzione si chiama nello stesso modo 
$srcpg = @()


$srcvirtual = Get-VDPortgroup -VDSwitch $dvs
$srcname = $srcvirtual | select Name

#foreach($n in $name){
#	$pg += $n
#}
$srcpg = @()
$srcname | foreach {
	$srcpg += $_.Name 
}

#
#
#$sname = [System.Web.HttpUtility]::UrlDecode($sname)
#$dname = [System.Web.HttpUtility]::UrlDecode($dname)

#echo "primo elemento vale $($pg[0])" # <-- parentesi per far accedere correttamente l'array non essendo una semplice variabile

Disconnect-VIServer $SrcFarm -confirm:$false

$DstFarm = "172.19.167.170" # DCS2 ITA
Connect-VIServer $DstFarm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null

$dstvirtual = Get-VDPortgroup -VDSwitch $dvs
$dstname = $dstvirtual | select Name

#foreach($n in $name){
#	$pg += $n
#}
$dstpg = @()
$dstname | foreach {
	$dstpg += $_.Name 
}

Disconnect-VIServer $DstFarm -confirm:$false
$l = $dstpg.length

Add-Type -AssemblyName System.Web

$srcpg | foreach {
	$sname = $_ 
	$count = 0
	$dstpg | foreach {
		$dname = $_
		$sname = [System.Web.HttpUtility]::UrlDecode($sname)
		$dname = [System.Web.HttpUtility]::UrlDecode($dname)
		if ($sname -eq $dname) {
			$count++
		}
		if ($dname -eq $dstpg[-1]) {
			if ( $count -eq 0 ) {
				echo "$sname manca su DCS2 ITA"
			}
		}
	}
}
