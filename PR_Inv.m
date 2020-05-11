function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Folosesc algoritmul Gram-Schimdt pentru factorizarea QR
    [m n] = size(A);
    Q = zeros(m,n);
    R = zeros(n);
    for j = 1 : n
        for i = 1 : j-1
            R(i,j) = Q(:,i)' * A(:,j);
        endfor
            s = zeros(m,1); 
            for i = 1 : j-1
                s = s + R(i,j) * Q(:,i);
            endfor
        aux = A(:,j) - s;
        R(j,j) = norm(aux,2);
        Q(:,j) = aux/R(j,j);
    endfor
    % initializez matricea B
    B = zeros(n,n);
    I = eye(n);
    % folosind algoritmul SST, completez matricea B, care va fi inversa mat A
    for i = 1:n
        B(:, i) = SST(R,Q' * I(:, i));
    end
end