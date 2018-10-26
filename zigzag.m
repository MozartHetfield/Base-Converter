function Z = zigzag(n)
if ( n == 0 ) %caz initial 1
    Z = [ ];
end
if ( n == 1 ) %caz initial 2
    Z = [ 0 ];
end
if ( n == 2 ) %caz initial 3
   Z = [ 0 1 ; 2 3 ]; 
end
if ( n == 3 ) %caz initial 4
    Z = [ 0 1 5 ; 2 4 6 ; 3 7 8 ];
end

if ( n > 3 ) %minim patratica de ordin 4
    Z = zeros(n);
    Z(1,1) = 0;
    Z(1,2) = 1;
    Z(1,3) = 5;
    Z(2,1) = 2;
    Z(2,2) = 4;
    Z(2,3) = 7;
    Z(3,1) = 3;
    Z(3,2) = 8;
    Z(3,3) = 12; %initializam primele 3 diagonale secundare
    k = n; %auxiliar pentru n, sa ramana neschimbat
    while ( k > 3 ) %umplem diagonalele secundare din partea superioara
        
        b = 0;
        i = k;
        j = 1;
        
        if ( mod(k,2) == 1 ) %e impar
            while ( i ~= 0 )
                Z(i,j) = ( k^2 - k) / 2 + b;
                i = i - 1;
                j = j + 1;
                b = b + 1;
            end
        end
        if ( mod(k,2) == 0 ) %e par
            while ( i ~= 0 )
                Z(i,j) = ( k^2 + k - 2 ) / 2 - b;
                i = i - 1;
                j = j + 1;
                b = b + 1;
            end
        end
        k = k - 1;
    end    
    j = n - 1;
    verif = 1;
    verif2 = 0;
    count = 1;
    pivot = n^2 - 1; %elementul din dreapta jos
    Z(n,n) = pivot;
    while ( j > 1 ) %fill pentru spatiul inferior
    Z(n,j) = pivot - 1*verif - 4*count*verif2;
    raspuns = Z(n,j); %pentru indexarea cu +1 pe diagonale
    pivot = raspuns;
    if ( verif == 1 ) %alternanta -1
        verif = 0;
    elseif ( verif == 0 )
        verif = 1;
    end
    if ( verif2 == 1 ) %alternanta -4*count
        verif2 = 0;
        count = count + 1;
    elseif ( verif2 == 0 )
        verif2 = 1;
    end
    j2 = j + 1; %pentru a completa diagonalele formate de A(n,j)
    i2 = n - 1;
    while ( j2 ~= n + 1 )
        if ( verif == 0 ) %e crescator/descrescator analog cu verif
            Z(i2,j2) = raspuns - 1;
            raspuns = Z(i2,j2);
        end
        if ( verif == 1 )
            Z(i2,j2) = raspuns + 1;
            raspuns = Z(i2,j2);
        end
        j2 = j2 + 1;
        i2 = i2 - 1;
    end
    j = j - 1;
    end
end
endfunction