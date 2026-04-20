$ErrorActionPreference = 'stop'
kubectl rollout status deployment/python-devops-app --timeout=120s
if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }