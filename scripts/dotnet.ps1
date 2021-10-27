tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet add C:/DotNetFolder/tests/UnitTests/UnitTests.csproj package JUnitTestLogger --version 1.1.0
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj 
