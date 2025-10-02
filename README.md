# template-xac-repo

> [!CAUTION]
> Antes de empezar a usar el respositorio, es necesario que se ejecute en orden los siguientes pasos que se encuenran en el directorio Utils:
- `00-flux-crd` Instalación de los CRDs de flux.
- `01-flux-bootstrap` Reconciliación de los diferentes ambientes `testing,development en rama main` y `production en rama production`.
- `02-external-secrets` Creación de secreto para conexión a vault.

## ¿Que contiene esta plantilla?

- `.github/workflows` Contiene workflows referentes a la implementacion de sonar dentro del repositorio

- `bases` Contiene la estructura base del repositorio que no es modificable teniendo en cuenta, recursos iniciales para funcionamiento de las aplicaciones, stack tecnológico base referenciado en nuam-base.

    - `apps` Contiene los manifiestos pertenecientes al funcionamiento y despliegue de aplicaciones desarrolladas en nuam.


    - `infraestructure` Contienen los manifiestos de configuración adicionales requeridos para el funcionamiento de las aplicaciones y que no se encuentren en la línea base de la organización.

- `env` Contiene los directorios y manifiestos de las reconciliaciones que apuntan a los diferentes ambientes en overlays.
    - `development`
    - `production`
    - `testing`

- `overlays` Contiene los directorios de los ambientes, hay que tener en cuenta que cada uno de los recursos que se encuentra en overlays cuenta con sus respectivos directorios, apps, overlays, Kustoms

    - `development` Contiene los Kustomize para el ambiente de development con la configuración de valores y recursos que se encuentran en el directorio bases.
        - `kustom`

    - `testing` Contiene los Kustomize para el ambiente de testing con la configuración de valores y recursos que se encuentran en el directorio bases.
        - `kustom`

    - `production` Contiene los Kustomize para el ambiente de productivo con la referencia al directorio bases.
        - `kustom`


    - `local(opcional)` Contiene los Kustomize para el ambiente local con la configuración de valores y recursos que se encuentran en el directorio bases.

        - `kustom`

- `utils` cuenta con 3 directorios `flux-crd`, `flux-bootstrap`, `external-secrets` que deben ejecutarse para cada uno de los ambientes con el fin de implementar flux y external secrets.