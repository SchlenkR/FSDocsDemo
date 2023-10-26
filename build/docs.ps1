
if ((Test-Path .\.fsdocs) -eq $true) {
    Remove-Item .\.fsdocs\ -Force -Recurse
}

dotnet tool restore
dotnet build ./src/**/*.fsproj -c Release -f netstandard2.0

$mode = "build"
if ("watch" -eq $args[0]) { $mode = "watch" }

dotnet fsdocs `
    $mode `
    --clean `
    --sourcefolder ./src `
    --input ./src/docs `
    --output ./.docs `
    --properties Configuration=Release `
    --sourcerepo https://github.com/RonaldSchlenker/FSharp.Formatting.Demo/blob/master/src `
    --parameters root /FSharp.Formatting.Demo/