tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder 
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj --logger:"trx;logFileName=unitReports.xml" --collect "Code coverage" /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:CoverletOutput="./TestResults/" --results-directory C:/DotNetFolder/BuildReports
$destinationFolder = \"C:/DotNetFolder/BuildReports\" 
if (!(Test-Path -path $destinationFolder)) 
{New-Item $destinationFolder -Type Directory} 
$file = Get-ChildItem -Path \"C:/DotNetFolder/BuildReports/*/*.coverage\" 
$file | Rename-Item -NewName testcoverage.coverage 
$renamedFile = Get-ChildItem -Path \"C:/DotNetFolder/BuildReports/*/*.coverage\" 
Copy-Item $renamedFile -Destination $destinationFolder
