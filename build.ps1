param (
    [string]$Action="default",
    [string]$version
)
$here = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# $env:ChefDKInstall = "C:/opscode/chefdk"
# if(-not (Test-Path "$env:ChefDKInstall")){
#     iex ((new-object net.webclient).DownloadString("http://INSTALL_CHEFDK"))
# }

if(!(Test-Path $env:ChocolateyInstall\lib\Psake*)) { cinst psake -y }

$psakeDir = (dir $env:ChocolateyInstall\lib\Psake*)
if($psakeDir.length -gt 0) {$psakerDir = $psakeDir[-1]}
."$psakeDir\tools\psake.ps1" "$here/psake.ps1" $Action -ScriptPath $psakeDir\tools -parameters $PSBoundParameters
