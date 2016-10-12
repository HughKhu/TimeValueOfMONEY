function [ dayNo ] = DayOfWeek( date )
%date format: 20160101
%   1-01-01 Mon
%   1970-1-1 Thu
    dateInit = 19700101;
    dayNoInit = 4;
    dayNo = mod(DaysBetween(dateInit,date)+dayNoInit-1 , 7) + 1; 
end

