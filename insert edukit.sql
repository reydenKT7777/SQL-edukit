/*ADMINISTRADORES*/
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(1, 'admin', 'admin', 0, 'admin@admin.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 1, 1);
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(2, 'cordi', 'cordi', 0, 'cordi@cordi.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 1, 1);

/*PROFESORES*/
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(3, 'elder', 'prof', 0, 'admin@admin.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 2, 1);
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(4, 'oscar', 'prof', 0, 'cordi@cordi.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 2, 1);

/*ESTUDIANTES*/
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(5, 'steffi', 'estud', 0, 'admin@admin.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 3, 1);
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(6, 'maria', 'estud', 0, 'cordi@cordi.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 3, 1);

/*tutor*/
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(7, 'manuel', 'tutor', 0, 'admin@admin.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 4, 1);
INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES(8, 'cristina', 'tutor', 0, 'cordi@cordi.com', '2018-04-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 4, 1);




/*ADMINISTRADORES*/
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(1, 'castro', 'lopez', 'jose pablo', '1111111', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 1);
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(2, 'arce', 'perez', 'isaac', '1111112', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 2);
/*PROFESORES*/
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(3, 'almorin', 'torrejon', 'elder', '1111113', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 3);
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(4, 'alvarez', 'romero', 'segundo oscar', '1111114', 'LP', 'm', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 4);
/*ESTUDIANTES*/
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(5, 'aguilar', 'mamani', 'steffi hortencia', '1111115', 'LP', 'F', '76543210', '', 'carretera viacha', '2018-04-01', 1, 5);
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(6, 'alvarez', 'huaqui', 'maria kaila', '1111116', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 6);
/*tutor*/
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(7, 'laura', 'landivar', 'manuel', '1111117', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 7);
INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES(8, 'huamanchumo', 'leyton', 'maria cristina', '1111118', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 8);




INSERT INTO `administracion` (`id`, `cargo`, `persona_id`) VALUES(1, 'Administrador', 1);
INSERT INTO `administracion` (`id`, `cargo`, `persona_id`) VALUES(2, 'coordinador primaria', 2);

INSERT INTO `profesor` (`id`, `especialidad`, `persona_id`) VALUES(1, 'matematica', 3);
INSERT INTO `profesor` (`id`, `especialidad`, `persona_id`) VALUES(2, 'literatura', 4);

INSERT INTO `tutor` (`id`, `parentesco`, `persona_id`) VALUES(1, 'padre', 7);
INSERT INTO `tutor` (`id`, `parentesco`, `persona_id`) VALUES(2, 'madre', 8);

INSERT INTO `estudiante` (`id`, `persona_id`, `tutor_id`) VALUES(1, 5, 1);
INSERT INTO `estudiante` (`id`, `persona_id`, `tutor_id`) VALUES(2, 6, 2);