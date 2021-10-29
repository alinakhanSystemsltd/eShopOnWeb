tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet publish -c Release -r win-x64 --output ./DotNetFolderPublish eShopOnWeb.sln
