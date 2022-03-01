### Alessio Dini, 01/03/2022

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
$Form = New-Object system.Windows.Forms.Form
$Form.ClientSize = '910,345'
$Form.text = "MX7000 Vlan Tool"
$Form.TopMost = $false
$Form.MaximizeBox = $false
$Form.FormBorderStyle = 'Fixed3D'
$Form.Font = 'Microsoft Sans Serif,10'
$Form.StartPosition = "CenterScreen"




### immagine shiba 
$img = [System.Drawing.Image]::Fromfile('c:\downloads\dodge.png')
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width = $img.Size.Width
$pictureBox.Height = $img.Size.Height
$pictureBox.Image = $img
$form.controls.add($pictureBox)


### testo per le VLAN
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(330,20)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "blue"
$objLabel.Text = "VLAN ID"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)


### numero che identifica la riga 
$1objLabel = New-Object System.Windows.Forms.label
$1objLabel.Location = New-Object System.Drawing.Size(308,43)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$1objLabel.ForeColor = "blue"
$1objLabel.Text = "1"
$1objLabel.width = 10
$1objLabel.height = 30
$1objLabel.AutoSize = $true
$Form.Controls.Add($1objLabel)

### numero che identifica la riga 
$2objLabel = New-Object System.Windows.Forms.label
$2objLabel.Location = New-Object System.Drawing.Size(308,73)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$2objLabel.ForeColor = "blue"
$2objLabel.Text = "2"
$2objLabel.width = 10
$2objLabel.height = 30
$2objLabel.AutoSize = $true
$Form.Controls.Add($2objLabel)

### numero che identifica la riga 
$3objLabel = New-Object System.Windows.Forms.label
$3objLabel.Location = New-Object System.Drawing.Size(308,103)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$3objLabel.ForeColor = "blue"
$3objLabel.Text = "3"
$3objLabel.width = 10
$3objLabel.height = 30
$3objLabel.AutoSize = $true
$Form.Controls.Add($3objLabel)

### numero che identifica la riga 
$4objLabel = New-Object System.Windows.Forms.label
$4objLabel.Location = New-Object System.Drawing.Size(308,133)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$4objLabel.ForeColor = "blue"
$4objLabel.Text = "4"
$4objLabel.width = 10
$4objLabel.height = 30
$4objLabel.AutoSize = $true
$Form.Controls.Add($4objLabel)

### numero che identifica la riga 
$5objLabel = New-Object System.Windows.Forms.label
$5objLabel.Location = New-Object System.Drawing.Size(308,163)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$5objLabel.ForeColor = "blue"
$5objLabel.Text = "5"
$5objLabel.width = 10
$5objLabel.height = 30
$5objLabel.AutoSize = $true
$Form.Controls.Add($5objLabel)


### input box per le VLAN
$objTextboxVLAN1 = New-Object System.Windows.Forms.TextBox
$objTextboxVLAN1.Location = New-Object System.Drawing.Size(325,40)
$objTextboxVLAN1.Size = New-Object System.Drawing.Size(60,20)
$Form.Controls.Add($objTextboxVLAN1)

$objTextboxVLAN2 = New-Object System.Windows.Forms.TextBox
$objTextboxVLAN2.Location = New-Object System.Drawing.Size(325,70)
$objTextboxVLAN2.Size = New-Object System.Drawing.Size(60,20)
$Form.Controls.Add($objTextboxVLAN2)

$objTextboxVLAN3 = New-Object System.Windows.Forms.TextBox
$objTextboxVLAN3.Location = New-Object System.Drawing.Size(325,100)
$objTextboxVLAN3.Size = New-Object System.Drawing.Size(60,20)
$Form.Controls.Add($objTextboxVLAN3)

$objTextboxVLAN4 = New-Object System.Windows.Forms.TextBox
$objTextboxVLAN4.Location = New-Object System.Drawing.Size(325,130)
$objTextboxVLAN4.Size = New-Object System.Drawing.Size(60,20)
$Form.Controls.Add($objTextboxVLAN4)

$objTextboxVLAN5 = New-Object System.Windows.Forms.TextBox
$objTextboxVLAN5.Location = New-Object System.Drawing.Size(325,160)
$objTextboxVLAN5.Size = New-Object System.Drawing.Size(60,20)
$Form.Controls.Add($objTextboxVLAN5)
,


### testo per la Description
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(450,20)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "blue"
$objLabel.Text = "DESCRIPTION"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)


