$Farm = "172.19.220.130" 
Connect-VIServer $Farm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null

$Date = Get-Date

#Quanti giorni indietro deve controllare
$HAVMrestartold = 1

$report = Get-VIEvent -maxsamples 100000 -Start ($Date).AddDays(-$HAVMrestartold) -type warning | Where {$_.FullFormattedMessage -like "*restarted*"} |select objectName, CreatedTime,FullFormattedMessage |sort CreatedTime -Descending
$repo = $report |%{

$time = $_.CreatedTime
Get-VM $_.objectName | select Name,PowerState,@{N="HA Restart"; E={$time}}
}
$repo
$repo | Export-Csv "HA-Restart.csv" -NoTypeInformation -UseCulture 
