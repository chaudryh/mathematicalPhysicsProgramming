% Coupled Oscillators and Normal Modes

% Date: December 9th, 2017
% Author: Hasana Chaudry
% Project: Mathematical Physics
% Instructor: Carl Faust

% This program takes a matrix represenitng the initial positions of coupled
% oscillators and returns the eigenvector and eigenvalues after performing
% an LU Decomposition on the input matrix.
% The eigenvector that is returned represents the amplitude/direction of
% the coupled oscillators.
% The eigenvalues that are returned represent the coupled oscillators'
% frequencies.

% NOTE: This program only works for square matrices. 

function [v e] = main(A,n)

    [L U P] = lu(A); % LU  decomposition  of A with  pivoting
    % Returns an upper triangular matrix, U a lower triangular matrix, L
    % and a permutation matrix P such that L*U = P*A.
    
    m = size(A,1); % determine  the  size of A
    v = ones(m,1); % make an initial vector with ones
    for i = 1:n
        pv = P*v;   % apply pivot
        y = L\pv;   % solve via LU
        v = U\y;
        M = max(v);
        m = min(v);
        if abs(M) >= abs(m)
            el = M;
        else
            el = m;
        end
        v = v/el % divide by the estimated eigenvalue of the eigenvector
    end
    e = 1/el % reciprocate to get an eigenvalue of A
end
