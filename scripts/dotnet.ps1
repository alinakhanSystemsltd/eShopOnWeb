tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder 
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj --logger:"trx;logFileName=unitReports.xml" --collect "Code coverage" /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:CoverletOutput="./TestResults/" --results-directory C:/DotNetFolder/BuildReports
$destinationFolder = "C:/DotNetFolder/BuildReports" 
if (!(Test-Path -path $destinationFolder)) 
{New-Item $destinationFolder -Type Directory} 
$file = Get-ChildItem -Path "C:/DotNetFolder/BuildReports/*/*.coverage" 
$file | Rename-Item -NewName testcoverage.coverage 
$renamedFile = Get-ChildItem -Path "C:/DotNetFolder/BuildReports/*/*.coverage" 
Copy-Item $renamedFile -Destination $destinationFolder
& "C:/Program Files/Microsoft Visual Studio/2022/Enterprise/Team Tools/Dynamic Code Coverage Tools/CodeCoverage.exe" analyze /output:C:/DotNetFolder/BuildReports/xmlresults.coveragexml  C:/DotNetFolder/BuildReports/testcoverage.coverage
C:/ReportGenerator/net5.0/ReportGenerator.exe -reports:C:/DotNetFolder/BuildReports/xmlresults.coveragexml -targetdir:C:/DotNetFolder/BuildReports/CodeCoverageFinal/
