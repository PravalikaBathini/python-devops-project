$ErrorActionPreference = 'stop'
minikube service python-service --url
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }