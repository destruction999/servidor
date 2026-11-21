# Paquete preparado para TXAdmin

El paquete completo conserva los recursos originales y agrega:
- server.cfg.example
- database/01_esx_core.sql
- database/opcionales/
- database/README.md
- docs/INVENTARIO_RECURSOS.md

El ZIP completo mide aproximadamente 196 MB y no se ha añadido como archivo normal al repositorio: GitHub bloquea objetos individuales superiores a 100 MiB. Para distribuir archivos binarios grandes se requiere Git LFS o un Release asset, según las cuotas disponibles.

Descarga el paquete preparado desde el archivo adjunto en esta conversacion. No borres los recursos actuales al copiarlo al servidor: primero haz respaldo y combina la carpeta resources/.

Antes de iniciar, completa la clave Cfx.re y la conexion oxmysql en privado. FRKN es el sistema policial previsto; no inicies esx_policejob simultaneamente.
