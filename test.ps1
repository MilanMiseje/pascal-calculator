$ProgrammName = "TestRunner"
$BuildDir = "build"
$SourceDir = "test"

New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

fpc `
    "-Fusrc" `
    "-Futest" `
    "-FU$BuildDir" `
    "-FE$BuildDir" `
    "-o$ProgrammName.exe" `
    "$SourceDir\$ProgrammName.pas"

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}
