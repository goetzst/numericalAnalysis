% Angewandte Numerik 1, SoSe 2016
% Uebungsblatt 06, Aufgabe 20: Cholesky-Zerlegung
%
% Testprogramm fuer die Funktion L = cholesky(A)



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
            A = [2 6 -2; 6 21 0; -2 0 16];
            
        case 2                  % Testfall 2
            A = hilb(10);
                        
        case 3                  % Testfall 3
            n = 35;             % Matrix der Dimension n x n
            A = rand(n);
            A = A + A' + 2 * n * eye(n);
    
        otherwise
            break;              % keine Testfaelle mehr vorhanden
    end
    
    
    
    %% Testfall durchfuehren und Ergebnis ausgeben

    L = cholesky(A);
    
    spezString = 'Testfall %d: %s.\n';
    if max(max(abs(L*L'-A))) < tol
        fprintf(spezString, testfall, 'Bestanden');  
    else
        fprintf(2, spezString, testfall, 'Fehlgeschlagen');
    end

end
