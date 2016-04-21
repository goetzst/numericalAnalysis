% Angewandte Numerik 1, SoSe 2016
% Uebungsblatt 01, Aufgabe 2: Darstellung natuerlicher Zahlen
%
% Testprogramm fuer die Funktion a = convert2basis(b, n)



clear all;
close all;
clc;


testfall = 0;
while 1                     % alle Testfaelle untersuchen
    testfall = testfall + 1;    % naechster Testfall
    
    
    %% alle Testfaelle definieren
    
    switch testfall
        case 1              % Testfall 1: b = 2, n = 30
            b = 2;
            n = 30;
            a = [1 1 1 1 0];
        case 2              % Testfall 2: b = 2, n = 31
            b = 2;
            n = 31;
            a = [1 1 1 1 1];
        case 3              % Testfall 3: b = 2, n = 32
            b = 2;
            n = 32;
            a = [1 0 0 0 0 0];
        case 4              % Testfall 4: b = 2, n = 33
            b = 2;
            n = 33;
            a = [1 0 0 0 0 1];
        case 5              % Testfall 5: b = 2, n = 42
            b = 2;
            n = 42;
            a = [1 0 1 0 1 0];
        case 6             	% Testfall 6: b = 2, n = 134110
            b = 2;
            n = 134110;
            a = [1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 1 1 0];
        case 7              % Testfall 7: b = 8, n = 27
            b = 8;
            n = 27;
            a = [3 3];
        case 8          	% Testfall 8: b = 8, n = 3652
            b = 8;
            n = 3652;
            a = [7 1 0 4];
        case 9           	% Testfall 9: b = 8, n = 46807
            b = 8;
            n = 46807;
            a = [1 3 3 3 2 7];
        case 10         	% Testfall 10: b = 10, n = 3121
            b = 10;
            n = 3121;
            a = [3 1 2 1];
        case 11         	% Testfall 11: b = 10, n = 192310030133
            b = 10;
            n = 192310030133;
            a = [1 9 2 3 1 0 0 3 0 1 3 3];
        otherwise
            break;          % keine Testfaelle mehr vorhanden
    end
    
    
    %% Testfall durchfuehren und Ergebnis ausgeben
    
    spezString = 'Testfall %2d (b = %2d, n = %12d): %s.\n';
    if max(abs(a - convert2basis(b,n))) == 0
        fprintf(spezString, testfall, b, n, 'Bestanden');
    else
        fprintf(2, spezString, testfall, b, n, 'Fehlgeschlagen')
    end
    
end
