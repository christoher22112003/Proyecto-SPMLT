@echo off

@REM :
@REM Para poder realizar la creacion de un lote ne un archivo .bat se utiliza <:nombre_del_lote>

  :Menu_principal
    @REM ECHO
    @REM Para la impresion de algun tipo de texto en la pantalla se utiliza en <echo  texto_que_se_desea_imprimir>
    @REM Tambien se puede utilizar para poder realizar menus de de opciones simples 
    @REM El arte en el cual esta ilustrada la torre se denomina <ASCII> pagina para poder hacer arte asi es https://es.rakko.tools/tools/68/
    
    cls
    echo                                ()
    echo                                /\
    echo                               I  I
    echo                               ====
    echo                                XX
    echo                               xXXx
    echo                               XXXX
    echo                               XXXX
    echo                               XXXX
    echo                              xXXXXx
    echo                              XXXXXX
    echo                              XXXXXX
    echo                             xXXXXXXx
    echo                             XXXXXXXX
    echo                            xXXXXXXXXx
    echo                            XXXXXXXXXX
    echo                           XXXXX  XXXXX
    echo                          xXXXX"  "XXXXx
    echo                         XXXXXxxxxxxXXXXX
    echo                       xXXXXX""""""""XXXXXx
    echo                    xXXXXXX"        "XXXXXXx
    echo                  xxXXXXXXX            XXXXXXXxx
    echo                                                                 . 
    echo            #######  ##   ##  ##   ##   ######   ##### 
    echo             ##   #  ###  ##  ##   ##     ##    ### ### 
    echo             ##      #### ##  ##   ##     ##    ##   ## 
    echo             ####    #######   ## ##      ##    ##   ## 
    echo             ##      ## ####   ## ##      ##    ##   ## 
    echo             ##   #  ##  ###    ###       ##    ### ### 
    echo            #######  ##   ##    ###     ######   ##### 
    echo                                                                 . 
    echo         # #####   ###    ######   #######    ###     ##### 
    echo        ## ## ##  ## ##    ##  ##   ##   #   ## ##   ##   ## 
    echo           ##    ##   ##   ##  ##   ##      ##   ##  ## 
    echo           ##    ##   ##   #####    ####    ##   ##   ##### 
    echo           ##    #######   ## ##    ##      #######       ## 
    echo           ##    ##   ##   ## ##    ##   #  ##   ##  ##   ## 
    echo          ####   ##   ##  #### ##  #######  ##   ##   ##### 
    echo                                                                 . 
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
    echo  #######   #####     ####     ###    ##   ##  #######    ###    ###### 
    echo   ##   #  ##   ##   ##  ##   ## ##   ###  ##   ##   #   ## ##    ##  ## 
    echo   ##      ##       ##       ##   ##  #### ##   ##      ##   ##   ##  ## 
    echo   ####     #####   ##       ##   ##  #######   ####    ##   ##   ##### 
    echo   ##           ##  ##       #######  ## ####   ##      #######   ## ## 
    echo   ##   #  ##   ##   ##  ##  ##   ##  ##  ###   ##   #  ##   ##   ## ## 
    echo  #######   #####     ####   ##   ##  ##   ##  #######  ##   ##  #### ## 
    echo                                                                         .                     
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

        cd "C:\Program Files (x86)\epson\Epson Scan 2\Core"
			  dir "C:\Program Files (x86)\epson\Epson Scan 2\Core"
			  start es2launcher.exe

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Escaneo_de_tareas*Epson*Scanner\Taskkill\si
        if %respuesta%==no goto Escaneo_de_tareas*Epson*Scanner\Taskkill\no

          :Escaneo_de_tareas*Epson*Scanner\Taskkill\si

            taskkill /im es2launcher.exe /f

            goto Menu_principal

          :Escaneo_de_tareas*Epson*Scanner\Taskkill\no

            taskkill /im es2launcher.exe /f

            goto Escaneo_de_tareas            

      :Escaneo_de_tareas*Explorador*archivos*escaneados

        cd "%SystemRoot%"
			  dir "%SystemRoot%"
			  start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Escaneo_de_tareas*Explorador*archivos*escaneados\Taskkill\si
        if %respuesta%==no goto Escaneo_de_tareas*Explorador*archivos*escaneados\Taskkill\no

          :Escaneo_de_tareas*Explorador*archivos*escaneados\Taskkill\si

            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Menu_principal

          :Escaneo_de_tareas*Explorador*archivos*escaneados\Taskkill\no

            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Escaneo_de_tareas

      :Escaneo_de_tareas*Abrir*todos*programas*escaneo

        cd "C:\Program Files (x86)\epson\Epson Scan 2\Core"
        dir "C:\Program Files (x86)\epson\Epson Scan 2\Core"
        start es2launcher.exe

        cd "%SystemRoot%"
        dir "%SystemRoot%"
        start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Escaneo_de_tareas*Abrir*todos*programas*escaneo\Taskkill\si
        if %respuesta%==no goto Escaneo_de_tareas*Abrir*todos*programas*escaneo\Taskkill\no

          :Escaneo_de_tareas*Abrir*todos*programas*escaneo\Taskkill\si

            taskkill /im es2launcher.exe /f
            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"
            
            goto Menu_principal

          :Escaneo_de_tareas*Abrir*todos*programas*escaneo\Taskkill\no

            taskkill /im es2launcher.exe /f
            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"
            
            goto Escaneo_de_tareas

  :Union_de_tareas

    cls
    echo    ####    #####   ##   ##  ######    ######  ##   ##    ###    ###### 
    echo   ##  ##  ### ###  ### ###   ##  ##     ##    ###  ##   ## ##    ##  ## 
    echo  ##       ##   ##  #######   ##  ##     ##    #### ##  ##   ##   ##  ## 
    echo  ##       ##   ##  ## # ##   #####      ##    #######  ##   ##   ##### 
    echo  ##       ##   ##  ##   ##   ##  ##     ##    ## ####  #######   ## ## 
    echo   ##  ##  ### ###  ##   ##   ##  ##     ##    ##  ###  ##   ##   ## ## 
    echo    ####    #####   ### ###  ######    ######  ##   ##  ##   ##  #### ## 
    echo                                                                          .
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

        cd "C:\Program Files\Nitro\Pro\13"
        dir "C:\Program Files\Nitro\Pro\13"
        start NitroPDF.exe

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Union_de_tareas*Nitro*PDF\Taskkill\si
        if %respuesta%==no goto Union_de_tareas*Nitro*PDF\Taskkill\no

          :Union_de_tareas*Nitro*PDF\Taskkill\si

            taskkill /im NitroPDF.exe /f

            goto Menu_principal

          :Union_de_tareas*Nitro*PDF\Taskkill\no

            taskkill /f /im NitroPDF.exe

            goto Union_de_tareas

      :Union_de_tareas*Explorador*archivos*escaneados*combinados

        cd "%SystemRoot%"
			  dir "%SystemRoot%"
			  start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"
        start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Union_de_tareas*Explorador*archivos*escaneados*combinados\Taskkill\si
        if %respuesta%==no goto Union_de_tareas*Explorador*archivos*escaneados*combinados\Taskkill\no

          :Union_de_tareas*Explorador*archivos*escaneados*combinados\Taskkill\si

            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Menu_principal

          :Union_de_tareas*Explorador*archivos*escaneados*combinados\Taskkill\no

            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Union_de_tareas

      :Union_de_tareas*Abrir*todos*programas*union

        cd "C:\Program Files\Nitro\Pro\13"
        dir "C:\Program Files\Nitro\Pro\13"
        start NitroPDF.exe

        cd "%SystemRoot%"
			  dir "%SystemRoot%"
			  start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"
        start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

        echo   #####     ###    ####      ######  ###### 
        echo  ##   ##   ## ##    ##         ##     ##  ## 
        echo  ##       ##   ##   ##         ##     ##  ## 
        echo   #####   ##   ##   ##         ##     ##### 
        echo       ##  #######   ##         ##     ## ## 
        echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
        echo   #####   ##   ##  #######   ######  #### ## 
        echo                                            .
        echo  ******************************************

        set /p respuesta= ** Termino de realizar las actividades?   **

        if %respuesta%==si goto Union_de_tareas*Abrir*todos*programas*union\Taskkill\si
        if %respuesta%==no goto Union_de_tareas*Abrir*todos*programas*union\Taskkill\no

          :Union_de_tareas*Abrir*todos*programas*union\Taskkill\si

            taskkill /im NitroPDF.exe /f
            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Menu_principal

          :Union_de_tareas*Abrir*todos*programas*union\Taskkill\no

            taskkill /im NitroPDF.exe /f
            taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

            goto Union_de_tareas

  :Envio_de_tareas

    cls 
    echo             #######  ##   ##  ##   ##   ####     ##### 
    echo              ##   #  ###  ##  ##   ##    ##     ##   ## 
    echo              ## #    #### ##   ## ##     ##     ##   ## 
    echo              ####    ## ####   ## ##     ##     ##   ## 
    echo              ## #    ##  ###    ###      ##     ##   ## 
    echo              ##   #  ##   ##    ###      ##     ##   ## 
    echo             #######  ##   ##     #      ####     #####
    echo                                                                .
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
            echo   #######  ##   ##  ##   ##   ####     #####             #####            ###### 
            echo    ##   #  ###  ##  ##   ##    ##     ##   ##           ##   ##            ##  ## 
            echo    ## #    #### ##   ## ##     ##     ##   ##           #                  ##  ## 
            echo    ####    ## ####   ## ##     ##     ##   ##            #####             ##### 
            echo    ## #    ##  ###    ###      ##     ##   ##                ##            ## 
            echo    ##   #  ##   ##    ###      ##     ##   ##           ##   ##    ##      ## 
            echo   #######  ##   ##     #      ####     #####             #####     ##     #### 
            echo                                                                                  .
            echo  ****************************************************************
            echo **    Programas los cuales se utilizan en el envio de tareas SP **
            echo  ----------------------------------------------------------------
            echo ==   1.Microsoft Edge en la pagina de Share Point               ==
            echo ==   2.Explorador de archivos en la carpeta combinados          ==
            echo  ----------------------------------------------------------------
            echo ==   3.Abrir todos los programas                                ==
            echo  ----------------------------------------------------------------
            echo ==   4.Volver al menu de envio de tareas                        ==
            echo ==   5.Volver al menu principal                                 ==
            echo ==   6.Salir                                                    ==
            echo  ----------------------------------------------------------------

            set /p respuesta= Que programa necesita abrir?

            if %respuesta%==1 goto Envio_de_tareas-Share-point*Share*point
            if %respuesta%==2 goto Envio_de_tareas-Share-point*Explorador*archivos*combinados
            if %respuesta%==3 goto Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point
            if %respuesta%==4 goto Envio_de_tareas
            if %respuesta%==5 goto Menu_principal
            if %respuesta%==6 goto Salir

              :Envio_de_tareas-Share-point*Share*point

                cd "C:\Program Files (x86)\Microsoft\Edge\Application"
					      dir "C:\Program Files (x86)\Microsoft\Edge\Application"
				      	start msedge.exe msedge.exe https://educacionec-my.sharepoint.com/:f:/g/personal/martha_ashqui_educacion_gob_ec/Enp4DXltIGxOm4MMf7YVxn0BtBuYp9v-Bg-F_gF-PG1J1A?e=ii8uG3

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Share-point*Share*point\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Share-point*Share*point\Taskkill\no

                  :Envio_de_tareas-Share-point*Share*point\Taskkill\si 

                    taskkill /im msedge.exe /f

                    goto Menu_principal

                  :Envio_de_tareas-Share-point*Share*point\Taskkill\no
                  
                    taskkill /im msedge.exe /f

                    goto Envio_de_tareas

              :Envio_de_tareas-Share-point*Explorador*archivos*combinados
                
                cd "%SystemRoot%"
                dir "%SystemRoot%"
                start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Share-point*Explorador*archivos*combinados\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Share-point*Explorador*archivos*combinados\Taskkill\no

                  :Envio_de_tareas-Share-point*Explorador*archivos*combinados\Taskkill\si
 
                    taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                    goto Menu_principal

                  :Envio_de_tareas-Share-point*Explorador*archivos*combinados\Taskkill\no

                    taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                    goto Envio_de_tareas

              :Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point

                cd "C:\Program Files (x86)\Microsoft\Edge\Application"
                dir "C:\Program Files (x86)\Microsoft\Edge\Application"
                start msedge.exe https://educacionec-my.sharepoint.com/:f:/g/personal/martha_ashqui_educacion_gob_ec/Enp4DXltIGxOm4MMf7YVxn0BtBuYp9v-Bg-F_gF-PG1J1A?e=ii8uG3

                cd "%SystemRoot%"
                dir "%SystemRoot%"
                start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point\Taskkill\no

                  :Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point\Taskkill\si

                    taskkill /im msedge.exe /f
                    taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                    goto Menu_principal

                  :Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point\Taskkill\no

                    taskkill /im msedge.exe /f
                    taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                    goto Envio_de_tareas

      :Envio_de_tareas-Correo-electronico 

            cls 
            echo   #######  ##   ##  ##   ##   ####     #####              ####            ####### 
            echo    ##   #  ###  ##  ##   ##    ##     ##   ##            ##  ##            ##   # 
            echo    ## #    #### ##   ## ##     ##     ##   ##           ##                 ## # 
            echo    ####    ## ####   ## ##     ##     ##   ##           ##                 #### 
            echo    ## #    ##  ###    ###      ##     ##   ##           ##                 ## # 
            echo    ##   #  ##   ##    ###      ##     ##   ##            ##  ##    ##      ##   # 
            echo   #######  ##   ##     #      ####     #####              ####     ##     ####### 
            echo                                                                  .
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

            if %respuesta%==1 goto Envio_de_tareas-Correo-electronico*Thunderbird
            if %respuesta%==2 goto Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados
            if %respuesta%==3 goto Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird
            if %respuesta%==4 goto Envio_de_tareas
            if %respuesta%==5 goto Menu_principal
            if %respuesta%==6 goto Salir

              :Envio_de_tareas-Correo-electronico*Thunderbird

                cd "C:\Program Files\Mozilla Thunderbird"
                dir "C:\Program Files\Mozilla Thunderbird"
                start thunderbird.exe

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Correo-electronico\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Correo-electronico\Taskkill\no

                  :Envio_de_tareas-Correo-electronico\Taskkill\si

                    taskkill /im thunderbird.exe /f

                    goto Menu_principal

                  :Envio_de_tareas-Correo-electronico\Taskkill\no

                    taskkill /im thunderbird.exe /f

                    goto Envio_de_tareas

              :Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados

                cd "%SystemRoot%"
                dir "%SystemRoot%"
                start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados\Taskkill\no

                :Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados\Taskkill\si

                  taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                  goto Menu_principal

                :Envio_de_tareas-Correo-electronico*Explorador*archivos*combinados\Taskkill\no

                  taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                  goto Envio_de_tareas

              :Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird

                cd "C:\Program Files\Mozilla Thunderbird"
                dir "C:\Program Files\Mozilla Thunderbird"
                start thunderbird.exe

                cd "%SystemRoot%"
                dir "%SystemRoot%"
                start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

                echo   #####     ###    ####      ######  ###### 
                echo  ##   ##   ## ##    ##         ##     ##  ## 
                echo  ##       ##   ##   ##         ##     ##  ## 
                echo   #####   ##   ##   ##         ##     ##### 
                echo       ##  #######   ##         ##     ## ## 
                echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
                echo   #####   ##   ##  #######   ######  #### ## 
                echo                                            .
                echo  ******************************************

                set /p respuesta= ** Termino de realizar las actividades?   **

                if %respuesta%==si goto Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird\Taskkill\si
                if %respuesta%==no goto Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird\Taskkill\no

                :Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird\Taskkill\si

                  taskkill /im thunderbird.exe /f
                  taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                  goto Menu_principal

                :Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird\Taskkill\no

                  taskkill /im thunderbird.exe /f
                  taskkill /fi "IMAGENAME eq explorer.exe" /fi "WINDOWTITLE eq M*"

                  goto Envio_de_tareas

  :Proceso_completo

    cls
    echo        ######   ######    #####     ####   #######   #####    ##### 
    echo         ##  ##   ##  ##  ##   ##   ##  ##   ##   #  ##   ##  ##   ## 
    echo         ##  ##   ##  ##  ##   ##  ##        ## #    #        ##   ## 
    echo         #####    #####   ##   ##  ##        ####     #####   ##   ## 
    echo         ##       ## ##   ##   ##  ##        ## #         ##  ##   ## 
    echo         ##       ##  ##  ##   ##   ##  ##   ##   #  ##   ##  ##   ## 
    echo        ####     #### ##   #####     ####   #######   #####    ##### 
    echo                                                                         .
    echo     ####    #####   ##   ##  ######   ####     #######  ######    ##### 
    echo    ##  ##  ##   ##  ### ###   ##  ##   ##       ##   #  # ## #   ##   ## 
    echo   ##       ##   ##  #######   ##  ##   ##       ## #      ##     ##   ## 
    echo   ##       ##   ##  #######   #####    ##       ####      ##     ##   ## 
    echo   ##       ##   ##  ## # ##   ##       ##   #   ## #      ##     ##   ## 
    echo    ##  ##  ##   ##  ##   ##   ##       ##  ##   ##   #    ##     ##   ## 
    echo     ####    #####   ##   ##  ####     #######  #######   ####     ##### 
    echo  ****************************************************************
    echo **             Proceso completo de envio de tareas              **
    echo  ----------------------------------------------------------------
    echo ==   1.Si
    echo ==   2.No
    echo ==   3.Volver al menu principal                                 ==
    echo ==   4.Salir                                                    ==
    echo  ----------------------------------------------------------------

    set /p respuesta= Deseas empezar el proceso completo del envio de tareas ?  

    if %respuesta%==1 goto Proceso_completo-Si
    if %respuesta%==2 goto Menu_principal
    if %respuesta%==3 goto Menu_principal
    if %respuesta%==4 goto Salir
    if %respuesta%==si goto Proceso_completo-si
    if %respuesta%==no goto Menu_principal

      :Proceso_completo-si

        cd "C:\Program Files (x86)\epson\Epson Scan 2\Core"
        dir "C:\Program Files (x86)\epson\Epson Scan 2\Core"
        start es2launcher.exe

        cd "%SystemRoot%"
        dir "%SystemRoot%"
        start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"

        cd "C:\Program Files\Nitro\Pro\13"
        dir "C:\Program Files\Nitro\Pro\13"
        start NitroPDF.exe

        cd "%SystemRoot%"
	      dir "%SystemRoot%"
	    	start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Escaneados"
        start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

        echo     ##   ##                    #######                    ###### 
        echo     ### ###                     ##   #                    # ## # 
        echo     #######                     ## #                        ## 
        echo     #######                     ####                        ## 
        echo     ## # ##                     ## #                        ## 
        echo     ##   ##                     ##   #                      ## 
        echo     ##   ##                    #######                     #### 
        echo                                                                  .

        echo  ****************************************************************
        echo **                  Metodos de envio de tareas                  **
        echo  ----------------------------------------------------------------
        echo ==   1.Share Point
        echo ==   2.Correo Electronico
        echo ==   3.Volver al menu principal                                 ==
        echo ==   4.Salir                                                    ==
        echo  ----------------------------------------------------------------

        set /p respuesta= Porque metodo desea enviar las tareas?

        if %respuesta%==1 goto Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point
        if %respuesta%==2 goto Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird
        if %respuesta%==3 goto Menu_principal
        if %respuesta%==4 goto Salir

          :Envio_de_tareas-Share-point*Abrir*todos*programas*enviar*Share*point

            cd "C:\Program Files (x86)\Microsoft\Edge\Application"
            dir "C:\Program Files (x86)\Microsoft\Edge\Application"
            start msedge.exe https://educacionec-my.sharepoint.com/:f:/g/personal/martha_ashqui_educacion_gob_ec/Enp4DXltIGxOm4MMf7YVxn0BtBuYp9v-Bg-F_gF-PG1J1A?e=ii8uG3

            cd "%SystemRoot%"
            dir "%SystemRoot%"
            start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

            echo   #####     ###    ####      ######  ###### 
            echo  ##   ##   ## ##    ##         ##     ##  ## 
            echo  ##       ##   ##   ##         ##     ##  ## 
            echo   #####   ##   ##   ##         ##     ##### 
            echo       ##  #######   ##         ##     ## ## 
            echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
            echo   #####   ##   ##  #######   ######  #### ## 
            echo                                            .
            echo  ******************************************

            set /p respuesta= ** Termino de realizar las actividades?   **

            if %respuesta%==si goto Menu_principal
            if %respuesta%==no goto Proceso_completo

          :Envio_de_tareas-Correo-electronico*Abrir*todos*programas*enviar*Thunderbird

            cd "C:\Program Files\Mozilla Thunderbird"
            dir "C:\Program Files\Mozilla Thunderbird"
            start thunderbird.exe

            cd "%SystemRoot%"
            dir "%SystemRoot%"
            start explorer.exe "M:\Documents\Ofimatica\Edicion de documentos\Combinados"

            echo   #####     ###    ####      ######  ###### 
            echo  ##   ##   ## ##    ##         ##     ##  ## 
            echo  ##       ##   ##   ##         ##     ##  ## 
            echo   #####   ##   ##   ##         ##     ##### 
            echo       ##  #######   ##         ##     ## ## 
            echo  ##   ##  ##   ##   ##  ##     ##     ## ## 
            echo   #####   ##   ##  #######   ######  #### ## 
            echo                                            .
            echo  ******************************************

            set /p respuesta= ** Termino de realizar las actividades?   **

            if %respuesta%==si goto Menu_principal
            if %respuesta%==no goto Proceso_completo
  :Salir

    exit