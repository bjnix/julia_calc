#!/usr/bin/env julia

""" A function for a gaussian elimination method """
function gausselim(A,b)

if size(b,2) > 1; b = b';
" Elimination Phase "
    for k = 1:n-1
        for i = k+1:n
            if A[i,k] != 0
                lambda = A[i,k]/A[k,k];
                A[i,K+1:n] = A[i,k+1:n] - lambda*A[k,k+1:n];
                b[i] = b[i] - lambda*b[k];
            end
        end
    end

" Back Substitution Phase "
    for k = n:-1:1
        b[k] = (b[k] - A[k,k+1:n]*b[k+1:n])/A[k,k];
    end

    return b;
end
