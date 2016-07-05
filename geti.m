function i = geti(PV,A,n)
%i = 0;
for i = 0.001 : 0.0001 : 0.1
    residual  = A - PV * i / (1 - (1 + i) ^ -n);
    if residual < 0
        break;
    end
end
end