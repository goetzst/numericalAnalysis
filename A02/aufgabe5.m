%% numbers
x = 10
y = 8
s = x + y
d = x - y
%% binary
x2 = convert2basis(2, x)
y2 = convert2basis(2, y)
s2 = add(x2, y2, 2)
d2 = sub(x2, y2, 2)
s2r= valueNatZahl(s2, 2)
d2r= valueNatZahl(d2, 2)
%% octal
x8 = convert2basis(8, x)
y8 = convert2basis(8, y)
s8 = add(x2, y2, 8)
d8 = sub(x2, y2, 8)
s8r= valueNatZahl(s8, 8)
d8r= valueNatZahl(d8, 8)
%% hex
x16 = convert2basis(16, x)
y16 = convert2basis(16, y)
s16 = add(x2, y2, 16)
d16 = sub(x2, y2, 16)
s16r= valueNatZahl(s16, 16)
d16r= valueNatZahl(d16, 16)