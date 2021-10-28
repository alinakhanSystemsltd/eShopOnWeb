tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
Install-Package coverlet.msbuild -Version 3.1.0 
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj --logger "trx;LogFileName=TestResults.trx" --logger "xunit;LogFileName=TestResults.xml" --results-directory  ./BuildReports/UnitTests /p:CollectCoverage=true /p:CoverletOutput=BuildReports\Coverage\ /p:CoverletOutputFormat=cobertura /p:Exclude="[xunit.*]*
