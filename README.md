# VitalConfig 

**Una configuración básica, pero con la que guío todo lo que toco.**



Primero que todo, este primer README será en español, cuando sepa inglés lo cambiaré 😅

Esta configuración será hecha principalmente centrada en la configuración del sistema nixos en mi pc, la primera configuración que hice es totalmente para el sistema de forma global, aún no manejo el usuario de forma tan interna, próximamente lo hare más completo y con unas configuraciones para otras cosas y no solo nixos. Sin hablar de más, directo con la configuración

### NixOS - Instalación de los dots.

Hacemos lo siguiente:

```
git clone https://github.com/Leznom/VitalConfig # Descargamos el repositorio
nixos-generate-config --root /mnt # Preparamos la unidad para proceder
```

> Ojo, si estás aplicando esto en un sistema ya instalado, no generes una nueva configuración.

```
cd VitalConfig/nixos
rm hardware-configuration.nix # Es mejor usar el por defecto generado anteriormente.
mv * /etc/nixos
```

A partir de este momento, debemos configurar lo que nosotros necesitemos

| Gestión:                                              | Archivos:                      |
| ----------------------------------------------------- | ------------------------------ |
| Entradas y el nombre del equipo.                      | **configuration.nix**          |
| Puntos de montaje y parámetros del kernel.            | **hardware-configuration.nix** |
| Versión del kernel, boot, TRIM, vulkan support        | **hardware-specific.nix**      |
| Fuentes tipográficas, idioma y localidad.             | **langAndTypography.nix**      |
| Conexión de internet, ssh, puertas de seguridad.      | **networking.nix**             |
| Selección de los paquetes a utilizar de forma global. | **packages.nix**               |
| Administración de impresoras.                         | **prints.nix**                 |
| Cliente de sonido.                                    | **sound.nix**                  |
| Gestión de usuarios.                                  | **users.nix**                  |
| Habilitar la virtualización.                          | **virtualisation.nix**         |

Tomarse un tiempo para leer todo de forma acomodada, daré unos detalles de como es mi configuración actual:

El cliente de sonido es `pipewire`, el escritorio es `kde-plasma`, mis localidades están en `es_AR`, mi impresora se maneja con `cups` y `hplip`, mi kernel es `xanmod` y mi gráfica es `i965`.



Hasta aquí llega este proyecto de guía por ahorá, y proximamente hare un pequeño script automatizando todo. Saludos.