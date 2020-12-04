M = importdata("3m.dat");
r = rows(M);
c = columns(M);
slope = [1 3 5 7 1; 1 1 1 1 2];
x = zeros(columns(slope),1);

for i = 1:columns(slope)
  j = 1;
  while((j-1)*slope(2,i)+1 <= r)
    x(i) += M((j-1)*slope(2,i)+1,mod(slope(1,i)*(j-1),c)+1);
    j++;
  endwhile  
endfor
x(2)
prod(x)
