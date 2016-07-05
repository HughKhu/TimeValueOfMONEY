% init=1200;
% mrate=0.02;
% mretn=init*(1/12+mrate);
% final=mretn*12;
% %drate=1+1.1394*1e-3;
% cur=init;
% for i=1:12
%     cur=cur * drate^30 - mretn;
% end
% yrate=drate^365;
%%%%%%%%%%%%%%
function m = MonthlyPay(P,annual_rate,years)
m = A_PV(P,annual_rate/12,years*12);
end