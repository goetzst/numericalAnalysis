clear all;
clc;
n = 20;
for i=1:n
  d(i) = 2;
  nd(2*i) = -1;
  nd(2*i-1)= -1;
  if rand > 0.5
    b(i) = 0;
   else
    b(i) = 1; 
  end
end

x = solveTD(d,nd,b);
plot([1:n],x);