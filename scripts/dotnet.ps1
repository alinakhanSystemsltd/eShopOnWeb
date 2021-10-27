tar -xvzf C:/dotnetapp.tar.gz 
dotnet restore ${workspace}\\eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release

