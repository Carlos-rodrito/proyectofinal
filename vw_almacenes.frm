TYPE=VIEW
query=(select `proyectofinal`.`almacenes`.`id_almacen` AS `id_almacen`,`proyectofinal`.`tipos_almacenes`.`nombre` AS `tipo_almacen`,`proyectofinal`.`almacenes`.`nombre` AS `nombre`,`proyectofinal`.`almacenes`.`direccion` AS `direccion`,`proyectofinal`.`almacenes`.`telefono` AS `telefono`,`proyectofinal`.`almacenes`.`email` AS `email` from (`proyectofinal`.`almacenes` join `proyectofinal`.`tipos_almacenes` on(`proyectofinal`.`almacenes`.`id_tipo_almacen` = `proyectofinal`.`tipos_almacenes`.`id_tipo_almacen`)))
md5=96a2b330436fed3a6311e38ab24fc34a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:00:43
create-version=2
source=(select `almacenes`.`id_almacen` AS `id_almacen`,`tipos_almacenes`.`nombre` AS `tipo_almacen`,`almacenes`.`nombre` AS `nombre`,`almacenes`.`direccion` AS `direccion`,`almacenes`.`telefono` AS `telefono`,`almacenes`.`email` AS `email` from (`almacenes` join `tipos_almacenes` on(`almacenes`.`id_tipo_almacen` = `tipos_almacenes`.`id_tipo_almacen`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`almacenes`.`id_almacen` AS `id_almacen`,`proyectofinal`.`tipos_almacenes`.`nombre` AS `tipo_almacen`,`proyectofinal`.`almacenes`.`nombre` AS `nombre`,`proyectofinal`.`almacenes`.`direccion` AS `direccion`,`proyectofinal`.`almacenes`.`telefono` AS `telefono`,`proyectofinal`.`almacenes`.`email` AS `email` from (`proyectofinal`.`almacenes` join `proyectofinal`.`tipos_almacenes` on(`proyectofinal`.`almacenes`.`id_tipo_almacen` = `proyectofinal`.`tipos_almacenes`.`id_tipo_almacen`)))
mariadb-version=100425
