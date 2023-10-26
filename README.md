# FSDocs Demo

A repo for demonstrating a minimal F# FsDocs demo use case with GitHub pages.

## Some Infos

* **Enable GitHub Pages** like so:
![Alt text](enable_Pages.png)
* **Change parameters** in
    * `./build/docs.ps1`
    * `./src/Directory.Build.props`
* The **docs content** is located in `./src/docs`
* The **F# library source code** is located in `./src/MyLib`
* The docs are created and publishes using the `.github/workflows/build-and-publish-docs.yml` workflow.
    * It triggers manually or on push to "main".
    * The docs URL (for this repo) is: https://ronaldschlenker.github.io/FSDocsDemo/
* You can **edit the docs during development** by running `./build/docs.ps1 watch` from the repo root.
    * Don't forget to forward the port if you are in a codespace!

## Hints from Nojaf

In addition to the infos here, please have a look at the comments from [this issue](https://github.com/RonaldSchlenker/FSDocsDemo/issues/1):

- If this sample is meant to present the bare minimum then you should drop anything that adds additional noise:
    - No PowerShell, you can do everything with the cross-plat dotnet cli.
    - No `.devcontainer`, not everybody knows about them.
    - No extra build folder, `docs.ps1` contains too many arguments. You can stick to the defaults instead. (More on that later)
- [Creating content](https://fsprojects.github.io/FSharp.Formatting/content.html) hints at placing everything in the `docs` folder. This is the case for some many projects, so I really discourage that you use `src/docs` instead. Just yuck man.
- Add a solution file, if people ever want to open this, it is a convenient way and helps when working with Rider. Opening a folder is more of a VSCode-only thing. I don't know how well VS works with that. Anyway a single top-level solution has my preference.
- Use a `Build.Directory.props` file to specify some settings. See [Customizing via Styling Parameters](https://fsprojects.github.io/FSharp.Formatting/styling.html#Customizing-via-Styling-Parameters). This is again an alternative for `--sourcerepo`. The only command you want to end up with are `dotnet fsdocs build` and `dotnet fsdocs watch` which are short enough to type.
- Your `actions/` use old versions. Like `checkout` and `setup-dotnet`
- Add a link to your result to the home page: https://ronaldschlenker.github.io/FSDocsDemo/ (configure this in github as well)
