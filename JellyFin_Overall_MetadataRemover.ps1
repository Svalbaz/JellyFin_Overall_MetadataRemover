<#
SvalbazNet: Overall_MetaDataRemover.ps1

Target:		TV & Movies
Use: 		Script looks recursively at all folders in $rootTV & $rootMovies for any *.nfo, *.jpg, *.png, *.xml files and removes them
Reason: 	After a botched start with JellyFin I have thousands of random .nfo files and images for TV and Movies I'd since renamed and moved etc. So I wanted to clear them all out of both of the Shares prior to starting a new Scan of all the library in JellyFin

# SAFE MODE: This Script is saved in "SAFE MODE", so by default it will only Write-Host the result,
it will not actually Remove-Item until you remove the -WhatIf
#>

# ----- VARIABLES ----- #
# Paths to your TV & Movies directories
$rootTV = 		"\\192.168.1.184\TV\TV"
$rootMovies = 	"\\192.168.1.184\Movies\Movies"

# ----- SCRIPT ----- #
# Delete .nfo, .jpg, .xml, .png, etc. in the top-level directory only
Get-ChildItem -Path $rootTV -Recurse -File -Include *.nfo, *.jpg, *.png, *.xml | Remove-Item -WhatIf # SAFE MODE: REMOVE -WhatIf to Remove-Item

# Delete .nfo, .jpg, .xml, .png, etc. in the top-level directory only
Get-ChildItem -Path $rootMovies -Recurse -File -Include *.nfo, *.jpg, *.png, *.xml | Remove-Item -WhatIf # SAFE MODE: REMOVE -WhatIf to Remove-Item
