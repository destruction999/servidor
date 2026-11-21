# Instalación nueva de ZENTRIKA RP

## Objetivo

Preparar una instalación limpia en un proveedor nuevo, usando TXAdmin y phpMyAdmin, sin mezclar datos de personajes del servidor anterior.

- Base de datos prevista: `zentirka_rp`.
- Framework: ESX Legacy 1.16.3.
- Inventario: `ox_inventory`.
- Target: `ox_target`.
- SQL base de ESX: tomado del archivo `resources/[core]/es_extended/es_extended.sql` incluido en el paquete de recursos revisado.

## 1. Crear la base de datos

En phpMyAdmin:

1. Crea una base de datos llamada `zentirka_rp`.
2. Usa cotejamiento `utf8mb4_unicode_ci` si el proveedor permite elegirlo.
3. Selecciona esa base antes de importar `database/01_esx_core.sql`.

El SQL de este repositorio no crea una base llamada `es_extended`: importa las tablas del core dentro de la base que hayas seleccionado.

## 2. Importar el SQL

Importa primero `database/01_esx_core.sql`.

Después importa únicamente los SQL de los recursos que vas a utilizar. Los SQL originales están dentro de sus respectivos recursos en el paquete del servidor. No importes simultáneamente el SQL base y su variante localizada; usa la variante `es_*` cuando exista.

Ejemplos de recursos opcionales con SQL propio:

- `esx_addonaccount`, `esx_addoninventory`, `esx_datastore`, `esx_society`
- `esx_identity`, `esx_banking`, `esx_billing`, `esx_status`
- `esx_ambulancejob`, `esx_license`, `esx_garage`, `esx_vehicleshop`
- `d7_police_suite`
- `dc_fuel` y `dc_shops`
- `pls_mechanic`
- BabloBossMenu, solo después de confirmar su SQL y dependencias exactas.

No importes el SQL de `esx_policejob` si FRKN es el trabajo policial principal, salvo que se haya comprobado que otro recurso lo necesita y que no habrá dos sistemas policiales activos.

## 3. Orden general de inicio

El orden exacto se ajustará a los manifests instalados. Como base:

1. `oxmysql`
2. `ox_lib`
3. `es_extended`
4. `ox_inventory`
5. `ox_target`
6. `pma-voice`
7. librerías y recursos standalone
8. recursos core y addons ESX
9. interfaz, personajes y tiendas
10. D7 Police Suite / FRKN después de sus dependencias

Evita iniciar dos veces el mismo recurso mediante un `ensure [carpeta]` y un `ensure nombre_recurso` adicional.

## 4. Configuración sensible

Coloca los valores reales de tu proveedor en el panel o archivo privado:

- `sv_licenseKey`
- `mysql_connection_string`
- `sv_hostname`

No publiques esos valores en GitHub. No envíes contraseñas, tokens ni claves por el chat.

## 5. Primera prueba

Antes de abrir el servidor al público:

- confirma que oxmysql conecta sin errores;
- confirma que ESX crea/carga un personaje;
- confirma que ox_inventory carga los ítems;
- prueba guardar y recuperar inventario;
- prueba un trabajo civil y uno de sociedad;
- prueba FRKN y el MDT;
- prueba BabloBossMenu solo después de importar y verificar sus tablas;
- revisa la consola de FXServer y los logs de oxmysql.

## 6. Copias y conservación

Mantén intacta una copia del paquete original. Haz los cambios en una copia de trabajo. No borres carpetas ni SQL antiguos hasta confirmar que el servidor nuevo inicia y que cada sistema funciona.

## Limitaciones del repositorio

El paquete comprimido de recursos es de aproximadamente 196 MB. GitHub rechaza archivos individuales de más de 100 MB en el flujo normal de Git; por eso el paquete completo no se sube como un único ZIP aquí. Debe gestionarse como partes verificadas o mediante Git LFS/almacenamiento de artefactos, respetando las licencias de cada recurso.
