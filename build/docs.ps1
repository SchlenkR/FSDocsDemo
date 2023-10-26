
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
    --sourcerepo https://github.com/RonaldSchlenker/FSDocsDemo/blob/main/src `
    --parameters root /FSDocsDemo/
