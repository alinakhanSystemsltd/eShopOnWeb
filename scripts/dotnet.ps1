tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder 
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj --logger:"trx;logFileName=unitReports.xml" --collect "Code coverage" /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:CoverletOutput="./TestResults/" --results-directory C:/DotNetFolder/BuildReports