### input box per la Description 
$objTextboxDESC1 = New-Object System.Windows.Forms.TextBox
$objTextboxDESC1.Location = New-Object System.Drawing.Size(405,40)
$objTextboxDESC1.Size = New-Object System.Drawing.Size(200,20)
$Form.Controls.Add($objTextboxDESC1)

$objTextboxDESC2 = New-Object System.Windows.Forms.TextBox
$objTextboxDESC2.Location = New-Object System.Drawing.Size(405,70)
$objTextboxDESC2.Size = New-Object System.Drawing.Size(200,20)
$Form.Controls.Add($objTextboxDESC2)

$objTextboxDESC3 = New-Object System.Windows.Forms.TextBox
$objTextboxDESC3.Location = New-Object System.Drawing.Size(405,100)
$objTextboxDESC3.Size = New-Object System.Drawing.Size(200,20)
$Form.Controls.Add($objTextboxDESC3)

$objTextboxDESC4 = New-Object System.Windows.Forms.TextBox
$objTextboxDESC4.Location = New-Object System.Drawing.Size(405,130)
$objTextboxDESC4.Size = New-Object System.Drawing.Size(200,20)
$Form.Controls.Add($objTextboxDESC4)

$objTextboxDESC5 = New-Object System.Windows.Forms.TextBox
$objTextboxDESC5.Location = New-Object System.Drawing.Size(405,160)
$objTextboxDESC5.Size = New-Object System.Drawing.Size(200,20)
$Form.Controls.Add($objTextboxDESC5)


### testo per la Subnet  
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(670,20)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "blue"
$objLabel.Text = "SUBNET"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)


### input box per la Subnet 
$objTextboxSUB1 = New-Object System.Windows.Forms.TextBox
$objTextboxSUB1.Location = New-Object System.Drawing.Size(625,40)
$objTextboxSUB1.Size = New-Object System.Drawing.Size(150,20)
$Form.Controls.Add($objTextboxSUB1)

$objTextboxSUB2 = New-Object System.Windows.Forms.TextBox
$objTextboxSUB2.Location = New-Object System.Drawing.Size(625,70)
$objTextboxSUB2.Size = New-Object System.Drawing.Size(150,20)
$Form.Controls.Add($objTextboxSUB2)

$objTextboxSUB3 = New-Object System.Windows.Forms.TextBox
$objTextboxSUB3.Location = New-Object System.Drawing.Size(625,100)
$objTextboxSUB3.Size = New-Object System.Drawing.Size(150,20)
$Form.Controls.Add($objTextboxSUB3)

$objTextboxSUB4 = New-Object System.Windows.Forms.TextBox
$objTextboxSUB4.Location = New-Object System.Drawing.Size(625,130)
$objTextboxSUB4.Size = New-Object System.Drawing.Size(150,20)
$Form.Controls.Add($objTextboxSUB4)

$objTextboxSUB5 = New-Object System.Windows.Forms.TextBox
$objTextboxSUB5.Location = New-Object System.Drawing.Size(625,160)
$objTextboxSUB5.Size = New-Object System.Drawing.Size(150,20)
$Form.Controls.Add($objTextboxSUB5)




### testo per il dvSwitch  
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(810,20)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "blue"
$objLabel.Text = "VSWITCH"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)



### combo per il dvSwitch

$dvSwitchComboBox1 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox1.width = 100
$dvSwitchComboBox1.height = 20
$dvSwitchComboBox1.location = New-Object System.Drawing.Point(795,40)
$dvSwitchComboBox1.DropDownStyle = "DropDownList"
$dvSwitchComboBox1.SelectedItem = $dvSwitchComboBox1.Items[2]
@('Admin','Production') | ForEach-Object {[void] $dvSwitchComboBox1.Items.Add($_)}
$dvSwitchComboBox1.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox1)

$dvSwitchComboBox2 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox2.width = 100
$dvSwitchComboBox2.height = 20
$dvSwitchComboBox2.location = New-Object System.Drawing.Point(795,70)
$dvSwitchComboBox2.DropDownStyle = "DropDownList"
$dvSwitchComboBox2.SelectedItem = $dvSwitchComboBox2.Items[2]
@('Admin','Production') | ForEach-Object {[void] $dvSwitchComboBox2.Items.Add($_)}
$dvSwitchComboBox2.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox2)

$dvSwitchComboBox3 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox3.width = 100
$dvSwitchComboBox3.height = 20
$dvSwitchComboBox3.location = New-Object System.Drawing.Point(795,100)
$dvSwitchComboBox3.DropDownStyle = "DropDownList"
$dvSwitchComboBox3.SelectedItem = $dvSwitchComboBox3.Items[2]
@('Admin','Production') | ForEach-Object {[void] $dvSwitchComboBox3.Items.Add($_)}
$dvSwitchComboBox3.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox3)

