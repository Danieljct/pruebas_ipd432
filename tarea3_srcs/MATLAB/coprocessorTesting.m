clear all; % borra el workspace

N = 1024;  % define el numero de elementos de cada vector

%Genera vectores A y B de 1024 elementos con numeros positivos
%(puede adaptarse facilmente si usan negativos y positivos).
A=uint8(ceil(rand(N,1)*254));
B=uint8(ceil(rand(N,1)*254));

%B = uint8(zeros(N,1));
%A = B + 255;
%B = ((1:N)-1)';
%B(1024) = A(1024);
%Guarda vectores A y B (cada uno de una columna de 1024 filas) en un
%archivo de texto. Cada linea del archivo contiene un elemento.
h= fopen('VectorA.txt', 'w');
fprintf(h, '%i\n', A);
fclose(h);

h= fopen('VectorB.txt', 'w');
fprintf(h, '%i\n', B);
fclose(h);


% Calcula valores de referencia para las operaciones, realizadas en forma local en el host
sumVec_host = uint8(double(A)+double(B)-(double(A)+double(B)>255)*256);
avgVec_host = uint8((floor(double(A)/2)+floor(double(B)/2)));
man_host = sum(abs(double(B)-double(A)));
%euc_host =  sqrt(sum((double(A)-double(B)).^2));

%% A partir de aca se realizan las operaciones por medio de comandos al coprocesador

% Primero setear puerto serial
COM_port = 'COM12';

% Los siguientes comandos son con formato tentativo.
% Puede aplicar cambios menores para adaptarlos a su implementacion, lo cual debe quedar claramente documentado.
% En cualquier caso, debe incluir solo argumentos necesarios para cada operacion.
% No aplique aca "parches de software" para cubrir deficiencias en el diseño de hardware.
% No se aceptarán comentarios del tipo: "hay que poner ese argumento porque sino no funciona", sin una justificacion adecuada.

%writeVec escribe un vector almacenado en un archivo de texto en la BRAM indicada por medio de la UART
write2dev('vectorA.txt','BRAMA',COM_port);
write2dev('vectorB.txt','BRAMB',COM_port);

%readVec lee el contenido de la BRAM indicada por medio de la UART
VecA_device = uint8(command2dev('readVec', 'BRAMA', COM_port));
VecB_device = uint8(command2dev('readVec', 'BRAMB', COM_port));
   
sumVec_device = uint8(command2dev('sumVec', COM_port)); %realiza la suma elemento a elemento de los vectores almacenados y envia el resultado por la UART
avgVec_device = uint8(command2dev('avgVec', COM_port));
man_device = command2dev('manDist', COM_port); %realiza el calculo de la distancia de Manhattan entre dos vectores y envia el resultado por la UART
%euc_device = command2dev('eucDist', COM_port); %realiza el calculo de la distancia Euclideana entre dos vectores y envia el resultado por la UART

%% Validacion.
% Los resultados _diff deberian ser 0 (o cercanos, dependiendo de su
% decision de diseno en el diseno del coprocesador). Si no es 0, indique
% claramente por que en su informe.
diffA = sum(abs(double(VecA_device') - double(A)))
diffB = sum(abs(double(VecB_device') - double(B)))
sumVec_diff = sum(double(sumVec_host') - double(sumVec_device))
avgVec_diff = sum(double(avgVec_host') - double(avgVec_device))
man_diff = double(man_host) - double(man_device)
%euc_diff = euc_host - euc_device