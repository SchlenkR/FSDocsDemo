(**
---
title: Overview
category: Documentation
categoryindex: 1
index: 1
---
*)

(*** condition: prepare ***)
#nowarn "211"
#r "../MyLib/bin/Release/netstandard2.0/MyLib.dll"
open FsHttp



(**
## Installing
*)
// Reference the 'MyLib' package from NuGet in your script or project
#r "nuget: MyLib"

(**
## Performing an Operation:
*)
MyLib.Say.hello "World"

(**
That's it.
*)
