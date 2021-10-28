tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test eShopOnWeb.sln -c Release --no-build /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura
reportgenerator -reports:*/*/coverage.cobertura.xml -targetdir:CodeCoverageResult -reporttypes:Cobertura
publishCoverage adapters: [coberturaAdapter('CodeCoverageResult/Cobertura.xml')]             
