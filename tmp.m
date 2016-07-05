PV = 157.52;
n_arr = [3 6 9 12];
A_arr = [53.81,27.43,18.64,14.27];
% i_arr = zeros(1,4);
for i = 1:4
    i_arr(i) = geti(PV,A_arr(i),n_arr(i));
end
iyear_arr = (1+i_arr) .^ 12;
%%%%%%%%%%%%%%%%%或者运用句柄
PV = 157.52 * ones(1,4);
n_arr = [3 6 9 12];
A_arr = [53.81,27.43,18.64,14.27];

f = @geti;
i_arr = arrayfun(f, PV , A_arr, n_arr, 'UniformOutput', 0);
i_arr = cell2mat(i_arr);
iyear_arr = (1+i_arr) .^ 12;

% f = @window;
% all_pair = arrayfun(f, arr, temp_1, temp_2, temp_3, 'UniformOutput', 0);
% all_pair = cell2mat(all_pair');

%https://www.zhihu.com/question/42063430
PV = 30000 - 144;
for i = 1e-4 : 1e-6 : 1
    res = PV - 600 / (1+i)^31 - 10000 / (1+i)^78 - 10000 / (1+i)^109 - 10000 / (1+i)^139;
    if res > 0
        break;
    end
end
iyear = (1+i)^365;