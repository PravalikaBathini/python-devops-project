$ErrorActionPreference = 'stop'
kubectl config use-context minikube
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }