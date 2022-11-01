TYPE=VIEW
query=(select `proyectofinal`.`usuarios`.`id_usuario` AS `id_usuario`,`proyectofinal`.`usuarios`.`nombre` AS `nombre`,`proyectofinal`.`usuarios`.`apellido` AS `apellido`,`proyectofinal`.`usuarios`.`celular` AS `celular`,`proyectofinal`.`usuarios`.`dpi` AS `dpi`,`proyectofinal`.`usuarios`.`email` AS `email`,`proyectofinal`.`usuarios`.`contrasena` AS `contrasena`,`proyectofinal`.`usuarios`.`id_tipo_usuario` AS `id_tipo_usuario`,`proyectofinal`.`usuarios`.`id_almacen` AS `id_almacen`,`proyectofinal`.`tipos_usuarios`.`nombre` AS `tipo_usuario`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen` from ((`proyectofinal`.`usuarios` join `proyectofinal`.`tipos_usuarios` on(`proyectofinal`.`usuarios`.`id_tipo_usuario` = `proyectofinal`.`tipos_usuarios`.`id_tipo_usuario`)) join `proyectofinal`.`almacenes` on(`proyectofinal`.`almacenes`.`id_almacen` = `proyectofinal`.`usuarios`.`id_almacen`)))
md5=63885a970d817b71199ade36fc09454f
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:00:43
create-version=2
source=(select `usuarios`.`id_usuario` AS `id_usuario`,`usuarios`.`nombre` AS `nombre`,`usuarios`.`apellido` AS `apellido`,`usuarios`.`celular` AS `celular`,`usuarios`.`dpi` AS `dpi`,`usuarios`.`email` AS `email`,`usuarios`.`contrasena` AS `contrasena`,`usuarios`.`id_tipo_usuario` AS `id_tipo_usuario`,`usuarios`.`id_almacen` AS `id_almacen`,`tipos_usuarios`.`nombre` AS `tipo_usuario`,`almacenes`.`nombre` AS `nombre_almacen` from ((`usuarios` join `tipos_usuarios` on(`usuarios`.`id_tipo_usuario` = `tipos_usuarios`.`id_tipo_usuario`)) join `almacenes` on(`almacenes`.`id_almacen` = `usuarios`.`id_almacen`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`usuarios`.`id_usuario` AS `id_usuario`,`proyectofinal`.`usuarios`.`nombre` AS `nombre`,`proyectofinal`.`usuarios`.`apellido` AS `apellido`,`proyectofinal`.`usuarios`.`celular` AS `celular`,`proyectofinal`.`usuarios`.`dpi` AS `dpi`,`proyectofinal`.`usuarios`.`email` AS `email`,`proyectofinal`.`usuarios`.`contrasena` AS `contrasena`,`proyectofinal`.`usuarios`.`id_tipo_usuario` AS `id_tipo_usuario`,`proyectofinal`.`usuarios`.`id_almacen` AS `id_almacen`,`proyectofinal`.`tipos_usuarios`.`nombre` AS `tipo_usuario`,`proyectofinal`.`almacenes`.`nombre` AS `nombre_almacen` from ((`proyectofinal`.`usuarios` join `proyectofinal`.`tipos_usuarios` on(`proyectofinal`.`usuarios`.`id_tipo_usuario` = `proyectofinal`.`tipos_usuarios`.`id_tipo_usuario`)) join `proyectofinal`.`almacenes` on(`proyectofinal`.`almacenes`.`id_almacen` = `proyectofinal`.`usuarios`.`id_almacen`)))
mariadb-version=100425
