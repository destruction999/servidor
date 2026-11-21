# ZENTRIKA RP

Repositorio de instalación y mantenimiento de **ZENTRIKA RP** para FiveM.

## Estado

- Framework objetivo: ESX Legacy 1.16.3.
- Inventario: ox_inventory.
- Base de datos nueva prevista: `zentirka_rp`.
- Gestor de base de datos: phpMyAdmin.
- Voz: pma-voice.
- Policía: D7 Police Suite / FRKN (no iniciar simultáneamente el antiguo `esx_policejob` si FRKN es el sistema policial principal).

## Contenido

- `database/`: SQL base y guía para importar los esquemas.
- `docs/`: instalación desde cero, orden de dependencias y notas de compatibilidad.
- `server-config/`: ejemplo de configuración sin claves ni contraseñas.

## Importante

Este repositorio no debe contener claves de licencia, contraseñas, tokens, cadenas de conexión reales ni datos privados de jugadores. Conserva una copia de seguridad antes de actualizar el servidor.

Los recursos de terceros conservan sus licencias originales. No redistribuyas recursos que no tengas derecho a publicar.

Consulta primero [la guía de instalación](docs/INSTALACION_DESDE_CERO.md). No importes todos los SQL a ciegas: solo los correspondientes a los recursos que realmente se vayan a iniciar.
