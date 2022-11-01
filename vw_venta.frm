TYPE=VIEW
query=(select `proyectofinal`.`venta`.`id_venta` AS `id_venta`,`proyectofinal`.`clientes`.`nombre` AS `nombre_cliente`,`proyectofinal`.`usuarios`.`nombre` AS `nombre_usuario`,`proyectofinal`.`venta`.`fecha` AS `fecha`,`proyectofinal`.`venta`.`no_factura` AS `no_factura` from ((`proyectofinal`.`venta` join `proyectofinal`.`clientes` on(`proyectofinal`.`venta`.`id_cliente` = `proyectofinal`.`clientes`.`id_cliente`)) join `proyectofinal`.`usuarios` on(`proyectofinal`.`venta`.`id_usuario` = `proyectofinal`.`usuarios`.`id_usuario`)))
md5=a8de2700173b4d9aaed36799d96ec378
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-01 19:59:50
create-version=2
source=(select `venta`.`id_venta` AS `id_venta`,`clientes`.`nombre` AS `nombre_cliente`,`usuarios`.`nombre` AS `nombre_usuario`,`venta`.`fecha` AS `fecha`,`venta`.`no_factura` AS `no_factura` from ((`venta` join `clientes` on(`venta`.`id_cliente` = `clientes`.`id_cliente`)) join `usuarios` on(`venta`.`id_usuario` = `usuarios`.`id_usuario`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=(select `proyectofinal`.`venta`.`id_venta` AS `id_venta`,`proyectofinal`.`clientes`.`nombre` AS `nombre_cliente`,`proyectofinal`.`usuarios`.`nombre` AS `nombre_usuario`,`proyectofinal`.`venta`.`fecha` AS `fecha`,`proyectofinal`.`venta`.`no_factura` AS `no_factura` from ((`proyectofinal`.`venta` join `proyectofinal`.`clientes` on(`proyectofinal`.`venta`.`id_cliente` = `proyectofinal`.`clientes`.`id_cliente`)) join `proyectofinal`.`usuarios` on(`proyectofinal`.`venta`.`id_usuario` = `proyectofinal`.`usuarios`.`id_usuario`)))
mariadb-version=100424
