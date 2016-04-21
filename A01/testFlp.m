% Angewandte Numerik 1, SoSe 2016
% Uebungsblatt 01, Aufgabe 3: Wert einer Gleitpunktdarstellung
%
% Testprogramm fuer die Funktion [d, v, t] = flp(b, m, n, x)



close all;
clear all;
clc;



%% Tests

testfall = 0;
while 1                         % alle Testfaelle untersuchen
    testfall = testfall + 1;    % naechster Testfall
    
    
    %% alle Testfaelle definieren
    
    switch testfall
        case 1                  % Testfall 1
            b     = 2;                  % Basis
            m     = 8;              	% Laenge der Mantisse
            n     = 3;               	% Laenge des Exponenten
            x     = 27.375;            	% zu konvertierende Zahl
            dSoll = [1 1 0 1 1 0 1 1];  % Mantisse
            vSoll = [1 0 1];            % Exponent
            tSoll = 1;                  % Vorzeichen Exponent
        case 2                  % Testfall 2
            b     = 8;                  % Basis
            m     = 8;              	% Laenge der Mantisse
            n     = 3;               	% Laenge des Exponenten
            x     = 27.375;            	% zu konvertierende Zahl
            dSoll = [3 3 3 0 0 0 0 0];  % Mantisse
            vSoll = [0 0 2];            % Exponent
            tSoll = 1;                  % Vorzeichen Exponent
        case 3                  % Testfall 3
            b     = 2;                  % Basis
            m     = 10;              	% Laenge der Mantisse
            n     = 3;               	% Laenge des Exponenten
            x     = 9.140625;          	% zu konvertierende Zahl
            dSoll = [1 0 0 1 0 0 1 0 0 1];      % Mantisse
            vSoll = [1 0 0];            % Exponent
            tSoll = 1;                  % Vorzeichen Exponent
        case 4                  % Testfall 4
            b     = 8;                  % Basis
            m     = 5;              	% Laenge der Mantisse
            n     = 3;               	% Laenge des Exponenten
            x     = 9.140625;          	% zu konvertierende Zahl
            dSoll = [1 1 1 1 0];        % Mantisse
            vSoll = [0 0 2];            % Exponent
            tSoll = 1;                  % Vorzeichen Exponent
        case 5                  % Testfall 5
            b     = 2;                  % Basis
            m     = 3;              	% Laenge der Mantisse
            n     = 2;               	% Laenge des Exponenten
            x     = 0.375;          	% zu konvertierende Zahl
            dSoll = [1 1 0];            % Mantisse
            vSoll = [0 1];              % Exponent
            tSoll = -1;                 % Vorzeichen Exponent
        case 6                  % Testfall 6
            b     = 8;                  % Basis
            m     = 5;              	% Laenge der Mantisse
            n     = 2;               	% Laenge des Exponenten
            x     = 0.0375;          	% zu konvertierende Zahl
            dSoll = [2 3 1 4 6];            % Mantisse
            vSoll = [0 1];              % Exponent
            tSoll = -1;                 % Vorzeichen Exponent
        case 7                  % Testfall 7
            b     = 2;                  % Basis
            m     = 3;              	% Laenge der Mantisse
            n     = 3;               	% Laenge des Exponenten
            x     = 0.0625;          	% zu konvertierende Zahl
            dSoll = [1 0 0];            % Mantisse
            vSoll = [0 1 1];            % Exponent
            tSoll = -1;                 % Vorzeichen Exponent
        otherwise
            break;              % keine Testfaelle mehr vorhanden
    end
    
    
    %% Testfall durchfuehren und Ergebnis ausgeben
    [d, v, t] = flp(b, m, n, x);
    
    spezString = 'Testfall %d: %s.\n';
    if max(abs([d - dSoll, v - vSoll, t - tSoll])) == 0
        fprintf(spezString, testfall, 'Bestanden');  
    else
        fprintf(2, spezString, testfall, 'Fehlgeschlagen');
    end

end
