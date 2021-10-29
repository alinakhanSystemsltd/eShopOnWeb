tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder 
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build C:/DotNetFolder/eShopOnWeb.sln  --configuration Release
dotnet publish -c Release -r win-x64 --output C:\DotNetFolder\HelloDLL eShopOnWeb.sln
