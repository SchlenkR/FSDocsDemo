# FSDocs Demo

A repo for demonstrating a minimal F# FsDocs demo use case with GitHub pages.

## Some Infos

* **Enable GizHub Pages** like so:

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
