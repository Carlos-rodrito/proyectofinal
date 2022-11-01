TYPE=VIEW
query=(select `proyectofinal`.`traslado`.`id_traslado` AS `id_traslado`,`proyectofinal`.`traslado`.`fecha` AS `fecha`,`proyectofinal`.`traslado`.`id_inventario` AS `id_inventario`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen`,`proyectofinal`.`traslado`.`cantidad` AS `cantidad`,`proyectofinal`.`usuarios`.`nombre` AS `nombre_usuario` from ((`proyectofinal`.`traslado` join `proyectofinal`.`almacenes` on(`proyectofinal`.`traslado`.`id_almacen` = `proyectofinal`.`almacenes`.`id_almacen`)) join `proyectofinal`.`usuarios` on(`proyectofinal`.`traslado`.`id_usuario` = `proyectofinal`.`usuarios`.`id_usuario`)))
md5=bc655b4c0068f32ddce91f4ee9bcc67e
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:59:49
create-version=2
source=(select `traslado`.`id_traslado` AS `id_traslado`,`traslado`.`fecha` AS `fecha`,`traslado`.`id_inventario` AS `id_inventario`,`almacenes`.`nombre` AS `nombre_almacen`,`traslado`.`cantidad` AS `cantidad`,`usuarios`.`nombre` AS `nombre_usuario` from ((`traslado` join `almacenes` on(`traslado`.`id_almacen` = `almacenes`.`id_almacen`)) join `usuarios` on(`traslado`.`id_usuario` = `usuarios`.`id_usuario`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`traslado`.`id_traslado` AS `id_traslado`,`proyectofinal`.`traslado`.`fecha` AS `fecha`,`proyectofinal`.`traslado`.`id_inventario` AS `id_inventario`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen`,`proyectofinal`.`traslado`.`cantidad` AS `cantidad`,`proyectofinal`.`usuarios`.`nombre` AS `nombre_usuario` from ((`proyectofinal`.`traslado` join `proyectofinal`.`almacenes` on(`proyectofinal`.`traslado`.`id_almacen` = `proyectofinal`.`almacenes`.`id_almacen`)) join `proyectofinal`.`usuarios` on(`proyectofinal`.`traslado`.`id_usuario` = `proyectofinal`.`usuarios`.`id_usuario`)))
mariadb-version=100424
