% C -> matrice
% d -> vettore dei termini noti

% Devo ciclare le collone
% Devo ciclare le righe
%   - Per ogni riga calcolo m (moltiplicatore)
%   - Sottraiamo a R1 mR3
%   - Aggiorniamo i termini noti

function [C,d] = Gauss(A,b)

    % Funzione che presi in ingresso la matrice A e il vettore b restituisce la
    % riduzione di Gauss

    %Controllo se il numero delle righe della matrice è uguale al numero
    %delle colonne
    if size(A,1) ~= size(A,2)
        error("A deve essere quadrata")
    end

    n = size(A,2);

    for k = 1 : n-1
        for i = k+1 : n
            m = A(i,k)/A(k,k);
            
            % for j = k:n
            %     A(i,j) = A(i,j) - m * A(k,j)
            % end

            % ':' indica tutti gli elementi
            A(i,:) = A(i,:) - m * A(k,:);

            b(i) = b(i) - m * b(k);

        end
    end
    C = A;
    d = b;
end

