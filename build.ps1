$ProgrammName = "PascalCalculator"
$BuildDir = "build"
$SourceDir = "src"

New-Item -ItemType Directory -Force -Path $BuildDir | Out-Null

fpc `
    "-Fu$SourceDir" `
    "-FU$BuildDir" `
    "-FE$BuildDir" `
    "-o$ProgrammName.exe" `
    "$SourceDir\$ProgrammName.pas"

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}
