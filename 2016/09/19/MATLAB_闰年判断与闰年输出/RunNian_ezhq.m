%RunNian1900-2016_ezhq
function leapyear
for year = 1900:2016
    sign = 0;
    a = rem(year,400);
    b = rem(year,4);
    c = rem(year,100);
    if a == 0
        sign = sign + 1;
    end
    if b == 0
        sign = sign + 1;
    end
    if c == 0
        sign = sign - 1;
    end
    if sign == 1
        fprintf('%4d \n',year)
    end
end