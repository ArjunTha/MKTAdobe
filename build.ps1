# Navigate to the SSIS project directory
$repoRootPath = $PSScriptRoot
$projectDirPath = Join-Path -Path $repoRootPath -ChildPath "MKT_Adobe_New"
# Build the SSIS project using dtutil.exe
 $dtutilPath = "C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\CommonExtensions\Microsoft\SSIS\160\Binn\DTUtil.exe"  # Path to dtutil.exe on the machine
#$dtutilPath = "C:\Program Files\Microsoft SQL Server\160\DTS\Binn\DTUtil.exe"  # Path to dtutil.exe on the machine
$projectFilePath = Join-Path -Path $projectDirPath -ChildPath "MKT_Adobe_New.sln"  # Replace with the actual SSIS project file name (.sln or .dtproj)
$buildOutputDir = Join-Path -Path $repoRootPath -ChildPath "BuildOutput"  # Directory to store the build output
$buildCommand = "& `"$dtutilPath`" /File `"$projectFilePath`" /DestS `"$buildOutputDir`" /Build" 
Invoke-Expression $buildCommand
