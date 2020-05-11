function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out 
    fid = fopen(nume, "r");
    n = fscanf(fid, "%d", "C");
    out = strcat(nume, ".out");
    fod = fopen(out, "w");
    fprintf(fod, "%d\n\n", n);
    
    % Iterative
    R = Iterative(nume, d, eps);
    R1 = R;
    for i = 1:n
        fprintf(fod, "%f\n", R(i, 1));
    end
    fprintf(fod, "\n");
    
    %Algebraic
    R = Algebraic(nume, d);
    R2 = R;
    for i = 1:n
        fprintf(fod, "%f\n", R(i, 1));
    end
    fprintf(fod, "\n");
    
    % Gradul de apartenenta
    x = 0;
    while (! feof (fid) )
        val1 = x;
        x = fscanf(fid, "%f", "C");
    end
    val2 = x;
    
    Rx = sort(R, "descend");
    for i = 1:n
        fprintf(fod, "%d ", i); % ordine dupa importanta
        for j = 1:n
            if Rx(i, 1) == R(j, 1)
                fprintf(fod, "%d ", j); %nodul la care apartine
                R(j, 1) = 0;
            end
        end
        % gradul de apartenenta
        y = Apartenenta(Rx(i, 1), val1, val2);
        fprintf(fod, "%f\n", y);
    end
    
    fclose(fid);
    fclose(fod);
end