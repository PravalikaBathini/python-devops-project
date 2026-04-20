$ErrorActionPreference = 'stop'
kubectl get pods
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }