# Base de datos ZENTRIKA RP

1. Crea una base de datos vacia llamada zentirka_rp en phpMyAdmin.
2. Selecciona esa base de datos.
3. Importa 01_esx_core.sql.
4. Importa despues unicamente los SQL de los recursos que vayas a activar, desde opcionales/.
5. No importes todas las variantes de idioma.
6. No importes el SQL de esx_policejob si FRKN sera el sistema policial principal.
7. Haz un respaldo antes de volver a importar o modificar tablas.

Los SQL opcionales se mantienen separados porque dependen de recursos concretos. No los importes todos indiscriminadamente.
