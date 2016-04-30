function detA = detLaplace(A)
  if length(A) > 1
    detA  = 0;
    for j=1:length(A) %expansion over j, first row
      a = [1:length(A)];
      detA = detA + (-1)^(1+j)*A(1,j)*detLaplace(A(2:length(A), a(a!=j)));
    end
  else
    detA = A(1,1);
  end
end