tar -xvzf C:/dotnetapp.tar.gz 
dotnet restore ${workspace}\\eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet add ${workspace}/tests/UnitTests/UnitTests.csproj package JUnitTestLogger --version 1.1.0
dotnet test ${workspace}/tests/UnitTests/UnitTests.csproj --logger \"junit;LogFilePath=\"${WORKSPACE}\"/TestResults/1.0.0.\"${env.BUILD_NUMBER}\"/results.xml\" --configuration release --collect \"Code coverage\" /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput='./TestResults/' /p:Threshold=80
