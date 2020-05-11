function R = Algebraic(nume, d)
    fid = fopen(nume, "r");
    n = fscanf(fid, "%d", "C");
    k = zeros(n, n);
    p = zeros(n, n);
    for i = 1 : n
        m = fscanf(fid, "%d", "C");
        o = fscanf(fid, "%d", "C");
        for j = 1 : o
            a = fscanf(fid, "%d", "C");
            k(m, a) = 1;
        end
    end
    fclose(fid);
    for i = 1:n
        k(i, i) = 0;
    end
    for i = 1:n
        o = 0;
        for j = 1:n
            if i != j
                o = o+k(i, j);
            end
        end
        p(i, i) = 1/o;
    end
    I = eye(n, n);
    o = ones(n,1);
    M = transpose(p*k);
    % calculez inversa folosind functia PR_Inv
    inversa = PR_Inv(I-(d*M));
    R = inversa*(((1-d)/n)*o);
end