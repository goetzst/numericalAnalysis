close all;
clear all;
clc;

%% Tests
q = 1;
for k=2:4
  for t=0:1
    if t==0
      p = 100^k;
    else
      p = -100^k;
    end
    [x1, x2] = nullstellen(p, q);
    x1c = p - sqrt(p^2 - q);
    x2c = p + sqrt(p^2 - q);
    fprintf('---- %d ----\n', k);
    fprintf('-------- %d -------\n', t);
    fprintf('x1 is %d \n', x1);
    fprintf('x1c is %d \n', x1c);
    fprintf('x2 is %d \n', x2);
    fprintf('x2c is %d \n', x2c);
  end
end
