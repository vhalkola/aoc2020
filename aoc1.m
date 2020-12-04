v = importdata("1.dat");
r = rows(v);
A = outprod(v,ones(1,r)) + outprod(ones(r,1),v);
B = A == 2020;
[i,j] = find(B);
prod1 = v(i(1))*v(j(1))
C = outprod(A,ones(r,1)) + outprod(ones(r),v);
D = C == 2020;
[k,l,m] = find3d(D);
prod2 = v(k(1))*v(l(1))*v(m(1))
