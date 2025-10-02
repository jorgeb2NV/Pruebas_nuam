## Directorio de herramientas que apuntan al directorio base

Aquí se alojarán los Kustomize que apuntan al directorio `bases/infrastructure` que contienen los manifiestos desplegados en ambiente de desarrollo.

## Overlays

Un overlay es una superposición de manifiestos, permite reutilizar o sobreesribir un manifiesto sin necesidad de afectar el manifiesto original. 

## Overlay en development

En este ambiente la intención es sobreescribir las configuraciones que se encuentran en `./bases/infrastructure` con el fin de adaptarlo al ambiente de desarrollo y sus configuraciones específicas de funcionamiento. 

- [Kustomize](https://kubectl.docs.kubernetes.io/guides/introduction/kustomize/)
- [Github repository Kustomize](https://github.com/kubernetes-sigs/kustomize)
- [Overlay](https://kubectl.docs.kubernetes.io/references/kustomize/glossary/#overlay)
- [Ejemplo de Kustomize con labels](https://kubectl.docs.kubernetes.io/guides/config_management/labels_annotations/)
- [Uso de Patch strategic merge](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-api-machinery/strategic-merge-patch.md)