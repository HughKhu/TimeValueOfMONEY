function m = MonthlyPay(P,annual_rate,years)
% �����¹�������
%P: �����ܶ�
%annual_rate: �����ʣ��������ʣ�
%years: ��������
m = A_PV(P,annual_rate/12,years*12);
end