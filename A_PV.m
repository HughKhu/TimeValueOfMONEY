function A = A_PV(PV,i,n)
%get A from known PV,i,n.
%A: the value of the individual payments in each compounding period
%PV: Present Value
%FV: Future Value
%i: Interest Rate
%n: Number of periods
A = PV * i / (1 - (1 + i) ^ -n);
%A = round(100 * A) / 100;
end