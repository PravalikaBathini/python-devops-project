$ErrorActionPreference = 'stop'
kubectl apply -f k8s/
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }