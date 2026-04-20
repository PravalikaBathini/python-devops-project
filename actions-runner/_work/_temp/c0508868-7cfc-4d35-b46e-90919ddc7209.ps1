$ErrorActionPreference = 'stop'
kubectl set image deployment/python-devops-app `
  python-devops-app=pravalikabathini/python-devops-app:latest

if ((Test-Path -LiteralPath variable:\LASTEXITCODE)) { exit $LASTEXITCODE }