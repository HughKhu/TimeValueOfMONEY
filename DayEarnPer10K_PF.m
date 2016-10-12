function i = DayEarnPer10K_PF(PV,FV,n)
% Day Earnings Per 10 Thousand Units
% 0.1000 ~ 10.0000 
    for x = 0.1 : 0.1 : 10
        if FV - FV_PV(PV,x*1e-4,n) < 0
           break;
        end
    end
    % improve computation
    for i = x-0.1 : 0.0001 : x
        if  FV - FV_PV(PV,i*1e-4,n) < 0
            break;
        end
    end
end