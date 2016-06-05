function [Q, R] = qrGivens(A)
        [h, w]  = size(A);
        QT      = eye(h);
        for p=1:w
                j=p;
                for q=p+1:h
                        U       = givens2(A(p,j),A(q,j));
                        UT      = eye(h);
                        UT(p,p) = U(1,1);
                        UT(q,q) = U(2,2);
                        UT(p,q) = U(1,2);
                        UT(q,p) = U(2,1);
                        QT      = UT * QT;
                        A       = UT * A;
                end
        end
        Q= QT';
        R= A;
end
