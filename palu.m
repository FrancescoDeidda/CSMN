function [L,U,P] = palu(A)

%Andare a scrivere una funzione [L,U,P] = palu(A)( che restituisce la
%scomposizione in P,L ed U dove:
%   - L = matrice triangolare inferiore che nella sottodiagonale gli m e
%   nella diagonale 1
%   - U = matrice risultato di gauss con pivoting
%   - P = matrice di permutazione degli scambi di riga con pivoting

% Andare a scrivere un test che risolve i sistemi e calcola l'errore
% relativo:

%   Ly = Pb
%   Ux = y

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
    P = eye(n);
    for k = 1: n-1
        [~, pos] = max(abs(A(k:n,k)));
        l = pos + k -1;
        A([k l],:) = A([l k], :);
        P([k l],:) = P([l k], :);
        L([k l],:) = L([l k], :);

        for i = k+1 : n
            m = A(i,k) / A(k,k);
            A(i,:) = A(i,:) - m * A(k,:);
            L(i,k) = m;
        end
    end
    U = A;
    

end