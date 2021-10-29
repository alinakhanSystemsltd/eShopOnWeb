tar -xvf C:/DotNetFolder2/dotnetapp.tar.gz -C C:/DotNetFolder2
dotnet restore C:/DotNetFolder2/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet publish -c Release -r win-x64 --output ./DotNetFolder eShopOnWeb.sln
