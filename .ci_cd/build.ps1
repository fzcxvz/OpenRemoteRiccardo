Write-Host "Building OpenRemote..."
Start-Process "./gradlew" -ArgumentList "clean", "build"