$dvSwitchComboBox4 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox4.width = 100
$dvSwitchComboBox4.height = 20
$dvSwitchComboBox4.location = New-Object System.Drawing.Point(795,130)
$dvSwitchComboBox4.DropDownStyle = "DropDownList"
$dvSwitchComboBox4.SelectedItem = $dvSwitchComboBox4.Items[0]
@('Admin','Production') | ForEach-Object {[void] $dvSwitchComboBox4.Items.Add($_)}
$dvSwitchComboBox4.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox4)

$dvSwitchComboBox5 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox5.width = 100
$dvSwitchComboBox5.height = 20
$dvSwitchComboBox5.location = New-Object System.Drawing.Point(795,160)
$dvSwitchComboBox5.DropDownStyle = "DropDownList"
$dvSwitchComboBox5.SelectedItem = $dvSwitchComboBox5.Items[2]
@('Admin','Production') | ForEach-Object {[void] $dvSwitchComboBox5.Items.Add($_)}
$dvSwitchComboBox5.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox5)


#testo per le farm
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(480,210)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "blue"
$objLabel.Text = "POD"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)



#combo per le farm
$dvSwitchComboBox6 = New-Object system.Windows.Forms.ComboBox
$dvSwitchComboBox6.width = 350
$dvSwitchComboBox6.height = 20
$dvSwitchComboBox6.location = New-Object System.Drawing.Point(325,230)
$dvSwitchComboBox6.DropDownStyle = "DropDownList"
$dvSwitchComboBox6.SelectedItem = $dvSwitchComboBox6.Items[2]
@('vcpodct-pdc.ops.g2-networks.net (172.23.54.130)','vcpodwv-rgs.ops.g2-networks.net (172.23.55.130)', 'vcpod-ita-dcs2.lottomatica.net (172.19.167.170)', 'vcpod-mi.ops.g2-networks.net (172.23.52.130)', 'vcpod-itz-dcs2.ops.g2-networks.net (172.19.167.130)') | ForEach-Object {[void] $dvSwitchComboBox6.Items.Add($_)}
$dvSwitchComboBox6.enabled = $true 
$Form.Controls.Add($dvSwitchComboBox6)



#testo per i radio 
$objLabel = New-Object System.Windows.Forms.label
$objLabel.Location = New-Object System.Drawing.Size(700,210)
###$objLabel.Size = New-Object System.Drawing.Size(600,20)
#$objLabel.BackColor = "Transparent"
$objLabel.ForeColor = "red"
$objLabel.Text = "Action"
$objLabel.width = 700
$objLabel.height = 70
$objLabel.AutoSize = $true
$Form.Controls.Add($objLabel)

# radio button
$RadioButton1 = New-Object System.Windows.Forms.RadioButton
$RadioButton1.Location = '700,230'
$RadioButton1.size = '100,20'
$RadioButton1.Checked = $true 
$RadioButton1.Text = "Create"
$Form.Controls.Add($RadioButton1)

$RadioButton2 = New-Object System.Windows.Forms.RadioButton
$RadioButton2.Location = '700,250'
$RadioButton2.size = '100,20'
$RadioButton2.Checked = $false 
$RadioButton2.Text = "Delete"
$Form.Controls.Add($RadioButton2)


