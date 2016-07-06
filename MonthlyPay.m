function m = MonthlyPay(P,annual_rate,years)
% 贷款月供计算器
%P: 贷款总额
%annual_rate: 年利率（名义利率）
%years: 贷款年限
m = A_PV(P,annual_rate/12,years*12);
end