function result = DaysBetween(date1, date2)
% DaysBetween(20161001,20161011) == 10
% date2 - date1
    DateDescend = 0;
    if date1 > date2
        DateDescend = 1;
        tmp = date1;
        date1 = date2;
        date2 = tmp;
    end
    [y1,m1,d1] = extractDate(date1);
    [y2,m2,d2] = extractDate(date2);
    DaysOfMonth1 = [31,28,31,30,31,30,31,31,30,31,30,31];
    DaysOfMonth2 = DaysOfMonth1;
    if isLeapYear(y1)
        DaysOfMonth1(2) = 29;
    end
    if isLeapYear(y2)
        DaysOfMonth2(2) = 29;
    end
    num_leap = 0;
    for y = y1:y2
        if isLeapYear(y)
            num_leap = num_leap + 1;
        end
    end
    DaysOfAllYears = (y2 - y1 + 1) * 365 + num_leap;
    DaysOfInit = sum(DaysOfMonth1(1 : m1-1)) + d1;
    DaysOfEnd = sum(DaysOfMonth2(m2 : 12)) - d2;
    result = DaysOfAllYears - DaysOfInit - DaysOfEnd;
    if DateDescend
        result = -result;
    end
end

function [year,month,day] = extractDate(date)
    year = floor(date/10000);
    month = mod(floor(date/100),100);
    day = mod(date,100);
end

function flag = isLeapYear(year)
    if mod(year,4)~=0 || mod(year,100)==0 && mod(year,400) ~= 0  
        flag = 0;
    else
        flag = 1;
    end
end
