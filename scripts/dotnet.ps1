tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet add C:/DotNetFolder/tests/UnitTests/UnitTests.csproj package JUnitTestLogger --version 1.1.0
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj --logger \"junit;LogFilePath=\"C:/DotNetFolder\"/TestResults/1.0.0.\"37\"/results.xml\" --configuration release --collect \"Code coverage\" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput='./TestResults/' /p:Threshold=80
