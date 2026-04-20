$ErrorActionPreference = 'stop'
minikube status
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }