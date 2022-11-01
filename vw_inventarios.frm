TYPE=VIEW
query=(select `proyectofinal`.`inventarios`.`id_inventario` AS `id_inventario`,`proyectofinal`.`productos`.`nombre` AS `nombre_producto`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen`,`proyectofinal`.`inventarios`.`cantidad_existencia` AS `cantidad_existencia`,`proyectofinal`.`inventarios`.`fecha` AS `fecha`,`proyectofinal`.`inventarios`.`precio` AS `precio` from ((`proyectofinal`.`inventarios` join `proyectofinal`.`productos` on(`proyectofinal`.`inventarios`.`id_producto` = `proyectofinal`.`productos`.`id_producto`)) join `proyectofinal`.`almacenes` on(`proyectofinal`.`inventarios`.`id_almacen` = `proyectofinal`.`almacenes`.`id_almacen`)))
md5=9b21de4969543f1e30c6fe860cdbc13e
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:00:43
create-version=2
source=(select `inventarios`.`id_inventario` AS `id_inventario`,`productos`.`nombre` AS `nombre_producto`,`almacenes`.`nombre` AS `nombre_almacen`,`inventarios`.`cantidad_existencia` AS `cantidad_existencia`,`inventarios`.`fecha` AS `fecha`,`inventarios`.`precio` AS `precio` from ((`inventarios` join `productos` on(`inventarios`.`id_producto` = `productos`.`id_producto`)) join `almacenes` on(`inventarios`.`id_almacen` = `almacenes`.`id_almacen`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`inventarios`.`id_inventario` AS `id_inventario`,`proyectofinal`.`productos`.`nombre` AS `nombre_producto`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen`,`proyectofinal`.`inventarios`.`cantidad_existencia` AS `cantidad_existencia`,`proyectofinal`.`inventarios`.`fecha` AS `fecha`,`proyectofinal`.`inventarios`.`precio` AS `precio` from ((`proyectofinal`.`inventarios` join `proyectofinal`.`productos` on(`proyectofinal`.`inventarios`.`id_producto` = `proyectofinal`.`productos`.`id_producto`)) join `proyectofinal`.`almacenes` on(`proyectofinal`.`inventarios`.`id_almacen` = `proyectofinal`.`almacenes`.`id_almacen`)))
mariadb-version=100425
