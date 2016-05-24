% Angewandte Numerik 1, SoSe 2016
% Uebungsblatt 06, Aufgabe 19: Cholesky-Verfahren fuer Bandmatrizen
%
% Testprogramm fuer die Funktion L = choleskyBand(A, m),
% die die CholeskyZerlegung einer Bandmatrix A berechnet



clear all;
close all;
clc;



tol = 1e-12;                    % Toleranz fuer Genauigkeit der Ergebnisse



%% Tests

testfall = 0;
while 1                         % alle Testfaelle untersuchen
    testfall = testfall + 1;    % naechster Testfall
    
    
    %% alle Testfaelle definieren
    
    switch testfall
        case 1                  % Testfall 1
            A = 3 * eye(4) + ...
                diag([1,1,1], -1) + diag([1,1,1], 1);
            m = 1;              % Bandbreite der Band-Matrix A
            
        case 2                  % Testfall 2
            A = 8 * eye(7) + ...
                diag(2*ones(6,1), -1) + diag(2*ones(6,1), 1) + ...
                diag(ones(5,1), -2) + diag(ones(5,1), 2);
            m = 2;              % Bandbreite der Band-Matrix A
            
        case 3                  % Testfall 3
            n = 50;             % Matrix der Dimension n x n
            D = rand(5,n); 
            A = diag(D(1,:)) + ...
                diag(D(2,2:end), 1) + diag(D(3,2:end), -1) + ...
                diag(D(4,6:end), 5) + diag(D(5,6:end), -5);
            A = A + A' + 2 * n * eye(n);
            m = 5;              % Bandbreite der Band-Matrix A
            
        otherwise
            break;              % keine Testfaelle mehr vorhanden
    end
    
    
    
    %% Testfall durchfuehren und Ergebnis ausgeben

    L = choleskyBand(A, m);
    
    spezString = 'Testfall %d: %s.\n';
    if max(max(abs(L*L'-A))) < tol
        fprintf(spezString, testfall, 'Bestanden');  
    else
        fprintf(2, spezString, testfall, 'Fehlgeschlagen');
    end

end
