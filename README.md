# CoreExampleLibrary
A .NET Core example class library project for use with CLI, Visual Studio Code and/or Visual Studio.

## Why?
Because the Out-of-Box experience with .NET Core for simple things is wanting. For example, 
setting up unit testing with xUnit was a hassle, since the xUnit test runner is not found on the normal
`nuget.org` feed. Had to add a custom `dotnet-core` feed for that. Referencing the a class library
project from the test project had to be figured out. And so on.

## What
Just a simple class library called `CoreExampleLibrary` targetting `.netstandard1.6`
and a xUnit test project `CoreExampleLibrary.Tests` that calls a single method from
the class library.

Everything has been setup up so it can be edited, build and tested from:
 * Visual Studio Code
 * Visual Studio 2015 Update 3
 * .NET Core CLI (incl. a few simple `cmd` files for that)

## How
Simply do the following (assuming Windows):
 * Open command prompt e.g. the fantastic `Git Shell`
 * Clone the project:
 ```
 git clone https://github.com/DotNetCross/CoreExampleLibrary.git
 ```
 * Run .NET Core CLI via script
```
all.cmd
```
## Output
 * Expected output then is: 
```
C:\oss\CoreExampleLibrary [master ≡]> .\all.cmd

C:\oss\CoreExampleLibrary>call restore.cmd

C:\oss\CoreExampleLibrary>dotnet restore
log  : Restoring packages for C:\oss\CoreExampleLibrary\tests\CoreExampleLibrary.Tests\project.json...
log  : Restoring packages for C:\oss\CoreExampleLibrary\src\CoreExampleLibrary\project.json...
log  : Writing lock file to disk. Path: C:\oss\CoreExampleLibrary\src\CoreExampleLibrary\project.lock.json
log  : C:\oss\CoreExampleLibrary\src\CoreExampleLibrary\project.json
log  : Restore completed in 812ms.
log  : Writing lock file to disk. Path: C:\oss\CoreExampleLibrary\tests\CoreExampleLibrary.Tests\project.lock.json
log  : C:\oss\CoreExampleLibrary\tests\CoreExampleLibrary.Tests\project.json
log  : Restore completed in 1588ms.

C:\oss\CoreExampleLibrary>call build.cmd

C:\oss\CoreExampleLibrary>dotnet build ./**/project.json
Project CoreExampleLibrary (.NETStandard,Version=v1.6) will be compiled because expected outputs are missing
Compiling CoreExampleLibrary for .NETStandard,Version=v1.6

Compilation succeeded.
    0 Warning(s)
    0 Error(s)

Time elapsed 00:00:00.9185391


Project CoreExampleLibrary.Tests (.NETCoreApp,Version=v1.0) will be compiled because dependencies changed
Compiling CoreExampleLibrary.Tests for .NETCoreApp,Version=v1.0

Compilation succeeded.
    0 Warning(s)
    0 Error(s)

Time elapsed 00:00:00.9635993



C:\oss\CoreExampleLibrary>call test.cmd

C:\oss\CoreExampleLibrary>REM No way to do wild card test with CLI sadly

C:\oss\CoreExampleLibrary>dotnet test ./tests/CoreExampleLibrary.Tests
Project CoreExampleLibrary (.NETStandard,Version=v1.6) was previously compiled. Skipping compilation.
Project CoreExampleLibrary.Tests (.NETCoreApp,Version=v1.0) was previously compiled. Skipping compilation.
xUnit.net .NET CLI test runner (64-bit .NET Core win10-x64)
  Discovering: CoreExampleLibrary.Tests
  Discovered:  CoreExampleLibrary.Tests
  Starting:    CoreExampleLibrary.Tests
  Finished:    CoreExampleLibrary.Tests
=== TEST EXECUTION SUMMARY ===
   CoreExampleLibrary.Tests  Total: 1, Errors: 0, Failed: 0, Skipped: 0, Time: 0.201s
SUMMARY: Total: 1 targets, Passed: 1, Failed: 0.
```

## 