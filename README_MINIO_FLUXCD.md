# MinIO (Operator + Tenant) via FluxCD + Helm

Este paquete agrega **Operator** (ns: `minio-operator`) y **Tenant** (ns: `minio-prod`) a tu repo GitOps.
Se generó respetando tu estructura base: 
- apps root: `apps`
- clusters prod: `env/production`

## Pasos
1) Revisa y ajusta `values` del Tenant: dominios, StorageClass, tamaños de PVC, recursos.
2) Cambia credenciales en `minio-tenant/secret-env.yaml` y considera cifrar con SOPS.
3) Confirma que Flux reconcilia `env/production/minio`.
4) Commit y push.

Versiones chart fijadas a **7.1.1** a la fecha 2025-10-01.
