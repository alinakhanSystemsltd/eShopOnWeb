tar -xvf C:/DotNetFolder/dotnetapp.tar.gz -C C:/DotNetFolder
dotnet restore C:/DotNetFolder/eShopOnWeb.sln
dotnet build eShopOnWeb.sln  --configuration Release
dotnet test C:/DotNetFolder/tests/UnitTests/UnitTests.csproj dotnet test --logger "trx;LogFileName=TestResults.trx" ^
            --logger "xunit;LogFileName=TestResults.xml" ^
            --results-directory ./BuildReports/UnitTests ^
            /p:CollectCoverage=true ^
            /p:CoverletOutput=BuildReports\Coverage\ ^
            /p:CoverletOutputFormat=cobertura ^
            /p:Exclude="[xunit.*]
# $destinationFolder = \"$env:WORKSPACE/TestResults\"
# if (!(Test-Path -path $destinationFolder)) {New-Item $destinationFolder -Type Directory}
# $file = Get-ChildItem -Path \"$env:WORKSPACE/tests\\UnitTests/TestResults/*/*.coverage\"
# $file | Rename-Item -NewName testcoverage.coverage
# $renamedFile = Get-ChildItem -Path \"$env:WORKSPACE/tests\\UnitTests/TestResults/*/*.coverage\"
# Copy-Item $renamedFile -Destination $destinationFolder
                    
