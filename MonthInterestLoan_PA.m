function i = MonthInterestLoan_PA(PV,A,n)
% Month Interest Rate 
% 0.1000% ~ 10.0000%
% Average capital plus interest method
    for i = 0.001 : 0.0001 : 0.1
        if A - A_PV(PV,i,n) < 0 
            break;
        end
    end
end