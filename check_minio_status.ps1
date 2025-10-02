#!/usr/bin/env pwsh

Write-Host "=== MINIO Deployment Status Check ===" -ForegroundColor Green

Write-Host "`n1. Checking namespaces..." -ForegroundColor Yellow
kubectl get namespaces | Select-String -Pattern "minio"

Write-Host "`n2. Checking ConfigMaps in minio-prod..." -ForegroundColor Yellow
kubectl get configmaps -n minio-prod

Write-Host "`n3. Checking HelmReleases..." -ForegroundColor Yellow
kubectl get helmreleases -A

Write-Host "`n4. Checking pods in minio-operator..." -ForegroundColor Yellow
kubectl get pods -n minio-operator

Write-Host "`n5. Checking pods in minio-prod..." -ForegroundColor Yellow
kubectl get pods -n minio-prod

Write-Host "`n6. Checking all resources in minio-prod..." -ForegroundColor Yellow
kubectl get all -n minio-prod

Write-Host "`n=== Status Check Complete ===" -ForegroundColor Green
