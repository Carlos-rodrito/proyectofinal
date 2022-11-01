TYPE=VIEW
query=(select `proyectofinal`.`productos`.`id_producto` AS `id_producto`,`proyectofinal`.`tipos_productos`.`nombre` AS `tipo_producto`,`proyectofinal`.`productos`.`nombre` AS `nombre`,`proyectofinal`.`productos`.`descripcion` AS `descripcion`,`proyectofinal`.`productos`.`precio_unidad` AS `precio_unidad` from (`proyectofinal`.`productos` join `proyectofinal`.`tipos_productos` on(`proyectofinal`.`productos`.`id_tipo_producto` = `proyectofinal`.`tipos_productos`.`id_tipo_producto`)))
md5=78ced4e4e076a02764b6e2e5add30790
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:59:49
create-version=2
source=(select `productos`.`id_producto` AS `id_producto`,`tipos_productos`.`nombre` AS `tipo_producto`,`productos`.`nombre` AS `nombre`,`productos`.`descripcion` AS `descripcion`,`productos`.`precio_unidad` AS `precio_unidad` from (`productos` join `tipos_productos` on(`productos`.`id_tipo_producto` = `tipos_productos`.`id_tipo_producto`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`productos`.`id_producto` AS `id_producto`,`proyectofinal`.`tipos_productos`.`nombre` AS `tipo_producto`,`proyectofinal`.`productos`.`nombre` AS `nombre`,`proyectofinal`.`productos`.`descripcion` AS `descripcion`,`proyectofinal`.`productos`.`precio_unidad` AS `precio_unidad` from (`proyectofinal`.`productos` join `proyectofinal`.`tipos_productos` on(`proyectofinal`.`productos`.`id_tipo_producto` = `proyectofinal`.`tipos_productos`.`id_tipo_producto`)))
mariadb-version=100424
