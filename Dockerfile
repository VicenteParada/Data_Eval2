FROM mysql:8.0

# Copiamos los scripts SQL al directorio de inicialización de MySQL.
# Al iniciar el contenedor por primera vez (y si la BD está vacía), 
# MySQL ejecutará estos scripts en orden alfabético para crear y poblar la base de datos.
COPY 01_creacion_base_datos.sql /docker-entrypoint-initdb.d/01_creacion_base_datos.sql
COPY 02_backup_y_mantenimiento.sql /docker-entrypoint-initdb.d/02_backup_y_mantenimiento.sql

EXPOSE 3306
