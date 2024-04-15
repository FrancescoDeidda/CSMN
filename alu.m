function [L,U,b2] = alu(A,b)
%ALU Scomposizione Le U con Gauss senza Pivoting

%GAUSS_P calcola gauss con pivoting parziale
    [m,n] = size(A);
    if m ~= n
        error("La matrice deve essere quadrata");
    end

    if size(b,1) ~= m || size(b,2) ~= 1
        error("La dimensione di b non è corretta");
    end
    
    if det(A) < 1e-14
        error("La matrice A è singolare")
    end

    % Inizializzo L come matrice in cui la diagonale è tutta 1
    L = eye(n);

    for k = 1: n-1
        for i = k+1 : n
            m = A(i,k) / A(k,k);
            A(i,:) = A(i,:) - m * A(k,:);
            L(i,k) = m;
        end
    end
    U = A;
end