function stampa{
	$1vlan = $objTextboxVLAN1.Text
	$2vlan = $objTextboxVLAN2.Text
	$3vlan = $objTextboxVLAN3.Text
	$4vlan = $objTextboxVLAN4.Text
	$5vlan = $objTextboxVLAN5.Text
	$1desc = $objTextboxDESC1.Text
	$2desc = $objTextboxDESC2.Text
	$3desc = $objTextboxDESC3.Text
	$4desc = $objTextboxDESC4.Text
	$5desc = $objTextboxDESC5.Text
	$1subnet = $objTextboxSUB1.Text 
	$2subnet = $objTextboxSUB2.Text
	$3subnet = $objTextboxSUB3.Text
	$4subnet = $objTextboxSUB4.Text
	$5subnet = $objTextboxSUB5.Text
	$1vswitch = $dvSwitchComboBox1.Text 
	$2vswitch = $dvSwitchComboBox2.Text
	$3vswitch = $dvSwitchComboBox3.Text
	$4vswitch = $dvSwitchComboBox4.Text
	$5vswitch = $dvSwitchComboBox5.Text
	$pod = $dvSwitchComboBox6.Text
	$2contaerrore = 0
	$3contaerrore = 0
	$4contaerrore = 0
	$5contaerrore = 0
	$1vlandup = 0
	$2vlandup = 0
	$3vlandup = 0
	$4vlandup = 0
	$5vlandup = 0
	$1descdup = 0
	$2descdup = 0
	$3descdup = 0
	$4descdup = 0
	$5descdup = 0
	$1subnetdup = 0
	$2subnetdup = 0
	$3subnetdup = 0
	$4subnetdup = 0
	$5subnetdup = 0
	$1subdescdup = 0
	$2subdescdup = 0
	$3subdescdup = 0
	$4subdescdup = 0
	$5subdescdup = 0
	$1numerovlan = 0 #per il range 1-4094 della vlan
	$2numerovlan = 0 #per il range 1-4094 della vlan
	$3numerovlan = 0 #per il range 1-4094 della vlan
	$4numerovlan = 0 #per il range 1-4094 della vlan
	$5numerovlan = 0 #per il range 1-4094 della vlan
	$1subnetslash = 0 #per matchare il carattere '/' nel campo subnet 
	$2subnetslash = 0 #per matchare il carattere '/' nel campo subnet
	$3subnetslash = 0 #per matchare il carattere '/' nel campo subnet
	$4subnetslash = 0 #per matchare il carattere '/' nel campo subnet
	$5subnetslash = 0 #per matchare il carattere '/' nel campo subnet
	
	
	
	#verifico la prima linea di dettagli da inserire ( i miei trip mentali )
	if(($1vlan -ne '') -or ($1subnet -ne '') -or ($1desc -ne '') -or ($1vswitch -ne '') -or ($pod -ne ''))
	{
		if(($1desc -eq '') -or ($1subnet -eq '') -or ($1vswitch -eq '') -or ($pod -eq ''))
		{
			write-host ""
			write-host -ForegroundColor red "`You must fill all the details about the first portgroup"
		}
	}
	if(($1vlan -ne '') -and ($1subnet -ne '') -and ($1desc -ne '') -and ($1vswitch -ne '') -and ($pod -ne ''))
	{				
		if(($2vlan -ne '') -or ($2subnet -ne '') -or ($2desc -ne '') -or ($2vswitch -ne ''))
		{
			if(($2desc -eq '') -or ($2subnet -eq '') -or ($2vswitch -eq ''))
			{
				write-host ""
				write-host -ForegroundColor red "`You must fill all the details about the second portgroup"
				$2contaerrore++
			}
		}
		if(($3vlan -ne '') -or ($3subnet -ne '') -or ($3desc -ne '') -or ($3vswitch -ne ''))
		{
			if(($3desc -eq '') -or ($3subnet -eq '') -or ($3vswitch -eq ''))
			{
				write-host ""
				write-host -ForegroundColor red "`You must fill all the details about the third portgroup"
				$3contaerrore++
			}
		}
		if(($4vlan -ne '') -or ($4subnet -ne '') -or ($4desc -ne '') -or ($4vswitch -ne ''))
		{
			if(($4desc -eq '') -or ($4subnet -eq '') -or ($4vswitch -eq ''))
			{	
				write-host ""
				write-host -ForegroundColor red "`You must fill all the details about the fourth portgroup"
				$4contaerrore++
			}
		}

		if(($5vlan -ne '') -or ($5subnet -ne '') -or ($5desc -ne '') -or ($5vswitch -ne ''))
		{
			if(($5desc -eq '') -or ($5subnet -eq '') -or ($5vswitch -eq ''))
			{
				write-host ""
				write-host -ForegroundColor red "`You must fill all the details about the fifth portgroup"
				$5contaerrore++
			}
		}
	}
	

	if(($2vlan -ne '') -and ($2subnet -ne '') -and ($2desc -ne '') -and ($2vswitch -ne '') -or ($2vlan -eq '') -and ($2subnet -eq '') -and ($2desc -eq '') -and ($2vswitch -eq ''))
	{
		$2contaerrore = 0
	}
	if(($3vlan -ne '') -and ($3subnet -ne '') -and ($3desc -ne '') -and ($3vswitch -ne '') -or ($3vlan -eq '') -and ($3subnet -eq '') -and ($3desc -eq '') -and ($3vswitch -eq ''))
	{
		$3contaerrore = 0
	}
	if(($4vlan -ne '') -and ($4subnet -ne '') -and ($4desc -ne '') -and ($4vswitch -ne '') -or ($4vlan -eq '') -and ($4subnet -eq '') -and ($4desc -eq '') -and ($4vswitch -eq ''))
	{
		$4contaerrore = 0
	}
	if(($5vlan -ne '') -and ($5subnet -ne '') -and ($5desc -ne '') -and ($5vswitch -ne '') -or ($5vlan -eq '') -and ($5subnet -eq '') -and ($5desc -eq '') -and ($5vswitch -eq ''))
	{
		$5contaerrore = 0
	}


	# controllo vlan duplicate 
	if($1vlan -ne '') 
	{	
			if(($1vlan -eq $2vlan) -or ($1vlan -eq $3vlan) -or ($1vlan -eq $4vlan) -or ($1vlan -eq $5vlan)) 
			{
				$1vlandup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated VLANS"
			}
			else
			{
				$1vlandup = 0
			}
	}
	if($2vlan -ne '') 
	{	
			if(($2vlan -eq $1vlan) -or ($2vlan -eq $3vlan) -or ($2vlan -eq $4vlan) -or ($2vlan -eq $5vlan)) 
			{
				$2vlandup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated VLANS"
			}
			else
			{
				$2vlandup = 0
			}
	}
	if($3vlan -ne '') 
	{	
			if(($3vlan -eq $1vlan) -or ($3vlan -eq $2vlan) -or ($3vlan -eq $4vlan) -or ($3vlan -eq $5vlan)) 
			{
				$3vlandup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated VLANS"
			}
			else
			{
				$3vlandup = 0
			}
	}
	if($4vlan -ne '') 
	{	
			if(($4vlan -eq $1vlan) -or ($4vlan -eq $2vlan) -or ($4vlan -eq $3vlan) -or ($4vlan -eq $5vlan)) 
			{
				$4vlandup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated VLANS"
			}
			else
			{
				$4vlandup = 0
			}
	}
	if($5vlan -ne '') 
	{	
			if(($5vlan -eq $1vlan) -or ($5vlan -eq $2vlan) -or ($5vlan -eq $3vlan) -or ($5vlan -eq $4vlan)) 
			{
				$5vlandup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated VLANS"
			}
			else
			{
				$5vlandup = 0
			}
	}

		
	
	#controllo subnet duplicate 
	if($1subnet -ne '') 
	{	
			if(($1subnet -eq $2subnet) -or ($1subnet -eq $3subnet) -or ($1subnet -eq $4subnet) -or ($1subnet -eq $5subnet))
			{
				$1subnetdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated SUBNETS"
			}
			else
			{
				$1subnetdup = 0
			}
	}
	if($2subnet -ne '') 
	{	
			if(($2subnet -eq $1subnet) -or ($2subnet -eq $3subnet) -or ($2subnet -eq $4subnet) -or ($2subnet -eq $5subnet))
			{
				$2subnetdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated SUBNETS"
			}
			else
			{
				$2subnetdup = 0
			}
	}
	if($3subnet -ne '') 
	{	
			if(($3subnet -eq $1subnet) -or ($3subnet -eq $2subnet) -or ($3subnet -eq $4subnet) -or ($3subnet -eq $5subnet))
			{
				$3subnetdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated SUBNETS"
			}
			else
			{
				$3subnetdup = 0
			}
	}
	if($4subnet -ne '') 
	{	
			if(($4subnet -eq $1subnet) -or ($4subnet -eq $2subnet) -or ($4subnet -eq $3subnet) -or ($4subnet -eq $5subnet))
			{
				$4subnetdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated SUBNETS"
			}
			else
			{
				$4subnetdup = 0
			}
	}
	if($5subnet -ne '') 
	{	
			if(($5subnet -eq $1subnet) -or ($5subnet -eq $2subnet) -or ($5subnet -eq $3subnet) -or ($5subnet -eq $4subnet))
			{
				$5subnetdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated SUBNETS"
			}
			else
			{
				$5subnetdup = 0
			}
	}
	
	
	#controllo description duplicate
	if($1desc -ne '') 
	{	
			if(($1desc -eq $2desc) -or ($1desc -eq $3desc) -or ($1desc -eq $4desc) -or ($1desc -eq $5desc))
			{
				$1descdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated DESCRIPTIONS"
			}
			else
			{
				$1descdup = 0
			}
	}	
	if($2desc -ne '') 
	{	
			if(($2desc -eq $1desc) -or ($2desc -eq $3desc) -or ($2desc -eq $4desc) -or ($2desc -eq $5desc))
			{
				$2descdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated DESCRIPTIONS"
			}
			else
			{
				$2descdup = 0
			}
	}
	if($3desc -ne '') 
	{	
			if(($3desc -eq $1desc) -or ($3desc -eq $2desc) -or ($3desc -eq $4desc) -or ($3desc -eq $5desc))
			{
				$3descdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated DESCRIPTIONS"
			}
			else
			{
				$3descdup = 0
			}
	}
	if($4desc -ne '') 
	{	
			if(($4desc -eq $1desc) -or ($4desc -eq $2desc) -or ($4desc -eq $3desc) -or ($4desc -eq $5desc))
			{
				$4descdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated DESCRIPTIONS"
			}
			else
			{
				$4descdup = 0
			}
	}
	if($5desc -ne '') 
	{	
			if(($5desc -eq $1desc) -or ($5desc -eq $2desc) -or ($5desc -eq $3desc) -or ($5desc -eq $4desc))
			{
				$5descdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote duplicated DESCRIPTIONS"
			}
			else
			{
				$5descdup = 0
			}
	}
	
	#controllo che le description non siano duplicate nelle subnet o viceversa
	if($1desc -ne '') 
	{	
			if(($1desc -eq $1subnet) -or ($1desc -eq $2subnet) -or ($1desc -eq $3subnet) -or ($1desc -eq $4subnet) -or ($1desc -eq $5subnet))
			{
				$1subdescdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote same SUBNETS and DESCRIPTIONS"
			}
			else
			{
				$1subdescdup = 0
			}
	}	
	if($2desc -ne '') 
	{	
			if(($2desc -eq $1subnet) -or ($2desc -eq $2subnet) -or ($2desc -eq $3subnet) -or ($2desc -eq $4subnet) -or ($2desc -eq $5subnet))
			{
				$2subdescdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote same SUBNETS and DESCRIPTIONS"
			}
			else
			{
				$2subdescdup = 0
			}
	}
	if($3desc -ne '') 
	{	
			if(($3desc -eq $1subnet) -or ($3desc -eq $2subnet) -or ($3desc -eq $3subnet) -or ($3desc -eq $4subnet) -or ($3desc -eq $5subnet))
			{
				$3subdescdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote same SUBNETS and DESCRIPTIONS"
			}
			else
			{
				$3subdescdup = 0
			}
	}
	if($4desc -ne '') 
	{	
			if(($4desc -eq $1subnet) -or ($4desc -eq $2subnet) -or ($4desc -eq $3subnet) -or ($4desc -eq $4subnet) -or ($4desc -eq $5subnet))
			{
				$4subdescdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote same SUBNETS and DESCRIPTIONS"
			}
			else
			{
				$4subdescdup = 0
			}
	}
	if($5desc -ne '') 
	{	
			if(($5desc -eq $1subnet) -or ($5desc -eq $2subnet) -or ($5desc -eq $3subnet) -or ($5desc -eq $4subnet) -or ($5desc -eq $5subnet))
			{
				$5subdescdup = 1
				write-host ""
				write-host -ForegroundColor red "ATTENTION: you wrote same SUBNETS and DESCRIPTIONS"
			}
			else
			{
				$5subdescdup = 0
			}
	}



	#controllo che il range delle vlan sia 1-4094
	if($1vlan -ne '')
	{
		if(($1vlan -ge 1 ) -and ($1vlan -lt 4095))
		{
			$1numerovlan = 0 
		}
		else
		{
			write-host ""
			write-host -ForegroundColor red "the first VLAN ID is not in the range 1-4094."
			$1numerovlan = 1
		}
	}
	if($2vlan -ne '')
	{
		if(($2vlan -ge 1 ) -and ($2vlan -lt 4095))
		{
			$2numerovlan = 0 
		}
		else
		{
			write-host ""
			write-host -ForegroundColor red "the second VLAN ID is not in the range 1-4094."
			$2numerovlan = 1
		}
	}
	if($3vlan -ne '')
	{
		if(($3vlan -ge 1 ) -and ($3vlan -lt 4095))
		{
			$3numerovlan = 0 
		}
		else
		{
			write-host ""
			write-host -ForegroundColor red "the third VLAN ID is not in the range 1-4094."
			$3numerovlan = 1
		}
	}
	if($4vlan -ne '')
	{
		if(($4vlan -ge 1 ) -and ($4vlan -lt 4095))
		{
			$4numerovlan = 0 
		}
		else
		{
			write-host ""
			write-host -ForegroundColor red "the fourth VLAN ID is not in the range 1-4094."
			$4numerovlan = 1
		}
	}
	if($5vlan -ne '')
	{
		if(($5vlan -ge 1 ) -and ($5vlan -lt 4095))
		{
			$5numerovlan = 0 
		}
		else
		{
			write-host ""
			write-host -ForegroundColor red "the fifth VLAN ID is not in the range 1-4094."
			$5numerovlan = 1
		}
	}
	
	
	#controllo che la subnet contenga almeno il carattere "/"
	if($1subnet -ne '') 
	{
		if($1subnet -match "/")
		{
			$1subnetslash = 0
		}
		else
		{
			$1subnetslash = 1
			write-host ""
			write-host -ForegroundColor red "ATTENTION: The first subnet doesn't match the CIDR format. Please write it with the '/' prefix, for example 192.168.23.0/24"
		}
	}
	if($2subnet -ne '') 
	{
		if($2subnet -match "/")
		{
			$2subnetslash = 0
		}
		else
		{
			$2subnetslash = 1
			write-host ""
			write-host -ForegroundColor red "ATTENTION: The second subnet doesn't match the CIDR format. Please write it with the '/' prefix, for example 192.168.23.0/24"
		}
	}
	if($3subnet -ne '') 
	{
		if($3subnet -match "/")
		{
			$3subnetslash = 0
		}
		else
		{
			$3subnetslash = 1
			write-host ""
			write-host -ForegroundColor red "ATTENTION: The third subnet doesn't match the CIDR format. Please write it with the '/' prefix, for example 192.168.23.0/24"
		}
	}
	if($4subnet -ne '') 
	{
		if($4subnet -match "/")
		{
			$4subnetslash = 0
		}
		else
		{
			$4subnetslash = 1
			write-host ""
			write-host -ForegroundColor red "ATTENTION: The fourth subnet doesn't match the CIDR format. Please write it with the '/' prefix, for example 192.168.23.0/24"
		}
	}
	if($5subnet -ne '') 
	{
		if($5subnet -match "/")
		{
			$5subnetslash = 0
		}
		else
		{
			$5subnetslash = 1
			write-host ""
			write-host -ForegroundColor red "ATTENTION: The fifth subnet doesn't match the CIDR format. Please write it with the '/' prefix, for example 192.168.23.0/24"
		}
	}
	
	#verifico che siano compilati almeno i campi minimi per avviare le attività per 1 portgroup su un POD
	if(($1vlan -eq '' ) -or ($1desc -eq '' ) -or ($1subnet -eq '') -or ($1vswitch -eq '') -or ($pod -eq ''))
	{
		write-host -ForegroundColor red "`You must insert at least: a VLAN ID, a DESCRIPTION, a SUBNET, select the dvSwitch and select a POD"
	}
	else
	{
		#prima di collegarsi al vcenter non deve esserci nessun errore durante il provisioning manuale dei portgroup 
		if(($2contaerrore -eq 0) -and ($3contaerrore -eq 0) -and ($4contaerrore -eq 0) -and ($5contaerrore -eq 0) -and ($1vlandup -eq 0) -and ($2vlandup -eq 0)  -and ($3vlandup -eq 0)  -and ($4vlandup -eq 0)  -and ($5vlandup -eq 0) -and ($1descdup -eq 0) -and ($2descdup -eq 0) -and ($3descdup -eq 0) -and ($4descdup -eq 0) -and ($5descdup -eq 0) -and ($1subnetdup -eq 0) -and ($2subnetdup -eq 0) -and ($3subnetdup -eq 0) -and ($4subnetdup -eq 0) -and ($5subnetdup -eq 0) -and ($1subdescdup -eq 0) -and ($2subdescdup -eq 0) -and ($3subdescdup -eq 0) -and ($4subdescdup -eq 0) -and ($5subdescdup -eq 0) -and ($1numerovlan -eq 0) -and ($2numerovlan -eq 0) -and ($3numerovlan -eq 0) -and ($4numerovlan -eq 0) -and ($5numerovlan -eq 0) -and ($1subnetslash -eq 0) -and ($2subnetslash -eq 0) -and ($3subnetslash -eq 0) -and ($4subnetslash -eq 0) -and ($5subnetslash -eq 0))                   
		{
		#mi collego al pod selezionato
		$Farm = $pod.Split(" ")[0]
		write-host ""
		write-host "Connecting to the POD $Farm"
		Connect-VIServer $Farm -User virtosadmin -Password "Password10" -WarningAction SilentlyContinue | Out-Null


		#verifico che la vlan o le vlan in questione passate allo script non siano presenti sul pod. Ignoro i Trunk all di ICT Security 
		$vlanconf = Get-VDPortgroup | select VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }
		$vlanconf | foreach {
			$vlanid = $_.VlanConfiguration.VlanId
			if($1vlan -eq $vlanid)
			{
				$1usedpg = Get-VDPortgroup | where { $_.VlanConfiguration.VlanId -like "$1vlan" }
				if($1usedpg -eq '')
				{
					write-host -ForegroundColor red "`ATTENTION: The VLAN $1vlan is already defined on a portgroup on $pod but I'm unable to understand the portgroup name"
					write-host -ForegroundColor red "`You must verify it MANUALLY! Begin with the command: 'Get-VDPortgroup | select Name,VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }'"
				}
				else
				{
					write-host -ForegroundColor red "`ATTENTION: on the pod $pod the VLAN $1vlan is already defined on the portgroup $1usedpg"
				}
			}
			if($2vlan -eq $vlanid)
			{
				$2usedpg = Get-VDPortgroup | where { $_.VlanConfiguration.VlanId -like "$2vlan" }
				if($2usedpg -eq '')
				{
					write-host -ForegroundColor red "`ATTENTION: The VLAN $2vlan is already defined on a portgroup on $pod but I'm unable to understand the portgroup name"
					write-host -ForegroundColor red "`You must verify it MANUALLY! Begin with the command: 'Get-VDPortgroup | select Name,VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }'"
				}
				else
				{
					write-host -ForegroundColor red "`ATTENTION: on the pod $pod the VLAN $2vlan is already defined on the portgroup $2usedpg"
				}
			}
			if($3vlan -eq $vlanid)
			{
				$3usedpg = Get-VDPortgroup | where { $_.VlanConfiguration.VlanId -like "$3vlan" }
				if($3usedpg -eq '')
				{
					write-host -ForegroundColor red "`ATTENTION: The VLAN $3vlan is already defined on a portgroup on $pod but I'm unable to understand the portgroup name"
					write-host -ForegroundColor red "`You must verify it MANUALLY! Begin with the command: 'Get-VDPortgroup | select Name,VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }'"
				}
				else
				{
					write-host -ForegroundColor red "`ATTENTION: on the pod $pod the VLAN $3vlan is already defined on the portgroup $3usedpg"
				}
			}
			if($4vlan -eq $vlanid)
			{
				$4usedpg = Get-VDPortgroup | where { $_.VlanConfiguration.VlanId -like "$4vlan" }
				if($4usedpg -eq '')
				{
					write-host -ForegroundColor red "`ATTENTION: The VLAN $4vlan is already defined on a portgroup on $pod but I'm unable to understand the portgroup name"
					write-host -ForegroundColor red "`You must verify it MANUALLY! Begin with the command: 'Get-VDPortgroup | select Name,VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }'"
				}
				else
				{
					write-host -ForegroundColor red "`ATTENTION: on the pod $pod the VLAN $4vlan is already defined on the portgroup $4usedpg"
				}
			}
			if($5vlan -eq $vlanid)
			{
				$5usedpg = Get-VDPortgroup | where { $_.VlanConfiguration.VlanId -like "$5vlan" }
				if($5usedpg -eq '')
				{
					write-host -ForegroundColor red "`ATTENTION: The VLAN $5vlan is already defined on a portgroup on $pod but I'm unable to understand the portgroup name"
					write-host -ForegroundColor red "`You must verify it MANUALLY! Begin with the command: 'Get-VDPortgroup | select Name,VlanConfiguration | where { $_.VlanConfiguration -notlike "*0-4094*" }'"
				}
				else
				{
					write-host -ForegroundColor red "`ATTENTION: on the pod $pod the VLAN $5vlan is already defined on the portgroup $5usedpg"
				}
			}
		}
		
		
		if($RadioButton1.Checked -eq $true)
		{
			$create = 1
		}
		if($RadioButton2.Checked -eq $true)
		{
			$delete = 1
		}	
			
		write-host ""
		write-host "Disconnecting from POD $Farm"
		Disconnect-VIServer $Farm -confirm:$false
		write-host ""
		write-host "You can close the script"
		}
	}		
	
}


# ok button
$objButton = New-Object System.Windows.Forms.Button
$objButton.Location = New-Object System.Drawing.Size(800,235)
$objButton.Size = New-Object System.Drawing.Size(75,23)
$objButton.Text = "GO!!"
$objButton.Add_Click({stampa})
$Form.Controls.Add($objButton)







# form status bar  
$objStatusBar = New-Object System.Windows.Forms.StatusBar
$objStatusBar.Name = "statusBar"
$objStatusBar.Text = "Ready"
$Form.Controls.Add($objStatusBar)

  
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){& $button_click}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape")
{$Form.Close()}})



$Form.Topmost = $True
$Form.Add_Shown({$Form.Activate()})
$Form.ShowDialog() 
