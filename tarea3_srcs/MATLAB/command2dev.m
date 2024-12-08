function receivedData = command2dev(operation, varargin) %BRAMX, COM_port
    if length(varargin) < 2
        BRAMX = 99;
        COM_port = varargin(1);
        COM_port = COM_port{1};
    else 
        BRAMX = varargin(1); 
        BRAMX = BRAMX{1};
        COM_port = varargin(2);
        COM_port = COM_port{1};
    end

    % Configurar el puerto serial
    port = serialport(COM_port, 115200);

    % Configurar terminador y paridad
    configureTerminator(port, "CR");
    port.Parity = "none";
    port.StopBits = 1;

    write(port, 1,"uint8")   % 1 para command2dev

    leertodo = 1;
    switch(operation)
        case 'readVec'
            write(port, 0,"uint8");
        case 'sumVec'
            write(port, 1,"uint8");
        case 'avgVec'
            write(port, 2,"uint8");
        case 'manDist'
            leertodo = 0;
            write(port, 3,"uint8");
        case 'eucDist'
            leertodo = 0;
            write(port, 4,"uint8");
        otherwise
            error(['Operacion ',operation,' no válida']);
    end

     
    if(BRAMX ~= 99) 
        if(BRAMX == 'BRAMA')    % 0 para BRAMA, 1 para BRAMB
            write(port, 0,"uint8");
        elseif (BRAMX == 'BRAMB')
            write(port, 1,"uint8");
        else
            error('Memoria '+BRAMX+' no válida');
        end
    end

    % Leer 4 números enteros de 16 bits
    if(leertodo) 
        receivedData = read(port, 1025, "uint8")
        receivedData = receivedData(2:1025);
    else
       %read(port, 1, "uint8");
       receivedData = read(port, 4, "uint8");
       receivedData =  receivedData(4) + 2^8*receivedData(3) + 2^16*receivedData(2);
    end

    % Mostrar los datos recibidos
    disp(receivedData);

    % Cerrar la conexión
    clear port;

end
