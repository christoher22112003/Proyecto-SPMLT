@echo off

@REM :
@REM Para poder realizar la creacion de un lote ne un archivo .bat se utiliza <:nombre_del_lote>

  :Menu_principal
    @REM ECHO
    @REM Para la impresion de algun tipo de texto en la pantalla se utiliza en <echo  texto_que_se_desea_imprimir>
    @REM Tambien se puede utilizar para poder realizar menus de de opciones simples 
    @REM El arte en el cual esta ilustrada la torre se denomina <ASCII> 

    echo                                   ()
    echo                                   /\
    echo                                  I  I
    echo                                  ====
    echo                                   XX
    echo                                  xXXx
    echo                                  XXXX
    echo                                  XXXX
    echo                                  XXXX
    echo                                 xXXXXx
    echo                                 XXXXXX
    echo                                 XXXXXX
    echo                                xXXXXXXx
    echo                                XXXXXXXX
    echo                               xXXXXXXXXx
    echo                               XXXXXXXXXX
    echo                              XXXXX  XXXXX
    echo                             xXXXX"  "XXXXx
    echo                            XXXXXxxxxxxXXXXX
    echo                          xXXXXX""""""""XXXXXx
    echo                       xXXXXXX"        "XXXXXXx
    echo                     xxXXXXXXX            XXXXXXXxx
    echo  ***************************************************************
    echo **           Bienvenido al script de envio de tareas           **
    echo  ---------------------------------------------------------------
    echo ==   Procesos los cuales se utilizan en el envio tareas        == 
    echo ==   1.Escaneo de las tareas                                   ==
  	echo ==   2.Unir los archivos escaneados                            ==
	echo ==   3.Envio de las tareas                                     ==
    echo ==   4.Realizar todo el proceso
	echo ==   5.Salir                                                   ==
    echo  ---------------------------------------------------------------

    @REM SET
    @REM Da valor a una variable general o de entorno. Ejemplo: set nombre=jake
    @REM Parámetros:
    @REM set /a Da valor a una variable utilizando operaciones aritméticas
    @REM Ejemplo: set /a número=2+2 Lo que devolvería el valor 4
    @REM set /p Permite la entrada de datos por parte del usuario (prompt), el valor introducido por el mismo define la variable.
    @REM Ejemplo: set /p nombre=Introduce tu nombre Esto definiría la variable %nombre% con el valor introducido por el usuario.
    @REM Nota: Todo lo que vaya después del signo de = en un set /p se verá en pantalla.

    set /p respuesta= Cual es el proceso el cual necesita abrir ?

    if %respuesta%==1 goto Escaneo_de_tareas
    if %respuesta%==2 goto Union_de_tareas
    if %respuesta%==3 goto Envio_de_tareas
    if %respuesta%==4 goto Proceso_completo
    if %respuesta%==5 goto Salir

  :Escaneo_de_tareas

    cls 
    echo  *****************************************************************
    echo **    Programas los cuales se utilizan en el excaneado de tareas **
    echo  -----------------------------------------------------------------
    echo ==   1.Epson Scanner                                             ==
  	echo ==   2.Explorador de archivos en la carpeta escaneados           ==
    echo  -----------------------------------------------------------------
    echo ==   3.Abrir todos los programas                                 ==
    echo  -----------------------------------------------------------------
    echo ==   4.Volver al menu principal                                  ==
    echo ==   5.Salir                                                     ==
    echo  -----------------------------------------------------------------

    set /p respuesta= Que programa necesita abrir?

    if %respuesta%==1 goto Escaneo_de_tareas*Epson*Scanner
    if %respuesta%==2 goto Escaneo_de_tareas*Explorador*archivos*escaneados
    if %respuesta%==3 goto Escaneo_de_tareas*Abrir*todos*programas*escaneo
    if %respuesta%==4 goto Menu_principal
    if %respuesta%==5 goto Salir

      :Escaneo_de_tareas*Epson*Scanner
        
      :Escaneo_de_tareas*Explorador*archivos*escaneados

      :Escaneo_de_tareas*Abrir*todos*programas*escaneo

  :Union_de_tareas

    cls
    echo  ********************************************************************
    echo **    Programas los cuales se utilizan en la union de tareas        **
    echo  --------------------------------------------------------------------
    echo ==   1.Nitro PDF                                                    ==
  	echo ==   2.Explorador de archivos en la carpeta escaneados y combinados ==
    echo  --------------------------------------------------------------------
    echo ==   3.Abrir todos los programas                                    ==
    echo  --------------------------------------------------------------------
    echo ==   4.Volver al menu principal                                     ==
    echo ==   5.Salir                                                        ==
    echo  --------------------------------------------------------------------

    set /p respuesta= Que programa necesita abrir?

    if %respuesta%==1 goto Union_de_tareas*Nitro*PDF
    if %respuesta%==2 goto Union_de_tareas*Explorador*archivos*escaneados*combinados
    if %respuesta%==3 goto Union_de_tareas*Abrir*todos*programas*union
    if %respuesta%==4 goto Menu_principal
    if %respuesta%==5 goto Salir

      :Union_de_tareas*Nitro*PDF

      :Union_de_tareas*Explorador*archivos*escaneados*combinados

      :Union_de_tareas*Abrir*todos*programas*union
    
  :Envio_de_tareas

    cls 
    echo  ***************************************************************
    echo **   Metodos los cuales puede enviar las tareas                **
    echo  ---------------------------------------------------------------
    echo ==   1.Share point                                             ==
  	echo ==   2.Correo electronico                                      ==
    echo  ---------------------------------------------------------------
    echo ==   4.Volver al menu principal                                ==
    echo ==   5.Salir                                                   ==
    echo  ---------------------------------------------------------------

    set /p respuesta= Que programa necesita abrir?
    
    if %respuesta%==1 goto Envio_de_tareas-Share-point
    if %respuesta%==2 goto Envio_de_tareas-Correo-electronico

      :Envio_de_tareas-Share-point

            cls 
            echo  ****************************************************************
            echo **    Programas los cuales se utilizan en el envio de tareas SP **
            echo  ----------------------------------------------------------------
            echo ==   1.Opera GX en la pagina de Share Point                     ==
            echo ==   2.Explorador de archivos en la carpeta combinados          ==
            echo  ----------------------------------------------------------------
            echo ==   3.Abrir todos los programas                                ==
            echo  ----------------------------------------------------------------
            echo ==   4.Volver al menu de envio de tareas                        ==
            echo ==   5.Volver al menu principal                                 ==
            echo ==   6.Salir                                                    ==
            echo  ----------------------------------------------------------------

            set /p respuesta= Que programa necesita abrir?

            if %respuesta%==1 goto Envio_de_tareas*Opera*GX*Share*point
            if %respuesta%==2 goto Envio_de_tareas*Explorador*archivos*combinados
            if %respuesta%==3 goto Envio_de_tareas*Abrir*todos*programas*enviar*Share*point
            if %respuesta%==4 goto Envio_de_tareas
            if %respuesta%==5 goto Menu_principal
            if %respuesta%==6 goto Salir

              :Envio_de_tareas*Opera*GX*Share*point

              :Envio_de_tareas*Explorador*archivos*combinados

              :Envio_de_tareas*Abrir*todos*programas*enviar*Share*point

      :Envio_de_tareas-Correo-electronico 

            cls 
            echo  ****************************************************************
            echo **    Programas los cuales se utilizan en el envio de tareas CE **
            echo  ----------------------------------------------------------------
            echo ==   1.Thunderbird cliente de correo electronico                ==
            echo ==   2.Explorador de archivos en la carpeta combinados          ==
            echo  ----------------------------------------------------------------
            echo ==   3.Abrir todos los programas                                ==
            echo  ----------------------------------------------------------------
            echo ==   4.Volver al menu de envio de tareas                        ==
            echo ==   5.Volver al menu principal                                 ==
            echo ==   6.Salir                                                    ==
            echo  ----------------------------------------------------------------

            set /p respuesta= Que programa necesita abrir?

            if %respuesta%==1 goto Envio_de_tareas*Thunderbird
            if %respuesta%==2 goto Envio_de_tareas*Explorador*archivos*combinados
            if %respuesta%==3 goto Envio_de_tareas*Abrir*todos*programas*enviar*Thunderbird
            if %respuesta%==4 goto Envio_de_tareas
            if %respuesta%==5 goto Menu_principal
            if %respuesta%==6 goto Salir

              :Envio_de_tareas*Thunderbird

              :Envio_de_tareas*Explorador*archivos*combinados

              :Envio_de_tareas*Abrir*todos*programas*enviar*Thunderbird

  :Proceso_completo

  :Salir

    exit