#! /bin/bash

msbuild /p:Configuration=$APPCENTER_XAMARIN_CONFIGURATION $APPCENTER_SOURCE_DIRECTORY/Playground.UnitTests/Playground.UnitTests.csproj

dotnet ~/.nuget/packages/xunit.runner.console/2.3.1/tools/netcoreapp2.0/xunit.console.dll $APPCENTER_SOURCE_DIRECTORY/Playground.UnitTests/bin/$APPCENTER_XAMARIN_CONFIGURATION/netcoreapp2.0/Playground.UnitTests.dll

