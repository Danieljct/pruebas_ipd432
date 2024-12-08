function write2dev(filename, BRAMX, COM_port)

    % Configurar el puerto serial
    port = serialport(COM_port, 115200);

    % Configurar terminador y paridad
    configureTerminator(port, "CR");
    port.Parity = "none";
    port.StopBits = 1;

    write(port, 0,"uint8"); % 0 para write2dev

    if(BRAMX == 'BRAMA')
        write(port, 0,"uint8");
    elseif (BRAMX == 'BRAMB')
        write(port, 1,"uint8");
    else
        error('Memoria '+BRAMX+' no válida');
    end

    % Abrir el archivo en modo lectura
    fid = fopen(filename, 'r');

    % Comprobar si el archivo se abrió correctamente
    if fid == -1
        error('Error al abrir el archivo');
    end

    % Leer y mostrar el contenido línea por línea
    while ~feof(fid)
        linea = uint8(str2double(fgetl(fid))); % Lee una línea del archivo
        write(port, linea, "uint8");
    end
%	write(port,0,"uint8"); no se pq estaba % 0 para write2dev
    % Cerrar el archivo
    fclose(fid);



    % Cerrar la conexión
    clear port;

end